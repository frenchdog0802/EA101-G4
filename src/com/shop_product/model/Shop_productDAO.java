package com.shop_product.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Shop_productDAO implements Shop_productDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "EA101_G4";
	String password = "EA101_G4";
	
	private static final String INSERT_STMT = "INSERT INTO SHOP_PRODUCT (sq_product_id, sq_brand_id, product_kind_name, stock_total, product_name, product_price, product_pic,"
			+ " product_detail, product_model, product_color, add_date, product_material, product_status) VALUES (SQ_PRODUCT_ID.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final String UPDATE = "UPDATE SHOP_PRODUCT SET sq_brand_id=?, product_kind_name=?, stock_total=?, product_name=?, product_price=?, product_pic=?,"
			+ " product_detail=?, product_model=?, product_color=?, add_date=?, product_material=?, product_status=? WHERE sq_product_id";
	private static final String DELETE = "DELETE FROM SHOP_PRODUCT WHERE SQ_PRODUCT_ID";
	private static final String GET_ONE = "SELECT SQ_PRODUCT_ID, SQ_BRAND_ID, PRODUCT_KIND_NAME, STOCK_TOTAL, PRODUCT_NAME,PRODUCT_PRICE, PRODUCT_PIC, PRODUCT_DETAIL, PRODUCT_MODEL, "
			+ "PRODUC_COLOR, ADD_DATE, PRODUCT_MATERIAL, PRODUCT_STATUS FROM SHOP_PRODUT WHERE SQ_PORDUCT_ID=?";
	private static final String GET_ALL = "SELECT SQ_PRODUCT_ID, SQ_BRAND_ID, PRODUCT_KIND_NAME, STOCK_TOTAL, PRODUCT_NAME,PRODUCT_PRICE, PRODUCT_PIC, PRODUCT_DETAIL, PRODUCT_MODEL, "
			+ "PRODUC_COLOR, ADD_DATE, PRODUCT_MATERIAL, PRODUCT_STATUS FROM SHOP_PRODUT ORDER BY SQ_PORDUCT_ID";;
	
	
	public void insert(Shop_productVO productVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(INSERT_STMT);
			
			pstmt.setString(1, productVO.getSq_brand_id()); 
			pstmt.setString(2, productVO.getProduct_kind_name());
			pstmt.setInt(3, productVO.getStock_total());
			pstmt.setString(4, productVO.getProduct_name());
			pstmt.setInt(5, productVO.getProduct_price());
			
			Blob blob = con.createBlob();
			byte[] pic = productVO.getProduct_pic();
			blob.setBytes(1, pic);
			pstmt.setBlob(6, blob);
			
			Clob clob = con.createClob();
			clob.setString(1,productVO.getProduct_detail());
			pstmt.setClob(7, clob);
			
			pstmt.setString(8, productVO.getProduct_model());
			pstmt.setString(9, productVO.getProduct_color());
			pstmt.setDate(10, productVO.getAdd_date());
			
			Clob clob2 = con.createClob();
			clob2.setString(1,productVO.getProduct_material());
			pstmt.setClob(11,clob2);
			
			pstmt.setInt(12, productVO.getProduct_status());
			
			pstmt.executeUpdate();
			
		}catch(ClassNotFoundException e){
			throw new RuntimeException("Couldn't load database driver" + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("Couldn't load database driver" + se.getMessage());
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
				}catch(Exception se){
					se.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public void update(Shop_productVO productVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, productVO.getSq_brand_id()); 
			pstmt.setString(2, productVO.getProduct_kind_name());
			pstmt.setInt(3, productVO.getStock_total());
			pstmt.setString(4, productVO.getProduct_name());
			pstmt.setInt(5, productVO.getProduct_price());
			
			Blob blob = con.createBlob();
			byte[] pic = productVO.getProduct_pic();
			blob.setBytes(1, pic);
			pstmt.setBlob(6, blob);
			
			Clob clob = con.createClob();
			clob.setString(1,productVO.getProduct_detail());
			pstmt.setClob(7, clob);
			
			pstmt.setString(8, productVO.getProduct_model());
			pstmt.setString(9, productVO.getProduct_color());
			pstmt.setDate(10, productVO.getAdd_date());
			
			Clob clob2 = con.createClob();
			clob2.setString(1,productVO.getProduct_material());
			pstmt.setClob(11,clob2);
			
			pstmt.setInt(12, productVO.getProduct_status());
			pstmt.setString(13, productVO.getSq_product_id());
			
			pstmt.executeUpdate();
			
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver" + e.getMessage());
		}catch(SQLException se) {
			throw new RuntimeException("Couldn't load database driver"+ se.getMessage());
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
	public void delete(String sq_product_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_product_id);
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
	public Shop_productVO findByPrimaryKey(String sq_product_id) {
		Shop_productVO shop_productVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ONE);
			
			pstmt.setString(1, sq_product_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_productVO = new Shop_productVO();
				shop_productVO.setSq_brand_id(rs.getString("sq_brand_id"));
				shop_productVO.setProduct_kind_name(rs.getString("product_kind_name"));
				shop_productVO.setStock_total(rs.getInt("stock_total"));
				shop_productVO.setProduct_name(rs.getString("product_name"));
				shop_productVO.setProduct_price(rs.getInt("product_price"));
				shop_productVO.setProduct_pic(rs.getBytes("product_pic"));
				shop_productVO.setProduct_detail(rs.getString("product_detail"));
				shop_productVO.setProduct_model(rs.getString("product_model"));
				shop_productVO.setProduct_color(rs.getString("product_color"));
				shop_productVO.setAdd_date(rs.getDate("add_date"));
				shop_productVO.setProduct_material(rs.getString("product_material"));
				shop_productVO.setProduct_status(rs.getInt("product_status"));
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
		return shop_productVO;
	}

	@Override
	public List<Shop_productVO> getAll() {
		List<Shop_productVO> list = new ArrayList<Shop_productVO>();
		Shop_productVO shop_productVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(GET_ALL);	
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_productVO = new Shop_productVO();
				shop_productVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_productVO.setSq_brand_id(rs.getString("sq_brand_id"));
				shop_productVO.setProduct_kind_name(rs.getString("product_kind_name"));
				shop_productVO.setStock_total(rs.getInt("stock_total"));
				shop_productVO.setProduct_name(rs.getString("product_name"));
				shop_productVO.setProduct_price(rs.getInt("product_price"));
				shop_productVO.setProduct_pic(rs.getBytes("product_pic"));
				shop_productVO.setProduct_detail(rs.getString("product_detail"));
				shop_productVO.setProduct_model(rs.getString("product_model"));
				shop_productVO.setProduct_color(rs.getString("product_color"));
				shop_productVO.setAdd_date(rs.getDate("add_date"));
				shop_productVO.setProduct_material(rs.getString("product_material"));
				shop_productVO.setProduct_status(rs.getInt("product_status"));
				list.add(shop_productVO);
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
		return list;
	}


}
