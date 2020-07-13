package com.shop_order_detail.model;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class Shop_order_detailDAO implements Shop_order_detailDAO_interface{
//	String driver = "oracle.jdbc.driver.OracleDriver";
//	String url = "jdbc:oracle:thin:@localhost:1521:XE";
//	String user = "EA101_G4";
//	String password = "EA101_G4";
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static final String INSERT = "INSERT INTO SHOP_ORDER_DETAIL (SQ_ORDER_ID, SQ_PRODUCT_ID, PRODUCT_PRICE, ORDER_SUM) VALUES (?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE SHOP_ORDER_DETAIL SET ORDER_SUM=? WHERE SQ_ORDER_ID=? && SQ_PRODUCT_ID=?";	
	private static final String DELETE = "DELETE FROM SHOP_ORDER_DETAIL where SQ_ORDER_ID=? && SQ_PRODUCT_ID=?";
	private static final String GET_ONE = "SELECT SQ_ORDER_ID, SQ_PRODUCT_ID, PRODUCT_PRICE, ORDER_SUM FROM SHOP_ORDER_DETAIL WHERE SQ_ORDER_ID=?";
	private static final String GET_ALL = "SELECT SQ_ORDER_ID, SQ_PRODUCT_ID, PRODUCT_PRICE, ORDER_SUM FROM SHOP_ORDER_DETAIL ORDER BY SQ_ORDER_ID && SQ_PRODUCT_ID";
	

	@Override
	public void delete(String sq_order_id, String sq_product_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_order_id);
			
			pstmt.executeUpdate();
			
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
	public List<Shop_order_detailVO> findByPrimaryKey(String sq_order_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_order_detailVO shop_order_detailVO = null;
		List<Shop_order_detailVO> list = new ArrayList<Shop_order_detailVO>();
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE);
			pstmt.setString(1, sq_order_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				shop_order_detailVO = new Shop_order_detailVO();
				shop_order_detailVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_order_detailVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_order_detailVO.setProduct_price(rs.getInt("product_price"));
				shop_order_detailVO.setOrder_sum(rs.getInt("order_sum"));
				list.add(shop_order_detailVO);
			}
			
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

	@Override
	public List<Shop_order_detailVO> getAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_order_detailVO shop_order_detailVO = null;
		List<Shop_order_detailVO> list = null;
		try {
			con = ds.getConnection();
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

	@Override
	public void insert(Shop_order_detailVO detailVO, Connection con) {
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement(INSERT);
			pstmt.setString(1, detailVO.getSq_order_id());
			pstmt.setString(2, detailVO.getSq_product_id());
			pstmt.setInt(3, detailVO.getProduct_price());
			pstmt.setInt(4, detailVO.getOrder_sum());
			
			pstmt.executeUpdate();
			
		}catch(SQLException ce) {
			if(con != null) {
				try {
					System.err.print("Transaction is being ");
					System.err.println("rolled back-由-deatil");
					con.rollback();
				}catch(SQLException cecep) {
					throw new RuntimeException("rollback error occured. "
							+ cecep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. "
					+ ce.getMessage());
			// Clean up JDBC resources
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
		}
	}
	
	@Override
	public void update(Shop_order_detailVO detailVO, Connection con) {
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement(UPDATE);
			pstmt.setString(1, detailVO.getSq_order_id());
			pstmt.setString(2, detailVO.getSq_product_id());
			pstmt.setInt(3, detailVO.getOrder_sum());
			
			pstmt.executeUpdate();
			
		}catch(SQLException ce) {
			if(con != null) {
				try {
					System.err.print("Transaction is being ");
					System.err.println("rolled back-由-deatil");
					con.rollback();
				}catch(SQLException cecep) {
					throw new RuntimeException("rollback error occured. "
							+ cecep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. "
					+ ce.getMessage());
			// Clean up JDBC resources
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
		}
	}

//	public static void main(String args[]) {
//		Shop_order_detailDAO dao = new Shop_order_detailDAO();
//		List<Shop_order_detailVO> list = dao.findByPrimaryKey("OD-500003");
//		for(Shop_order_detailVO vo : list) {
//			System.out.println(vo.getSq_product_id());
//		}
//	}
}
