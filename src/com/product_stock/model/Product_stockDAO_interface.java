package com.product_stock.model;

import java.util.*;

public interface Product_stockDAO_interface {
	public void insert(Product_stockVO stockVO);
	public void update(Product_stockVO stockVO);
	public void delete(String sq_stock_id);
	public Product_stockVO findByPrimaryKey(String sq_stock_id);
	public List<Product_stockVO> getAll();
	public List<Product_stockVO> getByProductId(String sq_product_id);
}
