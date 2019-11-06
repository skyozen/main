package board.db;

import java.sql.Date;

public class BoardBean {
	private int BO_NO;
	private String ME_NICKNAME;
	private String BO_SUBJECT;
	private String BO_CONTENT;
	private Date BO_DATE;
	private int BO_COUNT;
	private int BO_LIKE;
	private String BO_ID;
	
	

	public int getBO_NO() {
		return BO_NO;
	}
	public void setBO_NO(int bO_NO) {
		BO_NO = bO_NO;
	}
	public String getME_NICKNAME() {
		return ME_NICKNAME;
	}
	public void setME_NICKNAME(String mE_NICKNAME) {
		ME_NICKNAME = mE_NICKNAME;
	}
	public String getBO_SUBJECT() {
		return BO_SUBJECT;
	}
	public void setBO_SUBJECT(String bO_SUBJECT) {
		BO_SUBJECT = bO_SUBJECT;
	}
	public String getBO_CONTENT() {
		return BO_CONTENT;
	}
	public void setBO_CONTENT(String bO_CONTENT) {
		BO_CONTENT = bO_CONTENT;
	}
	public Date getBO_DATE() {
		return BO_DATE;
	}
	public void setBO_DATE(Date bO_DATE) {
		BO_DATE = bO_DATE;
	}
	public int getBO_COUNT() {
		return BO_COUNT;
	}
	public void setBO_COUNT(int bO_COUNT) {
		BO_COUNT = bO_COUNT;
	}
	public int getBO_LIKE() {
		return BO_LIKE;
	}
	public void setBO_LIKE(int bO_LIKE) {
		BO_LIKE = bO_LIKE;
	}
	public String getBO_ID() {
		return BO_ID;
	}
	public void setBO_ID(String bO_ID) {
		BO_ID = bO_ID;
	}
	
	
	
}