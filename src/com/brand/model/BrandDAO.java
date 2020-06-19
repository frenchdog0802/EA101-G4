package com.brand.model;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.*;

public class BrandDAO implements BrandDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "KAINONG";
	String password = "123456";
	
	private static final String INSERT_STMT = "INSERT INTO BRAND (SQ_BRAND_ID, BRAND_NAME, BRAND_PHONE, BRAND_ADDRESS, BRAND_SIGN, BRAND_DETAIL)"
			+ "VALUES (SQ_BRAND_ID.NEXTVAL, ?, ?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE BRAND SET BRAND_NAME=?, BRAND_PHONE=?, BRAND_ADDRESS=?, BRAND_SIGN=?, BRAND_DETAIL=? WHERE SQ_BRAND_ID=?";
	private static final String DELETE = "DELETE FROM BRAND WHERE SQ_BRAND_ID=?";
	private static final String GET_ONE= "SELECT SQ_BRAND_ID, BRAND_NAME, BRAND_PHONE, BRAND_ADDRESS, BRAND_SIGN, BRAND_DETAIL FROM BRAND WHERE SQ_BRAND_ID=?";
	private static final String GET_ALL = "SELECT SQ_BRAND_ID, BRAND_NAME, BRAND_PHONE, BRAND_ADDRESS, BRAND_SIGN, BRAND_DETAIL FROM BRAND ORDER BY SQ_BRAND_ID";									   
	
	public void insert(BrandVO brandVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT_STMT);
			
			pstmt.setString(1, brandVO.getBrand_name());
			pstmt.setString(2, brandVO.getBrand_phone());
			pstmt.setString(3, brandVO.getBrand_address());
			
			Blob blob = con.createBlob();
			byte[] pic = brandVO.getBrand_sign();
			blob.setBytes(1, pic);
			pstmt.setBlob(4, blob);
			
			Clob clob = con.createClob();
			clob.setString(1, brandVO.getBrand_detail());
			pstmt.setClob(5, clob);
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver."
			+ e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured. "
			+ se.getMessage());
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	public void update(BrandVO brandVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, brandVO.getBrand_name());
			pstmt.setString(2, brandVO.getBrand_phone());
			pstmt.setString(3, brandVO.getBrand_address());
			
			Blob blob = con.createBlob();
			byte[] pic = brandVO.getBrand_sign();
			blob.setBytes(1, pic);
			pstmt.setBlob(4, blob);
			
			Clob clob = con.createClob();
			clob.setString(1, brandVO.getBrand_detail());
			pstmt.setClob(5, clob);
			
			pstmt.setString(6, brandVO.getSq_brand_id());
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver."
		+e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public void delete(String sq_brand_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_brand_id);
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e){
			throw new RuntimeException("Cloudn't load databse driver."+e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." + se.getMessage());
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try{
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public BrandVO findByPrimaryKey(String sq_brand_id) {
		BrandVO brandVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			
			pstmt.setString(1, sq_brand_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				brandVO = new BrandVO();
				brandVO.setSq_brand_id(rs.getString("sq_brand_id"));
				brandVO.setBrand_name(rs.getString("brand_name"));
				brandVO.setBrand_phone(rs.getString("brand_phone"));
				brandVO.setBrand_address(rs.getString("brand_address"));
				brandVO.setBrand_sign(rs.getBytes("brand_sign"));
				brandVO.setBrand_detail(rs.getString("brand_detail"));
			}
			pstmt.clearParameters();
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured."+se.getMessage());
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return brandVO;
	}

	@Override
	public List<BrandVO> getAll() {
		List<BrandVO> list = new ArrayList<BrandVO>();
		BrandVO brandVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				brandVO = new BrandVO();
				brandVO.setSq_brand_id(rs.getString("sq_brand_id"));
				brandVO.setBrand_name(rs.getString("brand_name"));
				brandVO.setBrand_phone(rs.getString("brand_phone"));
				brandVO.setBrand_address(rs.getString("brand_address"));
				brandVO.setBrand_sign(rs.getBytes("brand_sign"));
				brandVO.setBrand_detail(rs.getString("brand_detail"));
				
				list.add(brandVO);
			}
			pstmt.clearParameters();
		}catch(ClassNotFoundException e){
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." + se.getMessage());
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		
		return list;
	}

}
