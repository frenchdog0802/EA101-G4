package com.shop_message.model;

import java.sql.*;
import java.util.*;

public class Shop_messageService{
	private Shop_messageDAO_interface dao;
	public Shop_messageService() {
		dao = new Shop_messageDAO();
	}
	
	public Shop_messageVO addShop_message(String sq_product_id, String shop_message_detial, Timestamp shop_message_time, Integer shop_message_status) {
		Shop_messageVO shop_messageVO = new Shop_messageVO();
		
		shop_messageVO.setSq_product_id(sq_product_id);
		shop_messageVO.setShop_message_detial(shop_message_detial);
		shop_messageVO.setShop_message_time(shop_message_time);
		shop_messageVO.setShop_message_status(shop_message_status);
		dao.insert(shop_messageVO);
		
		return shop_messageVO;
	}
	public Shop_messageVO updateShop_message(String sq_shop_message_id, String sq_product_id, String shop_message_detial, Timestamp shop_message_time, Integer shop_message_status) {
		Shop_messageVO shop_messageVO = new Shop_messageVO();
		
		shop_messageVO.setSq_shop_message_id(sq_shop_message_id);
		shop_messageVO.setSq_product_id(sq_product_id);
		shop_messageVO.setShop_message_detial(shop_message_detial);
		shop_messageVO.setShop_message_time(shop_message_time);
		shop_messageVO.setShop_message_status(shop_message_status);
		dao.update(shop_messageVO);
		
		return dao.findByPrimaryKey(sq_shop_message_id);
	}
	public void deleteShop_message(String sq_shop_message_id) {
		dao.delete(sq_shop_message_id);
	}
	public Shop_messageVO getOneShop_message(String sq_shop_message_id) {
		return dao.findByPrimaryKey(sq_shop_message_id);
	}
	public List<Shop_messageVO> getAll(){
		return dao.getAll();
	}
}
