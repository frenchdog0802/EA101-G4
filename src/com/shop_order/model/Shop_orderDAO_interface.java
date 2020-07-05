package com.shop_order.model;

import java.util.*;

import com.shop_order_detail.model.Shop_order_detailVO;

public interface Shop_orderDAO_interface {
	public void insertWithDetail(Shop_orderVO sorderVO, List<Shop_order_detailVO> list);
	public void update(Shop_orderVO shop_orderVO);
	public void delete(String sq_order_id);
	public Shop_orderVO findByPrimaryKey(String sq_order_id);
	public List<Shop_orderVO> getAll();
	public String getCurrentKey();
}
