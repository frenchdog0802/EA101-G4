package com.shop_order_detail.model;

import java.sql.*;
import java.util.*;

public class Shop_order_detailDAO implements Shop_order_detailDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "EA101_G4";
	String password = "EA101_G4";
	
	private static final String INSERT = "INSERT INTO SHOP_ORDER_DETAIL (SQ_ORDER_ID, SQ_PRODUCT_ID, PRODUCT_PRICE, ORDER_SUM) VALUES (?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE SHOP_ORDER_DETAIL SET PRODUCT_PRICE=?, ORDER_SUM=? WHERE SQ_ORDER_ID=? && SQ_PRODUCT_ID=?";	
	private static final String DELETE = "DELETE FROM SHOP_ORDER_DETAIL where SQ_ORDER_ID=? && SQ_PRODUCT_ID=?";
	private static final String GET_ONE = "SELECT SQ_ORDER_ID, SQ_PRODUCT_ID, PRODUCT_PRICE, ORDER_SUM FROM SHOP_ORDER_DETAIL WHERE SQ_ORDER_ID=? && SQ_PRODUCT_ID=?";
	private static final String GET_ALL = "SELECT SQ_ORDER_ID, SQ_PRODUCT_ID, PRODUCT_PRICE, ORDER_SUM FROM SHOP_ORDER_DETAIL ORDER BY SQ_ORDER_ID && SQ_PRODUCT_ID";
	
	@Override
	public void insert(Shop_order_detailVO shop_order_detailVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, shop_order_detailVO.getSq_order_id());
			pstmt.setString(2, shop_order_detailVO.getSq_product_id());
			pstmt.setInt(3, shop_order_detailVO.getProduct_price());
			pstmt.setInt(4, shop_order_detailVO.getOrder_sum());
			
			pstmt.executeUpdate();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
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
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public void update(Shop_order_detailVO shop_order_detailVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
						
			pstmt.setInt(1, shop_order_detailVO.getProduct_price());
			pstmt.setInt(2, shop_order_detailVO.getOrder_sum());
			pstmt.setString(3, shop_order_detailVO.getSq_order_id());
			pstmt.setString(4, shop_order_detailVO.getSq_product_id());
			
			pstmt.executeUpdate();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
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
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		
	}

	@Override
	public void delete(String sq_order_id, String sq_product_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_order_id);
			pstmt.setString(2, sq_product_id);
			
			pstmt.executeUpdate();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
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
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}	
	}

	@Override
	public Shop_order_detailVO findByPrimaryKey(String sq_order_id, String sq_product_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_order_detailVO shop_order_detailVO = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				shop_order_detailVO = new Shop_order_detailVO();
				shop_order_detailVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_order_detailVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_order_detailVO.setProduct_price(rs.getInt("product_price"));
				shop_order_detailVO.setOrder_sum(rs.getInt("order_sum"));
			}
			
		}catch(ClassNotFoundException e) {
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
		return shop_order_detailVO;
	}

	@Override
	public List<Shop_order_detailVO> getAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_order_detailVO shop_order_detailVO = null;
		List<Shop_order_detailVO> list = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_order_detailVO = new Shop_order_detailVO();
				shop_order_detailVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_order_detailVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_order_detailVO.setProduct_price(rs.getInt("product_price"));
				shop_order_detailVO.setOrder_sum(rs.getInt("order_sum"));
				
				list.add(shop_order_detailVO);
			}
			
		}catch(ClassNotFoundException e) {
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
