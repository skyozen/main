package board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.DataSource;

import member.db.MemberBean;

public class BoardDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public BoardDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	//글의 개수 구하기.
	public int getListCount() {
		int x= 0;
		
		try{
			pstmt=con.prepareStatement("select count(*) from board");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	//글 목록 보기.	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List getBoardList(int page,int limit){
		String board_list_sql="select * from (select rownum rnum,BO_NO,ME_NICKNAME,BO_SUBJECT,BO_CONTENT,BO_DATE,BO_COUNT,BO_LIKE,BO_ID from"+ 
				"(select * from BOARD order by BO_NO desc)) where rnum>=? and rnum<=?";
		
		@SuppressWarnings("rawtypes")
		List list = new ArrayList();
		
		int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
		int endrow=startrow+limit-1; //읽을 마지막 row 번호.		
		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardBean board = new BoardBean();
				board.setBO_NO(rs.getInt("BO_NO"));
				board.setBO_ID(rs.getString("BO_ID"));
				board.setBO_SUBJECT(rs.getString("BO_SUBJECT"));
				board.setBO_CONTENT(rs.getString("BO_CONTENT"));
				board.setME_NICKNAME(rs.getString("ME_NICkNAME"));
				board.setBO_COUNT(rs.getInt("BO_COUNT"));
				board.setBO_LIKE(rs.getInt("BO_LIKE"));
				board.setBO_DATE(rs.getDate("BO_DATE"));
				list.add(board);
			}
			
			return list;
		}catch(Exception ex){
			System.out.println("getBoardList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 내용 보기.
	public BoardBean getDetail(int num) throws Exception{
		BoardBean board = null;
		try{
			pstmt = con.prepareStatement(
					"select * from board where BO_NO = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				board = new BoardBean();
				board.setBO_NO(rs.getInt("BO_NO"));
				board.setBO_ID(rs.getString("BO_ID"));
				board.setBO_SUBJECT(rs.getString("BO_SUBJECT"));
				board.setBO_CONTENT(rs.getString("BO_CONTENT"));
				board.setME_NICKNAME(rs.getString("ME_NICKNAME"));
				board.setBO_COUNT(rs.getInt("BO_COUNT"));
				board.setBO_LIKE(rs.getInt("BO_LIKE"));
				board.setBO_DATE(rs.getDate("BO_DATE"));
			}
			return board;
		}catch(Exception ex){
			System.out.println("getDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 등록.
	public boolean boardInsert(BoardBean board, MemberBean member){
		int num =0;
		String sql="";
		
		int result=0;
		System.out.println("d");
		try{
			pstmt=con.prepareStatement(
					"select max(BO_NO) from board");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;
			System.out.println("e");
			sql="insert into board (BO_NO,ME_NICKNAME,BO_SUBJECT,"+
				"BO_CONTENT,BO_DATE,"+
				"BO_COUNT,BO_LIKE,BO_ID) values(?,?,?,?,sysdate,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, member.getME_NICKNAME());
			pstmt.setString(3, board.getBO_SUBJECT());
			pstmt.setString(4, board.getBO_CONTENT());
			pstmt.setInt(5, 0);
			pstmt.setInt(6, 0);
			pstmt.setString(7, board.getBO_ID());
			
			
			result=pstmt.executeUpdate();

			System.out.println("d");
			if(result==0)return false;
			return true;
		}catch(Exception ex){
			System.out.println("boardInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}


	
	//글 수정.
	public boolean boardModify(BoardBean modifyboard) throws Exception{
		String sql="update board set BO_SUBJECT=?,";
		sql+="BO_CONTENT=? where BO_NO=?";
		
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, (String)modifyboard.getBO_SUBJECT());
			pstmt.setString(2, (String)modifyboard.getBO_CONTENT());
			pstmt.setInt(3, (Integer)modifyboard.getBO_NO());
			pstmt.executeUpdate();
			return true;
		}catch(Exception ex){
			System.out.println("boardModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			}
		return false;
	}
	
	//글 삭제.
	public boolean boardDelete(int num){
		String board_delete_sql=
			"delete from board where BO_NO=?";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}
		
		return false;
	}
	
	//조회수 업데이트.
	public void setReadCountUpdate(int num) throws Exception{
		String sql="update board set BO_COUNT = "+
			"BO_COUNT+1 where BO_NO = "+num;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.println("setReadCountUpdate 에러 : "+ex);
		}
	}
	
	//글쓴이인지 확인.
	public boolean isBoardWriter(int num,String id){
		String board_sql=
			"select * from board where BO_NO=?";
		
		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			
			if(id.equals(rs.getString("BO_ID"))){
				return true;
			}
		}catch(SQLException ex){
			System.out.println("isBoardWriter 에러 : "+ex);
		}
		return false;
	}
	
	public boolean admin_del(int num)
	{
		boolean x=false;
        try {
            // 쿼리
        	String sql="delete FROM BOARD WHERE BO_NO=?";
            
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, num);
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
	