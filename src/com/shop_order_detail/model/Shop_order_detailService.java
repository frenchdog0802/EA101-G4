package com.shop_order_detail.model;

import java.util.List;

public class Shop_order_detailService {
	
	private Shop_order_detailDAO_interface dao;
	public Shop_order_detailService() {
		dao = new Shop_order_detailDAO();
	}

	public void deleteShop_message(String sq_order_id, String sq_product_id) {
		dao.delete(sq_order_id, sq_product_id);
	}
	public List<Shop_order_detailVO> getOneOrder_detail(String sq_order_id) {
		return dao.findByPrimaryKey(sq_order_id);
	}
	public List<Shop_order_detailVO> getAll(){
		return dao.getAll();
	}
	
	public void update(Shop_order_detailVO detailVO, java.sql.Connection con) {
		dao.update(detailVO, con);
	}
}
