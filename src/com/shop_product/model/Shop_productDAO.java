package com.shop_product.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import jdbc.util.CompositeQuery.jdbcUtil_CompositeQuery_Emp2;

public class Shop_productDAO implements Shop_productDAO_interface{
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
	
	private static final String INSERT_STMT = "INSERT INTO SHOP_PRODUCT (sq_product_id, sq_brand_id, product_kind_name, product_name, product_price, product_pic,"
			+ " product_detail, add_date, product_material, product_status) VALUES (SQ_PRODUCT_ID.NEXTVAL,?,?,?,?,?,?,to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'),?,0)";
	private static final String UPDATE = "UPDATE SHOP_PRODUCT SET sq_brand_id=?, product_kind_name=?, product_name=?, product_price=?, product_pic=?,"
			+ " product_detail=?, add_date=?, product_material=?, product_status=? WHERE sq_product_id";
	private static final String DELETE = "DELETE FROM SHOP_PRODUCT WHERE SQ_PRODUCT_ID=? ";
	private static final String GET_ONE = "SELECT SQ_PRODUCT_ID, SQ_BRAND_ID, PRODUCT_KIND_NAME, PRODUCT_NAME,PRODUCT_PRICE, PRODUCT_PIC, PRODUCT_DETAIL, "
			+ "ADD_DATE, PRODUCT_MATERIAL, PRODUCT_STATUS FROM SHOP_PRODUCT WHERE SQ_PRODUCT_ID=?";
	private static final String GET_ALL = "SELECT SQ_PRODUCT_ID, SQ_BRAND_ID, PRODUCT_KIND_NAME, PRODUCT_NAME,PRODUCT_PRICE, PRODUCT_PIC, PRODUCT_DETAIL,"
			+ "ADD_DATE, PRODUCT_MATERIAL, PRODUCT_STATUS FROM SHOP_PRODUCT ORDER BY SQ_PRODUCT_ID";
	private static final String GET_BY_KIND = "SELECT SQ_PRODUCT_ID, SQ_BRAND_ID, PRODUCT_KIND_NAME, PRODUCT_NAME,PRODUCT_PRICE, PRODUCT_PIC, PRODUCT_DETAIL, "
			+ "ADD_DATE, PRODUCT_MATERIAL, PRODUCT_STATUS FROM SHOP_PRODUCT WHERE PRODUCT_KIND_NAME=?";	
			
			
	public void insert(Shop_productVO productVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);
			
			pstmt.setString(1, productVO.getSq_brand_id()); 
			pstmt.setString(2, productVO.getProduct_kind_name());
			pstmt.setString(3, productVO.getProduct_name());
			pstmt.setInt(4, productVO.getProduct_price());	
			
			Blob blob = con.createBlob();
			byte[] pic = productVO.getProduct_pic();
			blob.setBytes(1, pic);
			pstmt.setBlob(5, blob);
			
			Clob clob = con.createClob();
			clob.setString(1,productVO.getProduct_detail());
			pstmt.setClob(6, clob);
			
			Clob clob2 = con.createClob();
			clob2.setString(1,productVO.getProduct_material());
			pstmt.setClob(7,clob2);
			
			pstmt.executeUpdate();
			
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
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, productVO.getSq_brand_id()); 
			pstmt.setString(2, productVO.getProduct_kind_name());
			pstmt.setString(3, productVO.getProduct_name());
			pstmt.setInt(4, productVO.getProduct_price());
			
			Blob blob = con.createBlob();
			byte[] pic = productVO.getProduct_pic();
			blob.setBytes(1, pic);
			pstmt.setBlob(5, blob);		
			
			Clob clob = con.createClob();
			clob.setString(1,productVO.getProduct_detail());
			pstmt.setClob(6, clob);		
			
			pstmt.setDate(7, productVO.getAdd_date());			
			
			Clob clob2 = con.createClob();
			clob2.setString(1,productVO.getProduct_material());
			pstmt.setClob(8,clob2);		
			
			pstmt.setInt(9, productVO.getProduct_status());
			
			pstmt.setString(10, productVO.getSq_product_id());
			
			pstmt.executeUpdate();
			
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
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_product_id);
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
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
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE);
			
			pstmt.setString(1, sq_product_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_productVO = new Shop_productVO();
				shop_productVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_productVO.setSq_brand_id(rs.getString("sq_brand_id"));
				shop_productVO.setProduct_kind_name(rs.getString("product_kind_name"));
				shop_productVO.setProduct_name(rs.getString("product_name"));
				shop_productVO.setProduct_price(rs.getInt("product_price"));
				shop_productVO.setProduct_pic(rs.getBytes("product_pic"));
				shop_productVO.setProduct_detail(rs.getString("product_detail"));
				shop_productVO.setAdd_date(rs.getDate("add_date"));
				shop_productVO.setProduct_material(rs.getString("product_material"));
				shop_productVO.setProduct_status(rs.getInt("product_status"));
			}
			pstmt.clearParameters();
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
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL);				
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_productVO = new Shop_productVO();
				shop_productVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_productVO.setSq_brand_id(rs.getString("sq_brand_id"));
				shop_productVO.setProduct_kind_name(rs.getString("product_kind_name"));
				shop_productVO.setProduct_name(rs.getString("product_name"));
				shop_productVO.setProduct_price(rs.getInt("product_price"));
				shop_productVO.setProduct_pic(rs.getBytes("product_pic"));
				shop_productVO.setProduct_detail(rs.getString("product_detail"));
				shop_productVO.setAdd_date(rs.getDate("add_date"));
				shop_productVO.setProduct_material(rs.getString("product_material"));
				shop_productVO.setProduct_status(rs.getInt("product_status"));
				list.add(shop_productVO);
			}
			pstmt.clearParameters();
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
	@Override
	public List<Shop_productVO> findByKindName(String product_kind_name) {
		List<Shop_productVO> list = new ArrayList<Shop_productVO>();
		Shop_productVO shop_productVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_BY_KIND);	
			
			pstmt.setString(1, product_kind_name);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				shop_productVO = new Shop_productVO();
				shop_productVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_productVO.setSq_brand_id(rs.getString("sq_brand_id"));
				shop_productVO.setProduct_kind_name(rs.getString("product_kind_name"));
				shop_productVO.setProduct_name(rs.getString("product_name"));
				shop_productVO.setProduct_price(rs.getInt("product_price"));
				shop_productVO.setProduct_pic(rs.getBytes("product_pic"));
				shop_productVO.setProduct_detail(rs.getString("product_detail"));
				shop_productVO.setAdd_date(rs.getDate("add_date"));
				shop_productVO.setProduct_material(rs.getString("product_material"));
				shop_productVO.setProduct_status(rs.getInt("product_status"));
				list.add(shop_productVO);
			}
			pstmt.clearParameters();
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
//	public static void main(String args[]) {
//		Shop_productDAO dao = new Shop_productDAO();
//		List<Shop_productVO> list = dao.findByPriceDown();
//		for(Shop_productVO vo : list) {
//			System.out.print(vo.getSq_product_id() + ",");
//			System.out.print(vo.getSq_brand_id() + ",");
//			System.out.print(vo.getProduct_kind_name() + ",");
//			System.out.print(vo.getProduct_price() + ",");
//			System.out.println();
//		}		
//	}

	@Override
	public List<Shop_productVO> getAll(Map<String, String[]> map) {
		List<Shop_productVO> list = new ArrayList<Shop_productVO>();
		Shop_productVO shop_productVO = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = ds.getConnection();
			String finalSQL = "select * from shop_product "
			          + jdbcUtil_CompositeQuery_Emp2.get_WhereCondition(map)
			          + "order by sq_product_id";
			pstmt = con.prepareStatement(finalSQL);				
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_productVO = new Shop_productVO();
				
				shop_productVO.setSq_product_id(rs.getString("sq_product_id"));			
				shop_productVO.setProduct_name(rs.getString("product_name"));
				shop_productVO.setProduct_price(rs.getInt("product_price"));
				
				list.add(shop_productVO);
			}
			pstmt.clearParameters();
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
