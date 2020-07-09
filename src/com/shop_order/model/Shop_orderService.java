package com.shop_order.model;


import java.util.List;

import com.shop_order_detail.model.Shop_order_detailVO;


public class Shop_orderService {
	private Shop_orderDAO_interface dao;
	public Shop_orderService() {
		dao = new Shop_orderDAO();
	}
	
	public void insertWithDetail(Shop_orderVO orderVO, List<Shop_order_detailVO> list) {
		dao.insertWithDetail(orderVO , list); 
	}
	public void update(Shop_orderVO sorderVO) {
		dao.update(sorderVO);
	}
	public void delete(String sq_order_id) {		
		dao.delete(sq_order_id);		
	}
	public Shop_orderVO getOneOrder(String sq_order_id) {
		return dao.findByPrimaryKey(sq_order_id);
	}
	public List<Shop_orderVO> getAll(){
		return dao.getAll();
	}
	public String getCurrentKey() {
		return dao.getCurrentKey();
	}
}
