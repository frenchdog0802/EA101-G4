package com.shop_order_detail.model;

import java.util.*;


public interface Shop_order_detailDAO_interface {
	public void insert(Shop_order_detailVO shop_order_detailVO);
	public void update(Shop_order_detailVO shop_order_detailVO);
	public void delete(String sq_order_id, String sq_product_id);
	public List<Shop_order_detailVO> findByPrimaryKey(String sq_order_id);
	public List<Shop_order_detailVO> getAll();
	
	public void insert2(Shop_order_detailVO detailVO , java.sql.Connection con);
}

