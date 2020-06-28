package com.shop_product.model;

import java.util.*;

public interface Shop_productDAO_interface {
	public void insert(Shop_productVO productVO);
	public void update(Shop_productVO productVO);
	public void delete(String sq_product_id);
	public Shop_productVO findByPrimaryKey(String sq_product_id);
    public List<Shop_productVO> getAll();
}