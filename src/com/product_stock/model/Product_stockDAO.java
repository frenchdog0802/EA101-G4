package com.product_stock.model;

import java.sql.*;
import java.util.*;

public class Product_stockDAO implements Product_stockDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "EA101_G4";
	String password = "EA101_G4";
	
	private static final String INSERT = "INSERT INTO SHOP_PRODUCT_STOCK (SQ_STOCK_ID, SQ_PRODUCT_ID, PRODUCT_COLOR, PRODUCT_MODEL, STOCK_TOTAL)"
			+ "VALUES (SQ_STOCK_ID.NEXTVAL, ?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE SHOP_PRODUCT_STOCK SET SQ_PRODUCT_ID=?, PRODUCT_COLOR=?, PRODUCT_MODEL=?, STOCK_TOTAL=? WHERE SQ_STOCK_ID=?";
	private static final String DELETE = "DELETE FROM SHOP_PRODUCT_STOCK WHERE SQ_STOCK_ID=?";
	private static final String GET_ONE = "SELECT SQ_STOCK_ID, SQ_PRODUCT_ID, PRODUCT_COLOR, PRODUCT_MODEL, STOCK_TOTAL FROM SHOP_PRODUCT_STOCK WHERE SQ_STOCK_ID=?";
	private static final String GET_ALL = "SELECT SQ_STOCK_ID, SQ_PRODUCT_ID, PRODUCT_COLOR, PRODUCT_MODEL, STOCK_TOTAL FROM SHOP_PRODUCT_STOCK ORDER BY SQ_STOCK_ID";
	private static final String GET_ONE_BYPID = "SELECT SQ_STOCK_ID, SQ_PRODUCT_ID, PRODUCT_COLOR, PRODUCT_MODEL, STOCK_TOTAL FROM SHOP_PRODUCT_STOCK WHERE SQ_PRODUCT_ID=?";

	@Override
	public void insert(Product_stockVO stockVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, stockVO.getSq_product_id());
			pstmt.setString(2, stockVO.getProduct_color());
			pstmt.setString(3, stockVO.getProduct_model());
			pstmt.setInt(4, stockVO.getStock_total());
						
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

	@Override
	public void update(Product_stockVO stockVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, stockVO.getSq_product_id());
			pstmt.setString(2, stockVO.getProduct_color());
			pstmt.setString(3, stockVO.getProduct_model());
			pstmt.setInt(4, stockVO.getStock_total());					
			pstmt.setString(5, stockVO.getSq_stock_id());
			
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
	public void delete(String sq_stock_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_stock_id);
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
	public Product_stockVO findByPrimaryKey(String sq_stock_id) {
		Product_stockVO product_stockVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			
			pstmt.setString(1, sq_stock_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				product_stockVO = new Product_stockVO();
				product_stockVO.setSq_stock_id(rs.getString("sq_stock_id"));
				product_stockVO.setSq_product_id(rs.getString("sq_product_id"));
				product_stockVO.setProduct_color(rs.getString("product_color"));
				product_stockVO.setProduct_model(rs.getString("product_model"));
				product_stockVO.setStock_total(rs.getInt("stock_total"));
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
		return product_stockVO;
	}

	@Override
	public List<Product_stockVO> getAll() {
		List<Product_stockVO> list = new ArrayList<Product_stockVO>();
		Product_stockVO product_stockVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				product_stockVO = new Product_stockVO();
				product_stockVO.setSq_stock_id(rs.getString("sq_stock_id"));
				product_stockVO.setSq_product_id(rs.getString("sq_product_id"));
				product_stockVO.setProduct_color(rs.getString("product_color"));
				product_stockVO.setProduct_model(rs.getString("product_model"));
				product_stockVO.setStock_total(rs.getInt("stock_total"));
				
				list.add(product_stockVO);
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

	@Override
	public List<Product_stockVO> getByProductId(String sq_product_id) {
		List<Product_stockVO> list = new ArrayList<Product_stockVO>();
		Product_stockVO product_stockVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE_BYPID);
			
			pstmt.setString(1, sq_product_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				product_stockVO = new Product_stockVO();
				product_stockVO.setSq_stock_id(rs.getString("sq_stock_id"));
				product_stockVO.setSq_product_id(rs.getString("sq_product_id"));
				product_stockVO.setProduct_color(rs.getString("product_color"));
				product_stockVO.setProduct_model(rs.getString("product_model"));
				product_stockVO.setStock_total(rs.getInt("stock_total"));
				
				list.add(product_stockVO);
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
//	public static void main(String args[]) {
//		Product_stockDAO dao = new Product_stockDAO();
//		List<Product_stockVO> list = dao.getByProductId("510008");
//		Set<String> set = new HashSet<String>();
//		for(Product_stockVO vo : list) {
//	 		set.add(vo.getProduct_color());
//	 	}
//		for(String i : set) {
//			System.out.println(i);
//		}
//	}
}

