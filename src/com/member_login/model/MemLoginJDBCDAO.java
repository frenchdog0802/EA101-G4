package com.member_login.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemLoginJDBCDAO implements MemLoginDAO_interface{

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String CONTRAST = "select * from member where member_account=? ";
	
	@Override
	public MemLoginVO login(String member_account) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemLoginVO memLoginVO = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(CONTRAST);
			
			pstmt.setString(1, member_account);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				memLoginVO  = new MemLoginVO() ;
				
				memLoginVO.setMember_account(rs.getString("member_account"));
				memLoginVO.setPassword(rs.getString("password"));
				memLoginVO.setM_name(rs.getString("m_name"));
				memLoginVO.setGender(rs.getInt("gender"));
				memLoginVO.setBirthday(rs.getDate("birthday"));
				memLoginVO.setCellphone(rs.getString("cellphone"));
				memLoginVO.setM_email(rs.getString("m_email"));
				memLoginVO.setValidation(rs.getInt("validation"));
				memLoginVO.setRegistered(rs.getDate("registered"));
				memLoginVO.setM_photo(rs.getBytes("m_photo"));
				memLoginVO.setBack_img(rs.getBytes("back_img"));
				memLoginVO.setNick_name(rs.getString("nick_name"));
				memLoginVO.setAddress(rs.getString("address"));
				memLoginVO.setSq_member_id(rs.getString("sq_member_id"));			
				
				System.out.println("登入成功");
			}
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());

		}catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());

	}finally {
		if(rs != null) {
			try {
				rs.close();
			}catch(SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException se) {
				se.printStackTrace(System.err);
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}
	
	return memLoginVO;
	}	
}
