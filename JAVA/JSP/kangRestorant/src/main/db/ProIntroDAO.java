package main.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.*;
import javax.sql.DataSource;

public class ProIntroDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public ProIntroDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}

	// ���α׷� �Ұ� �̹������� �ҷ�����
	public String getProintro() {
		String prointro_get_sql = "select * from prointro";
		String pro_path = "";
		try {
			pstmt = con.prepareStatement(prointro_get_sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				pro_path = rs.getString("PRO_PIC");
				// prointro.setPRO_PIC(rs.getString("PRO_PIC"));

			}

			return pro_path;
		} catch (Exception ex) {
			System.out.println("getProintro ���� : " + ex);
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

	// ���α׷��Ұ� �̹������� �����ϱ�
	public void setProintro(String pic_path) {
		String prointro_set_sql = "update prointro set pro_pic = ? where pro_pic is not null";
		try {
			pstmt = con.prepareStatement(prointro_set_sql);
			pstmt.setString(1, pic_path);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
