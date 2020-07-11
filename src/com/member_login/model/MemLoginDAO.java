package com.member_login.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemLoginDAO implements MemLoginDAO_interface{

	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
}

	private static final String findAccount = "select * from member where MEMBER_ACCOUNT=?";
	private static final String CONTRAST = "select * from member";
	
	@Override
	public MemLoginVO findMember_account(String member_account) {
		MemLoginVO memLoginVO  = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(findAccount);
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
			}
		}catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());

	}finally {
		if (con != null) {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}
	
	return memLoginVO;
	}	
		
	@Override
	public List<MemLoginVO> findAll() {
		List<MemLoginVO> members = new LinkedList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(CONTRAST);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemLoginVO memLoginVO  = new MemLoginVO() ;
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
				members.add(memLoginVO);
			}
		}catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());

	}finally {
		if (con != null) {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace(System.err);
			}
		}
	}
	
	return members;
	}	
}
