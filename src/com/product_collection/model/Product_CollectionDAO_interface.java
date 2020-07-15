package com.product_collection.model;

import java.util.List;

public interface Product_CollectionDAO_interface {
	public void addCollection(Product_CollectionVO collectionVO);
	public void deleteCollection(String sq_member_id, String sq_product_id);
	public List<Product_CollectionVO> getAllCollection();
}
