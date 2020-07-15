package com.product_collection.model;

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
	
	private static final String INSERT = "INSERT INTO PRODUCT_COLLECTION (SQ_MEMBER_ID, SQ_PRODUCT_ID, COLLECTION_DATE) VALUES (?, ?, ?)";
	private static final String DELETE = "DELETE FROM PRODUCT_COLLECTION WHERE SQ_MEMBER_ID=? AND SQ_PRODUCT_ID=?";
	private static final String GET_ALL = "SELECT * FROM PRODUCT_COLLECTION ORDER BY SQ_PRODUCT_ID";
	@Override
	public void addCollection(Product_CollectionVO collectionVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Product_CollectionVO> getAllCollection() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCollection(String sq_member_id, String sq_product_id) {
		// TODO Auto-generated method stub
		
	}

}
