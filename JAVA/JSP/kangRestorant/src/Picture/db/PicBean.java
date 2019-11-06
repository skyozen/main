package Picture.db;

import java.sql.Date;

public class PicBean {
	private int PIC_NO;
	private Date PIC_DATE;
	private int PIC_COUNT;
	private String PIC_SUBJECT;
	private String PIC_FILE;
	private String PIC_CONTENT;
	
	public int getPIC_NO() {
		return PIC_NO;
	}
	public void setPIC_NO(int pIC_NO) {
		PIC_NO = pIC_NO;
	}
	public Date getPIC_DATE() {
		return PIC_DATE;
	}
	public void setPIC_DATE(Date pIC_DATE) {
		PIC_DATE = pIC_DATE;
	}
	public int getPIC_COUNT() {
		return PIC_COUNT;
	}
	public void setPIC_COUNT(int pIC_COUNT) {
		PIC_COUNT = pIC_COUNT;
	}
	public String getPIC_SUBJECT() {
		return PIC_SUBJECT;
	}
	public void setPIC_SUBJECT(String pIC_SUBJECT) {
		PIC_SUBJECT = pIC_SUBJECT;
	}
	public String getPIC_FILE() {
		return PIC_FILE;
	}
	public void setPIC_FILE(String pIC_FILE) {
		PIC_FILE = pIC_FILE;
	}
	public String getPIC_CONTENT() {
		return PIC_CONTENT;
	}
	public void setPIC_CONTENT(String pIC_CONTENT) {
		PIC_CONTENT = pIC_CONTENT;
	}
	
	
	

	
}