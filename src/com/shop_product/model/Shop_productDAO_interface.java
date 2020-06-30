package com.shop_product.model;

import java.util.*;

import com.brand.model.BrandVO;

public interface Shop_productDAO_interface {
	public void insert(Shop_productVO productVO);
	public void update(Shop_productVO productVO);
	public void delete(String sq_product_id);
	public Shop_productVO findByPrimaryKey(String sq_product_id);
	public List<Shop_productVO> findByKindName(String product_kind_name);
    public List<Shop_productVO> getAll();
    public List<Shop_productVO> findByPriceUP();
    public List<Shop_productVO> findByPriceDown();
}
