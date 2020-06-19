package com.store.model;

import java.sql.*;
import java.util.*;

public class StoreDAO implements StoreDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "KAINONG";
	String password = "123456";
	
	public static final String INSERT = "INSERT INTO STORE_ADDRESS(SQ_STORE_ADDRESS_ID, STORE_NAME, STORE_ADDRESS_DETAIL, STORE_LONGITUDE, STORE_LATITUDE) "
			+ "VALUES (SQ_STORE_ADDRESS_ID.NEXTVAL, ?, ?, ?, ?)";
	public static final String UPDATE = "UPDATE STORE_ADDRESS SET STORE_NAME=?, STORE_ADDRESS_DETAIL=?, STORE_LONGITUDE=?, STORE_LATITUDE=? WHERE SQ_STORE_ADDRESS_ID=?";
	public static final String DELETE = "DELETE FROM STORE_ADDRESS WHERE SQ_STORE_ADDRESS_ID=?";
	public static final String GET_ONE = "SELECT SQ_STORE_ADDRESS_ID, STORE_NAME, STORE_ADDRESS_DETAIL, STORE_LONGITUDE, STORE_LATITUDE FROM STORE_ADDRESS WHERE SQ_STORE_ADDRESS_ID=?";
	public static final String GET_ALL = "SELECT SQ_STORE_ADDRESS_ID, STORE_NAME, STORE_ADDRESS_DETAIL, STORE_LONGITUDE, STORE_LATITUDE FROM STORE_ADDRESS ORDER BY SQ_STORE_ADDRESS_ID";
	
	@Override
	public void insert(StoreVO storeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, storeVO.getStore_name());
			pstmt.setString(2, storeVO.getStore_address());
			pstmt.setBigDecimal(3, storeVO.getLongitude());
			pstmt.setBigDecimal(4, storeVO.getLatitude());
			
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
	public void update(StoreVO storeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, storeVO.getStore_name());
			pstmt.setString(2, storeVO.getStore_address());
			pstmt.setBigDecimal(3, storeVO.getLongitude());
			pstmt.setBigDecimal(4, storeVO.getLatitude());
			pstmt.setString(5, storeVO.getSq_store_address_id());
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());			
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." +se.getMessage());
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
	public void delete(String sq_store_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_store_id);
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException se) {
			throw new RuntimeException("Couldn't load database driver." + se.getMessage()) ;
		}catch(SQLException e){
			throw new RuntimeException("A database error occured." + e.getMessage());
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
					pstmt.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public StoreVO findByPrimaryKey(String sq_store_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreVO storeVO = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				storeVO = new StoreVO();
				storeVO.setSq_store_address_id(rs.getString("sq_address_id"));
				storeVO.setStore_name(rs.getString("store_name"));
				storeVO.setStore_address(rs.getString("store_address"));
				storeVO.setLongitude(rs.getBigDecimal("longitude"));
				storeVO.setLatitude(rs.getBigDecimal("latitude"));
			}
			pstmt.clearParameters();
		}catch(ClassNotFoundException se){
			throw new RuntimeException("Cloudn't load database driver." + se.getMessage());
		}catch(SQLException e) {
			throw new RuntimeException("A database error occured." + e.getMessage());
		}finally {
			if(rs != null) {
				try	{
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
		return storeVO;
	}

	@Override
	public List<StoreVO> getAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreVO storeVO = null;
		List<StoreVO> list = new ArrayList<StoreVO>();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				storeVO = new StoreVO();
				storeVO.setSq_store_address_id(rs.getString("sq_address_id"));
				storeVO.setStore_name(rs.getString("store_name"));
				storeVO.setStore_address(rs.getString("store_address"));
				storeVO.setLongitude(rs.getBigDecimal("longitude"));
				storeVO.setLatitude(rs.getBigDecimal("latitude"));
				
				list.add(storeVO);
			}
			pstmt.clearParameters();
		}catch(ClassNotFoundException se){
			throw new RuntimeException("Cloudn't load database driver." + se.getMessage());
		}catch(SQLException e) {
			throw new RuntimeException("A database error occured." + e.getMessage());
		}finally {
			if(rs != null) {
				try	{
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
