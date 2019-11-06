#include <stdio.h> // 표준 입출력 헤더 불러오기
#include <errno.h> // 오류처리 헤더 불러오기
#include <string.h> // 문자열 관련 헤더 불러오기

#include <wiringPiSPI.h> // wiringPiSPI 헤더 불러오기
#include <wiringPi.h> // wiringPi 라이브러리 헤더 불러오기

#include <mysql/mysql.h> // mysql라이브러리 불러오기

#define CS_MCP3208 8 // 라즈베리파이 CE0(24)을 선택

#define SPI_CHANNEL 0 //SPI_CHANNEL는 0,1 이 존재하고 채널 상수 
#define SPI_SPEED 1000000 // SPI 속도 상수 (1MHz) 

#define DBHOST "127.0.0.1"
#define DBUSER  "root"
#define DBPASS  "1234"
#define DBNAME "record"

MYSQL *connector; //mysql과의 커넥션
MYSQL_RES *result;  //쿼리문에 대한 result값을 받는 위치변수
MYSQL_ROW row;


int read_mcp3208_adc(unsigned char adcChannel)
//라즈베리 파이와 MCP3208 간에 SPI 통신을 하여 센서 값 받아오기
{
   //MCP3208 과의 SPI 통신을 위해 통신패킷 설정
   unsigned char buff[3];
   int adcValue = 0;
   buff[0] = 0x06 | ((adcChannel & 0x07) >>2);
   buff[1] = ((adcChannel & 0x07) <<6);
   buff[2] = 0x00;

   digitalWrite(CS_MCP3208,0); //MCP-3208을 CE0 활성화 명령
   wiringPiSPIDataRW(SPI_CHANNEL, buff, 3); //SPI_CHANNEL 통해 buff에              3바이트씩 데이터를 읽는다.
   buff[1] = 0x0F&buff[1]; // buff[1]의 값을 불러온다
   adcValue = (buff[1] <<8)|buff[2]; //buff[1]을 8비트 왼쪽으로 이동 후                   buff[2] 합친다.

   digitalWrite(CS_MCP3208,1); //MCP-3208을 비활성화 명령
   return adcValue; //adcValue 값을 리턴
}

int main (void)
{
   
   int adcChannel_w = 1; //WATER센서나 가스센서 등의 측정 센서의 채널값을            1로 선언한다.
   int adcValue[1] = {0};  // 센서값으로 사용할 변수 선언
   if(wiringPiSetup() ==-1) exit(1);  //setup-채널속도 초기화
   if(wiringPiSPISetup(SPI_CHANNEL, SPI_SPEED)== -1)//wiringPiSPISetup를 초기화
   {
        fprintf(stdout,"wiringPiSPISetup Failed : %s \n", strerror(errno));
        return 1;
   }

   pinMode(CS_MCP3208,OUTPUT); //CS_MCP3208을 출력모드로 설정
   printf("#####Test#### \n");

   connector = mysql_init(null); //mysql 연결
   if(!mysql_real_connect(connector, DBHOST, DBUSER, DBPASS, DBNAME, 3306, NULL, 0)) //mysql연결 실패시 작동
   {
         fprintf(stderr,"%s\n",mysql_error(connector);
         return 0;
   }

   printf("MySQL opened.\n);

   while(1)
   {
      char query[1024];
       
      adcValue[0] = read_mcp3208_adc(adcChannel_w);  // adcValue에 adcChannel_w에서 받아온 결과를 저장
      printf("adc1 Value =%u \n",adcValue[0]/20);  // adcValue에 adcChannel_w에서 받아온 결과를 출력,저항을 연결해도 값이 크게 나와서 1의자리수로 저장하게 변경

      delay(1000);//1초 지연

      if((adcValue[0]/20)>=1)
      {
           printf("adc1 Value =%u \n",adcValue[0]/20);
           sprintf(query,"insert into value values(%d, 'user', %u)",i,adcValue[0]/20);
           i=i+1;
           if(mysql_query(connector, query))
           {
                fprintf(stderr,"%s\n",mysql_error(connector));
                printf("Write DB error\n")
           }
           delay(2000);
       }
       delay(100);
    }
return 0;
}


