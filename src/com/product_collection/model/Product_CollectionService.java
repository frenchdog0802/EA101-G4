package com.product_collection.model;

import java.util.List;

public class Product_CollectionService {
	private Product_CollectionDAO_interface dao;
	public Product_CollectionService(){
		dao = new Product_CollectionDAO();
	}
	public void addCollection(Product_CollectionVO collectionVO) {
		dao.addCollection(collectionVO);
	}
	public void deleteCollection(String sq_member_id, String sq_product_id) {
		dao.deleteCollection(sq_member_id, sq_product_id);
	}
	public List<Product_CollectionVO> getCollection(String sq_member_id){
		return dao.getCollection(sq_member_id);
	}
}
