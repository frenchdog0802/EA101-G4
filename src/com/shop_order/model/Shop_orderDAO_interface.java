package com.shop_order.model;

import java.util.*;

public interface Shop_orderDAO_interface {
	public void insert(Shop_orderVO shop_orderVO);
	public void update(Shop_orderVO shop_orderVO);
	public void delete(String sq_order_id);
	public Shop_orderVO findByPrimaryKey(String sq_order_id);
	public List<Shop_orderVO> getAll();
}
