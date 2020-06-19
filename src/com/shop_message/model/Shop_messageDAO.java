package com.shop_message.model;

import java.sql.*;
import java.util.*;

public class Shop_messageDAO implements Shop_messageDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "KAINONG";
	String password = "123456";
	
	public static final String INSERT = "INSERT INTO SHOP_MESSAGE(SQ_PRODUCT_ID, SHOP_MESSAGE_DETAIL, SHOP_MESSAGE_TIME, SHOP_MESSAGE_STATUS) "
			+ "VALUES (('PRM-'||LPAD(to_char(SQ_SHOP_MESSAGE_ID.NEXTVAL),6,0)), ?, ?, ?, ?)";
	public static final String UPDATE = "UPDATE SHOP_MESSAGE SET SQ_PRODUCT_ID=?, SHOP_MESSAGE_DETAIL=?, SHOP_MESSAGE_TIME=?, SHOP_MESSAGE_STATUS=? WHERE SQ_SHOP_MESSAGE_ID=?";
	public static final String DELETE = "DELETE FROM SHOP_MESSAGE WHERE SQ_SHOP_MESSAGE_ID=?";
	public static final String GET_ONE = "SELECT SQ_SHOP_MESSAGE_ID, SQ_PRODUCT_ID, SHOP_MESSAGE_DETAIL, SHOP_MESSAGE_TIME, SHOP_MESSAGE_STATUS FROM SHOP_MESSAGE WHERE SQ_SHOP_MESSAGE_ID=?";
	public static final String GET_ALL = "SELECT SQ_SHOP_MESSAGE_ID, SQ_PRODUCT_ID, SHOP_MESSAGE_DETAIL, SHOP_MESSAGE_TIME, SHOP_MESSAGE_STATUS FROM SHOP_MESSAGE ORDER BY SQ_SHOP_MESSAGE_ID";
	
	@Override
	public void insert(Shop_messageVO shop_messageVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, shop_messageVO.getSq_product_id());
			pstmt.setString(2, shop_messageVO.getShop_message_detial());
			pstmt.setTimestamp(3, shop_messageVO.getShop_message_time());
			pstmt.setInt(4, shop_messageVO.getShop_message_status());
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured" + se.getMessage());
		}finally{
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
	}

	@Override
	public void update(Shop_messageVO shop_messageVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, shop_messageVO.getSq_product_id());
			pstmt.setString(2, shop_messageVO.getShop_message_detial());
			pstmt.setTimestamp(3, shop_messageVO.getShop_message_time());
			pstmt.setInt(4, shop_messageVO.getShop_message_status());
			pstmt.setString(5, shop_messageVO.getSq_shop_message_id());
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured" + se.getMessage());
		}finally{
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
		
	}

	@Override
	public void delete(String sq_shop_message_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_shop_message_id);
						
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured" + se.getMessage());
		}finally{
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
		
	}

	@Override
	public Shop_messageVO findByPrimaryKey(String sq_shop_message_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_messageVO shop_messageVO = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_messageVO = new Shop_messageVO();
				shop_messageVO.setSq_shop_message_id(rs.getString("sq_shop_message_id"));
				shop_messageVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_messageVO.setShop_message_detial(rs.getString("shop_message_detail"));
				shop_messageVO.setShop_message_time(rs.getTimestamp("shop_message_time"));
				shop_messageVO.setShop_message_status(rs.getInt("shop_message_status"));
			}
			
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured" + se.getMessage());
		}finally{
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace();
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
		return shop_messageVO;
	}

	@Override
	public List<Shop_messageVO> getAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_messageVO shop_messageVO = null;
		List<Shop_messageVO> list = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_messageVO = new Shop_messageVO();
				shop_messageVO.setSq_shop_message_id(rs.getString("sq_shop_message_id"));
				shop_messageVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_messageVO.setShop_message_detial(rs.getString("shop_message_detail"));
				shop_messageVO.setShop_message_time(rs.getTimestamp("shop_message_time"));
				shop_messageVO.setShop_message_status(rs.getInt("shop_message_status"));
				list.add(shop_messageVO);
			}
			
			pstmt.clearParameters();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver." + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured" + se.getMessage());
		}finally{
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace();
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
		return list;
	}

}
