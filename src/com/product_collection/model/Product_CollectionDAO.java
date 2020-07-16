package com.product_collection.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Product_CollectionDAO implements Product_CollectionDAO_interface{
	
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static final String INSERT = "INSERT INTO PRODUCT_COLLECTION (SQ_MEMBER_ID, SQ_PRODUCT_ID, PRODUCT_NAME, COLLECTION_DATE) VALUES (?, ?, ?, to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'))";
	private static final String DELETE = "DELETE FROM PRODUCT_COLLECTION WHERE SQ_MEMBER_ID=? AND SQ_PRODUCT_ID=?";
	private static final String GET_ALL = "SELECT * FROM PRODUCT_COLLECTION WHERE SQ_MEMBER_ID=?";
	@Override
	public void addCollection(Product_CollectionVO collectionVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT);

			pstmt.setString(1, collectionVO.getSq_member_id());
			pstmt.setString(2, collectionVO.getSq_product_id());
			pstmt.setString(3, collectionVO.getProduct_name());			
			pstmt.executeUpdate();
			
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
	public List<Product_CollectionVO> getCollection(String sq_member_id) {
		List<Product_CollectionVO> list = new ArrayList<Product_CollectionVO>();
		Product_CollectionVO collectionVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL);
			pstmt.setString(1, sq_member_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				collectionVO = new Product_CollectionVO();
				collectionVO.setSq_member_id(rs.getString("sq_member_id"));
				collectionVO.setSq_product_id(rs.getString("sq_product_id"));
				collectionVO.setProduct_name(rs.getString("product_name"));
				collectionVO.setCollection_date(rs.getDate("collection_date"));
				
				list.add(collectionVO);
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
	public void deleteCollection(String sq_member_id, String sq_product_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_member_id);
			pstmt.setString(2, sq_product_id);
						
			pstmt.executeUpdate();
			
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

}
