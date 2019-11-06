package member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public MemberDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = 
	  			(DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	public int isMember(MemberBean member){
		String sql="SELECT ME_PW FROM MEMBER WHERE ME_ID=?";
		int result=-1;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getME_ID());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(rs.getString("ME_PW").equals(member.getME_PW())){
					System.out.println("비밀번호 일치");
					result=1;//일치.
				}else{
					result=0;//불일치.
					System.out.println("비밀번호 불일치");
				}
			}else{
				result=-1;//아이디 존재하지 않음.
			}
		}catch(Exception ex){
			System.out.println("isMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return result;
	}
	
	public boolean joinMember(MemberBean member){
		String sql="INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?)";
		int result=0;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getME_ID());
			pstmt.setString(2, member.getME_PW());
			pstmt.setString(3, member.getME_NAME());
			pstmt.setString(4, member.getME_NICKNAME());
			
			pstmt.setString(5, member.getME_IDNUM1());
			pstmt.setString(6, member.getME_IDNUM2());
			pstmt.setString(7, member.getME_EMAIL());
			result=pstmt.executeUpdate();
			
			if(result!=0){
				return true;
			}
		}catch(Exception ex){
			System.out.println("joinMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return false;
	}
	
	public List getMemberList(){
		String sql="SELECT * FROM MEMBER";
		List memberlist=new ArrayList();
		
		try{
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				MemberBean mb=new MemberBean();
				mb.setME_ID(rs.getString("ME_ID"));
				/* mb.setME_NO(rs.getString("ME_NO")); */
				mb.setME_PW(rs.getString("ME_PW"));
				mb.setME_NICKNAME(rs.getString("ME_NICKNAME"));
				mb.setME_NAME(rs.getString("ME_NAME"));
				
				mb.setME_IDNUM1(rs.getString("ME_IDNUM1"));
				mb.setME_IDNUM2(rs.getString("ME_IDNUM2"));
				mb.setME_EMAIL(rs.getString("ME_EMAIL"));
				
				memberlist.add(mb);
			}
			
			return memberlist;
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	public MemberBean getDetailMember(String id){
		String sql="SELECT * FROM MEMBER WHERE ME_ID=?";
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			
			MemberBean mb=new MemberBean();
			mb.setME_ID(rs.getString("ME_ID"));
		     
			mb.setME_PW(rs.getString("ME_PW"));
			mb.setME_NICKNAME(rs.getString("ME_NICKNAME"));
			mb.setME_NAME(rs.getString("ME_NAME"));
			
			mb.setME_IDNUM1(rs.getString("ME_IDNUM1"));
			mb.setME_IDNUM2(rs.getString("ME_IDNUM2"));
			mb.setME_EMAIL(rs.getString("ME_EMAIL"));
			
			return mb;
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return null;
	}
	
	public boolean deleteMember(String id){
		String sql="DELETE FROM MEMBER WHERE ME_ID=?";
		int result=0;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			result=pstmt.executeUpdate();
			
			if(result!=0){
				return true;
			}
		}catch(Exception ex){
			System.out.println("deleteMember 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return false;
	}
	public boolean duplicateIdCheck(String id)
	    {
	        boolean x= false;
	        
	        try {
	            // 쿼리
	            StringBuffer query = new StringBuffer();
	            query.append("SELECT ME_ID FROM MEMBER WHERE ME_ID=?");
	                        
	            pstmt = con.prepareStatement(query.toString());
	            pstmt.setString(1, id);
	            rs = pstmt.executeQuery();
	            
	            if(rs.next()) x= true; //해당 아이디 존재
	            
	            return x;
	            
	        } catch (Exception sqle) {
	            throw new RuntimeException(sqle.getMessage());
	        } finally {
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( con != null ){ con.close(); con=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        }
	    } // end duplicateIdCheck()
	
	public int confirmpw(String id, String pw) {
		String sql="SELECT ME_PW FROM MEMBER WHERE ME_ID=?";
		int result=-1;
			try {
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1,id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString("ME_PW")==pw) {
						result = 0;
					}
				}else {result = 1;}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return result;
		}
	
	public int deleteMember(String id, String pw) 
    {
        String dbpw = ""; // DB상의 비밀번호를 담아둘 변수
        int x = -1;
 
        try {
            // 비밀번호 조회
            StringBuffer query1 = new StringBuffer();
            query1.append("SELECT ME_PW FROM MEMBER WHERE ME_ID=?");
            System.out.println("a");
            // 회원 삭제
            StringBuffer query2 = new StringBuffer();
            query2.append("DELETE FROM MEMBER WHERE ME_ID=?");
            
            //con = DBConnection.getConnection();
 
            // 자동 커밋을 false로 한다.
            con.setAutoCommit(false);
            System.out.println("b");
            // 1. 아이디에 해당하는 비밀번호를 조회한다.
            pstmt = con.prepareStatement(query1.toString());
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            System.out.println("c");
            if (rs.next()) 
            {
                dbpw = rs.getString("ME_PW");
                if (dbpw.equals(pw)) // 입력된 비밀번호와 DB비번 비교
                {
                    // 같을경우 회원삭제 진행
                    pstmt = con.prepareStatement(query2.toString());
                    pstmt.setString(1, id);
                    pstmt.executeUpdate();
                    con.commit(); 
                    x = 1; // 삭제 성공
                } else {
                    x = 0; // 비밀번호 비교결과 - 다름
                }
            }
 
            return x;
 
        } catch (Exception sqle) {
            try {
                con.rollback(); // 오류시 롤백
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( con != null ){ con.close(); con=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    }
		
	public boolean admin_del(String name)
	{
		boolean x=false;
        try {
            // 쿼리
        	String sql="delete FROM MEMBER WHERE ME_ID=?";
            
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, name);
            rs = pstmt.executeQuery();
            
            if(rs.next()) x= true; //해당 아이디 존재
            
            return x;
        	
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( con != null ){ con.close(); con=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
	}
        
}