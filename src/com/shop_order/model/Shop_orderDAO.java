package com.shop_order.model;

import java.sql.*;
import java.util.*;

public class Shop_orderDAO implements Shop_orderDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "KAINONG";
	String password = "123456";
	
	public static final String INSERT = "INSERT INTO SHOP_ORDER(SQ_MEMBER_ID, SQ_STORE_ADDRESS_ID, ORDER_ADDRESS, ORDER_DATE, PAY_DEADLINE, SHOP_ORDER_PRICE, PAY_MODE, ORDER_STATUS"
			+ "VALUES ('OD-'||LPAD(to_char(SQ_ORDER_ID.NEXTVAL),6,0), ?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String UPDATE = "UPDATE SHOP_ORDER SET SQ_MEMBER_ID=?, SQ_STORE_ADDRESS_ID=?, ORDER_ADDRESS=?, ORDER_DATE=?, PAY_DEADLINE=?, SHOP_ORDER_PRICE=?, PAY_MODE=?, ORDER_STATUS=? WHERE SQ_ORDER_ID=?";
	public static final String DELETE = "DELETE FROM SHOP_ORDER WHERE SQ_ORDER_ID=?";
	public static final String GET_ONE = "SELECT SQ_MEMBER_ID, SQ_STORE_ADDRESS_ID, ORDER_ADDRESS, ORDER_DATE, TO_CHAR(PAY_DEADLINE,'yyyy-mm-dd') PAY_DEADLINE, SHOP_ORDER_PRICE, PAY_MODE, ORDER_STATUS FROM SHOP_ORDER WHERE SQ_ORDER_ID=?";
	public static final String GET_ALL = "SELECT SQ_MEMBER_ID, SQ_STORE_ADDRESS_ID, ORDER_ADDRESS, ORDER_DATE, TO_CHAR(PAY_DEADLINE,'yyyy-mm-dd') PAY_DEADLINE, SHOP_ORDER_PRICE, PAY_MODE, ORDER_STATUS FROM SHOP_ORDER ORDER BY SQ_ORDER_ID";
	@Override
	public void insert(Shop_orderVO sorderVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, sorderVO.getSq_member_id());
			pstmt.setString(2, sorderVO.getSq_store_address_id());
			pstmt.setString(3, sorderVO.getOrder_address());
			pstmt.setTimestamp(4, sorderVO.getOrder_date());
			pstmt.setDate(5, sorderVO.getPay_deadline());
			pstmt.setInt(6, sorderVO.getShop_order_price());
			pstmt.setInt(7, sorderVO.getPay_mode());
			pstmt.setInt(8, sorderVO.getOrder_status());
			
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
	public void update(Shop_orderVO sorderVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, sorderVO.getSq_member_id());
			pstmt.setString(2, sorderVO.getSq_store_address_id());
			pstmt.setString(3, sorderVO.getOrder_address());
			pstmt.setTimestamp(4, sorderVO.getOrder_date());
			pstmt.setDate(5, sorderVO.getPay_deadline());
			pstmt.setInt(6, sorderVO.getShop_order_price());
			pstmt.setInt(7, sorderVO.getPay_mode());
			pstmt.setInt(8, sorderVO.getOrder_status());
			pstmt.setString(9, sorderVO.getSq_order_id());
			
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
	public void delete(String sq_order_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_order_id);
			
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
	public Shop_orderVO findByPrimaryKey(String sq_order_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_orderVO shop_orderVO = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				shop_orderVO = new Shop_orderVO();
				shop_orderVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_orderVO.setSq_member_id(rs.getString("sq_member_id"));
				shop_orderVO.setSq_store_address_id(rs.getString("sq_store_address_id"));
				shop_orderVO.setOrder_address(rs.getString("order_address"));
				shop_orderVO.setOrder_date(rs.getTimestamp("order_date"));
				shop_orderVO.setPay_deadline(rs.getDate("pay_deadline"));
				shop_orderVO.setShop_order_price(rs.getInt("shop_order_price"));
				shop_orderVO.setPay_mode(rs.getInt("pay_mode"));
				shop_orderVO.setOrder_status(rs.getInt("order_status"));
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
		return shop_orderVO;
	}

	@Override
	public List<Shop_orderVO> getAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_orderVO shop_orderVO = null;
		List<Shop_orderVO> list = new ArrayList<Shop_orderVO>();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_orderVO = new Shop_orderVO();
				shop_orderVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_orderVO.setSq_member_id(rs.getString("sq_member_id"));
				shop_orderVO.setSq_store_address_id(rs.getString("sq_store_address_id"));
				shop_orderVO.setOrder_address(rs.getString("order_address"));
				shop_orderVO.setOrder_date(rs.getTimestamp("order_date"));
				shop_orderVO.setPay_deadline(rs.getDate("pay_deadline"));
				shop_orderVO.setShop_order_price(rs.getInt("shop_order_price"));
				shop_orderVO.setPay_mode(rs.getInt("pay_mode"));
				shop_orderVO.setOrder_status(rs.getInt("order_status"));
				
				list.add(shop_orderVO);
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

