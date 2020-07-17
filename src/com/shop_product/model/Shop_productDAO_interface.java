package com.shop_product.model;

import java.util.*;

import com.product_stock.model.Product_stockVO;

public interface Shop_productDAO_interface {
	public void insert(Shop_productVO productVO ,List<Product_stockVO> stockList);
	public void update(Shop_productVO productVO);
	public void delete(String sq_product_id);
	public Shop_productVO findByPrimaryKey(String sq_product_id);
	public List<Shop_productVO> findByKindName(String product_kind_name);
    public List<Shop_productVO> getAll();
    public List<Shop_productVO> getAll(Map<String, String[]> map);
    public List<Shop_productVO> getSearchByText(String text);
    public String getCurrentKey();
}
