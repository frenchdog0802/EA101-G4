package com.shop_order.model;

import java.sql.*;
import java.util.List;

public class Shop_orderService {
	private Shop_orderDAO_interface dao;
	public Shop_orderService() {
		dao = new Shop_orderDAO();
	}
	
	public Shop_orderVO addStore(String sq_member_id, String sq_store_address_id, String order_address, Timestamp order_date, Date pay_deadline, Integer shop_order_price, Integer pay_mode, Integer order_status) {
		Shop_orderVO shop_orderVO = new Shop_orderVO();
		
		shop_orderVO.setSq_member_id(sq_member_id);
		shop_orderVO.setSq_store_address_id(sq_store_address_id);
		shop_orderVO.setOrder_address(order_address);
		shop_orderVO.setOrder_date(order_date);
		shop_orderVO.setPay_deadline(pay_deadline);
		shop_orderVO.setShop_order_price(shop_order_price);
		shop_orderVO.setPay_mode(pay_mode);
		shop_orderVO.setOrder_status(order_status);
		dao.insert(shop_orderVO);
		
		return shop_orderVO;
	}
	
	public Shop_orderVO updateStore(String sq_order_id, String sq_member_id, String sq_store_address_id, String order_address, Timestamp order_date, Date pay_deadline, Integer shop_order_price, Integer pay_mode, Integer order_status) {
		Shop_orderVO shop_orderVO = new Shop_orderVO();
		
		shop_orderVO.setSq_order_id(sq_order_id);
		shop_orderVO.setSq_member_id(sq_member_id);
		shop_orderVO.setSq_store_address_id(sq_store_address_id);
		shop_orderVO.setOrder_address(order_address);
		shop_orderVO.setOrder_date(order_date);
		shop_orderVO.setPay_deadline(pay_deadline);
		shop_orderVO.setShop_order_price(shop_order_price);
		shop_orderVO.setPay_mode(pay_mode);
		shop_orderVO.setOrder_status(order_status);
		dao.update(shop_orderVO);
		
		return shop_orderVO;
	}
	
	public void delete(String sq_order_id) {		
		dao.delete(sq_order_id);		
	}
	public Shop_orderVO getOneShop(String sq_order_id) {
		return dao.findByPrimaryKey(sq_order_id);
	}
	public List<Shop_orderVO> getAll(){
		return dao.getAll();
	}
}
