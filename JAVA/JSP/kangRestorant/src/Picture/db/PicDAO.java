package Picture.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.DataSource;

import member.db.MemberBean;

public class PicDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public PicDAO() {
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
			pstmt=con.prepareStatement("select count(*) from PICTURE");
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
	public List getPicList(int page,int limit){
		
		
		
		
		String board_list_sql="select * from (select rownum rnum,PIC_NO,PIC_DATE,"
				+ "PIC_COUNT,PIC_SUBJECT,PIC_FILE,PIC_CONTENT from"+ 
				"(select * from PICTURE order by PIC_NO desc)) where rnum>=? and rnum<=?";
		
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
				PicBean pic = new PicBean();
				pic.setPIC_NO(rs.getInt("PIC_NO"));
				pic.setPIC_DATE(rs.getDate("PIC_DATE"));
				pic.setPIC_COUNT(rs.getInt("PIC_COUNT"));
				pic.setPIC_SUBJECT(rs.getString("PIC_SUBJECT"));
				pic.setPIC_FILE(rs.getString("PIC_FILE"));
				pic.setPIC_CONTENT(rs.getString("PIC_CONTENT"));
				
				
				list.add(pic);
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
	public PicBean getDetail(int num) throws Exception{
		PicBean pic = null;
		try{
			pstmt = con.prepareStatement(
					"select * from PICTURE where PIC_NO = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				pic = new PicBean();
				
				pic.setPIC_NO(rs.getInt("PIC_NO"));
				pic.setPIC_DATE(rs.getDate("PIC_DATE"));
				pic.setPIC_COUNT(rs.getInt("PIC_COUNT"));
				pic.setPIC_SUBJECT(rs.getString("PIC_SUBJECT"));
				pic.setPIC_FILE(rs.getString("PIC_FILE"));
				pic.setPIC_CONTENT(rs.getString("PIC_CONTENT"));
			}
			return pic;
		}catch(Exception ex){
			System.out.println("getDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 등록
	public boolean picInsert(PicBean pic){ 
		int num=0; 
		String sql="";
	  
	  int result=0; System.out.println("d"); 
	  try{ 
		  pstmt=con.prepareStatement("select max(PIC_NO) from PICTURE");
		  rs = pstmt.executeQuery();
	 
	  if(rs.next()) num =rs.getInt(1)+1; 
	  else num=1; 
	  System.out.println("e");
	  sql="insert into PICTURE (PIC_NO,PIC_DATE,PIC_COUNT,"+
	  "PIC_SUBJECT,PIC_FILE,"+
	  "PIC_CONTENT) values(?,sysdate,?,?,?,?)";
	  
	  pstmt = con.prepareStatement(sql); 
	  pstmt.setInt(1, num);
	  pstmt.setInt(2, 0);
	  pstmt.setString(3, pic.getPIC_SUBJECT()); 
	  pstmt.setString(4, pic.getPIC_FILE());
	  pstmt.setString(5, pic.getPIC_CONTENT());
	 
	  
	  
	 result=pstmt.executeUpdate();
	  
	  System.out.println("d"); if(result==0)return false; return true;
	  }catch(Exception ex){ System.out.println("boardInsert 에러 : "+ex); }finally{
	  if(rs!=null) try{rs.close();}catch(SQLException ex){} if(pstmt!=null)
	  try{pstmt.close();}catch(SQLException ex){} } return false; }
	 

	
	/*
	 * //글 수정. public boolean boardModify(PicBean modifyboard) throws Exception{
	 * String sql="update PICTURE set BO_SUBJECT=?,";
	 * sql+="BO_CONTENT=? where BO_NO=?";
	 * 
	 * try{ pstmt = con.prepareStatement(sql); pstmt.setString(1,
	 * modifyboard.getBO_SUBJECT()); pstmt.setString(2,
	 * modifyboard.getBO_CONTENT()); pstmt.setInt(3, modifyboard.getBO_NO());
	 * pstmt.executeUpdate(); return true; }catch(Exception ex){
	 * System.out.println("boardModify 에러 : " + ex); }finally{
	 * if(rs!=null)try{rs.close();}catch(SQLException ex){}
	 * if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){} } return false; }
	 */
	
	/*
	 * //글 삭제. public boolean boardDelete(int num){ String board_delete_sql=
	 * "delete from PICTURE where BOARD_num=?";
	 * 
	 * int result=0;
	 * 
	 * try{ pstmt=con.prepareStatement(board_delete_sql); pstmt.setInt(1, num);
	 * result=pstmt.executeUpdate(); if(result==0)return false;
	 * 
	 * return true; }catch(Exception ex){
	 * System.out.println("boardDelete 에러 : "+ex); }finally{ try{
	 * if(pstmt!=null)pstmt.close(); }catch(Exception ex) {} }
	 * 
	 * return false; }
	 */
	//출연진소개 이미지 불러오기
		public String getPicture() {
			String picintro_get_sql = "select * from PICTURE";
			String pic_path = "";
			try {
				pstmt = con.prepareStatement(picintro_get_sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					pic_path = rs.getString("PIC_FILE");
					// prointro.setPRO_PIC(rs.getString("PRO_PIC"));

				} return pic_path;
			} catch (Exception ex) {
				System.out.println("getpicintro 에러 : " + ex);
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
			}
			return null;
		}
	//출연진소개 이미지파일 저장하기
		public void setPicture(String pic_path) {
			String picintro_set_sql = "update PICTURE set PIC_FILE = ? where PIC_NO is not null";
			try {
				pstmt = con.prepareStatement(picintro_set_sql);
				pstmt.setString(1, pic_path);
				rs = pstmt.executeQuery();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	//조회수 업데이트.
	public void setReadCountUpdate(int num) throws Exception{
		String sql="update PICTURE set PIC_COUNT = "+
			"PIC_COUNT+1 where PIC_NO = "+num;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.println("setReadCountUpdate 에러 : "+ex);
		}
	}
	
	//글쓴이인지 확인.
	public boolean isBoardWriter(int num,String BO_ID){
		String board_sql=
			"select * from PICTURE where BO_NO=?";
		
		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			
			if(BO_ID.equals(rs.getString("admin"))){
				return true;
			}
		}catch(SQLException ex){
			System.out.println("isBoardWriter 에러 : "+ex);
		}
		return false;
	}
}
	