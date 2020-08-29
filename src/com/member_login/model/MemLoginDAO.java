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

import com.member.model.MemVO;

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
	public MemVO findMember_account(String member_account) {
		MemVO MemVO  = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(findAccount);
			pstmt.setString(1, member_account);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemVO  = new MemVO() ;
				MemVO.setMember_account(rs.getString("member_account"));
				MemVO.setPassword(rs.getString("password"));
				MemVO.setM_name(rs.getString("m_name"));
				MemVO.setGender(rs.getInt("gender"));
				MemVO.setBirthday(rs.getDate("birthday"));
				MemVO.setCellphone(rs.getString("cellphone"));
				MemVO.setM_email(rs.getString("m_email"));
				MemVO.setValidation(rs.getInt("validation"));
				MemVO.setRegistered(rs.getDate("registered"));
				MemVO.setM_photo(rs.getBytes("m_photo"));
				MemVO.setBack_img(rs.getBytes("back_img"));
				MemVO.setNick_name(rs.getString("nick_name"));
				MemVO.setAddress(rs.getString("address"));
				MemVO.setSq_member_id(rs.getString("sq_member_id"));			
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
	
	return MemVO;
	}	
		
	@Override
	public List<MemVO> findAll() {
		List<MemVO> members = new LinkedList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(CONTRAST);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemVO MemVO  = new MemVO() ;
				MemVO.setMember_account(rs.getString("member_account"));
				MemVO.setPassword(rs.getString("password"));
				MemVO.setM_name(rs.getString("m_name"));
				MemVO.setGender(rs.getInt("gender"));
				MemVO.setBirthday(rs.getDate("birthday"));
				MemVO.setCellphone(rs.getString("cellphone"));
				MemVO.setM_email(rs.getString("m_email"));
				MemVO.setValidation(rs.getInt("validation"));
				MemVO.setRegistered(rs.getDate("registered"));
				MemVO.setM_photo(rs.getBytes("m_photo"));
				MemVO.setBack_img(rs.getBytes("back_img"));
				MemVO.setNick_name(rs.getString("nick_name"));
				MemVO.setAddress(rs.getString("address"));
				MemVO.setSq_member_id(rs.getString("sq_member_id"));			
				members.add(MemVO);
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
