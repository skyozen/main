package main.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.*;
import javax.sql.DataSource;


public class ActorIntroDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public ActorIntroDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}

//�⿬���Ұ� �̹��� �ҷ�����
	public String getActorIntro() {
		String actorintro_get_sql = "select * from actorintro";
		String act_path = "";
		try {
			pstmt = con.prepareStatement(actorintro_get_sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				act_path = rs.getString("ACT_PIC");
				// prointro.setPRO_PIC(rs.getString("PRO_PIC"));

			} return act_path;
		} catch (Exception ex) {
			System.out.println("getactorintro ���� : " + ex);
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
//�⿬���Ұ� �̹������� �����ϱ�
	public void setActorintro(String pic_path) {
		String actorintro_set_sql = "update actorintro set act_pic = ? where act_pic is not null";
		try {
			pstmt = con.prepareStatement(actorintro_set_sql);
			pstmt.setString(1, pic_path);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
