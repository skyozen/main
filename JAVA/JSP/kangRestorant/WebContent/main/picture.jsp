<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="Picture.db.*"%>	
<%@ page import="Picture.action.*"%>
<%
	PicBean pic = (PicBean)request.getAttribute("Picdata");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./main/header.css" />
<link rel="stylesheet" type="text/css" href="./main/common.css" />
<link type="text/css" rel="stylesheet"
	href="common.css?v=20190702150001" />
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/tving/tving.logger.v2.min.js?dm002=U&dm004=U&dm005=U&dm007=C&dm012=PC WEB&dm014=TVN&v=20190702150001"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" class="tvn">
		<div id="header_tving">
			<div
				class="header_tving_wrap header_tving_program header_tving_program_small">
				<div class="header_tving_inner">
					<div class="header_tving_mini_nav">
						<div class="header_tving_mini_inner">
							<h2>
								<a href="http://www.tving.com" target="blank">tving</a>
							</h2>
							<div class="header_tving_mini_left">
								<ul></ul>
							</div>
							<div class="header_tving_mini_right">
								<ul>
									<ul>
									<%
										String ME_ID = (String) session.getAttribute("ME_ID");
									%>
									<%
										if (session.getAttribute("ME_ID") == null) {
									%>
									<li><a href="MemberLogin.me">로그인</a></li>
									<li><a href="MemberJoin.me">회원가입</a></li>
									<%
										} else {
									%>
									<li><a><%=ME_ID%>님 안녕하세요.</a></li>
									<li><a href="MemberLogout.me">로그아웃</a></li>
									<li><a href="./member/MyPage.me">마이페이지</a></li>
									<%
										}
									%>

								</ul>
								</ul>
							</div>
						</div>
					</div>
					<div class="header_tving_ch_nav">
						<div class="header_tving_ch_heading">
							<h1>
								<a href="http://tvn.tving.com"><img
									src="http://img.lifestyler.co.kr/NewIMG/tving/static/images/gnb/635034452367707500.png"
									alt="tvN"></a>
							</h1>
							<h2>
								<a href="Main.ma"> <img
									src="C:\Users\User\Pictures\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kangRestorant\icon\ho.png"
									alt="신서유기 외전 - 강식당2"></a>
							</h2>
						</div>
						<div class="header_tving_ch_gnb">
							<script language="javascript">
								function Intro2() {
									bdfm.submit();
								}
							</script>
							<ul>
								<li><a href="./ProIntro.ma" target="_top"> <span
										class="depth1-item">프로그램 소개<em></em></span></a></li>
								<li><a href="./ActorIntro.ma" target="_top"> <span
										class="depth1-item">출연진 소개<em></em></span></a></li>
								<li><a
									href="http://program.tving.com/tvn/kangskitchen/6/Board/List"
									target="_top"> <span class="depth1-item">사진첩<em></em></span></a></li>
								<li><a
									href="BoardList.bo"
									target="_top"> <span class="depth1-item">시청자 게시판<em></em></span></a></li>
							</ul>
						</div>
					</div>
					<div class="header_tving_siblings_wrap">
						<a href="http://otvn.tving.com" class="header_tving_siblings_btn"><span>O
								tvN</span></a> <a href="http://xtvn.tving.com/xtvn"
							class="header_tving_siblings_btn header_tving_siblings_btn2"><span>XtvN</span></a>
						<a target="_blank" href="#" class="header_tving_replay_btn"><span>다시보기</span></a>
					</div>
				</div>
			</div>
			<div class="header_tving_nav_bg" style="height: 162px;"></div>
		</div>
	</div>
<!---------------------->
<!--------- 위가 top 메뉴 아래부턴 내용------>
<!---------------------->
<%
	/* String BO_ID = null;
	if (session.getAttribute("BO_ID") != null) {
		BO_ID = (String) session.getAttribute("BO_ID");
	} */
	List piclist = (List) request.getAttribute("piclist");
	int listcount = ((Integer) request.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();
	int endpage = ((Integer) request.getAttribute("endpage")).intValue();
%>

<%-- <%if(request.getAttribute("pic_path")==null){
	
}else{
%> --%>


<div id="container">
        
        <div id="content" class="cboth program_temp">
            <nav class="locationMap">
                <a href="/tvn/kangskitchen/0">홈</a> &gt;
                <strong>사진첩</strong>
            </nav>
            <br>
            <table >
            <tr align="center" width="400px" height="200px">
            	<% int count=0;
            		int j=(piclist.size());
            		for(int i=j; i>0;i--){

				 %>
				
				<%
					PicBean bl = (PicBean) piclist.get(i-1);
			 	%>
					<td width="150px" height="150px" >
				<%
				String picture_path=bl.getPIC_FILE();
				%>
				<a href="./PicDetail.pi?num=<%=bl.getPIC_NO()%><%-- &pic=<%=picture_path%> --%>">
				<img src="<%=picture_path%>" style="max-width:100%; height:100%;"/></a>
				<div align="center"><%=bl.getPIC_SUBJECT()%></div>
				<div align="center"><%=bl.getPIC_DATE()%></div>
				<div align="center">조회수<%=bl.getPIC_COUNT()%></div>
				</td>
				<%count = count + 1;
					if(count==3)
					{ %>
						</tr>
						<tr align="center">
					<% count=0;}
            		} %>
		</tr>
            
            </table>

        </div>
    </div>
    <center>
	<a href="./picture/PictureAlbumWrite.jsp">[등록]</a>
		</center>	
	<br>
    <center>
    <%-- <%} %> --%>
    										<%
											if (nowpage <= 1) {
										%> [이전]&nbsp; <%
 	} else {
 %> <a
										href="./BoardList.bo?page=<%=nowpage - 1%>">[이전]</a>&nbsp; <%
 	}
 %>

										<%
											for (int a = startpage; a <= endpage; a++) {
												if (a == nowpage) {
										%> [<%=a%>] <%
											} else {
										%> <a
										href="./BoardList.bo?page=<%=a%>">[<%=a%>]
									</a> &nbsp; <%
 	}
 %> <%
 	}
 %> <%
 	if (nowpage >= maxpage) {
 %> [다음] <%
 	} else {
 %> <a
										href="./BoardList.bo?page=<%=nowpage + 1%>">[다음]</a> <%
 	}
 %>
   </center>
</body>
</html>