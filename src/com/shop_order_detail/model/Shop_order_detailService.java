package com.shop_order_detail.model;

import java.util.List;

import com.shop_message.model.Shop_messageVO;

public class Shop_order_detailService {
	private Shop_order_detailDAO_interface dao;
	public Shop_order_detailService() {
		dao = new Shop_order_detailDAO();
	}
	public Shop_order_detailVO addShop_order_detail(String sq_order_id, String sq_product_id, Integer product_price, Integer order_sum) {
		Shop_order_detailVO shop_order_detailVO = new Shop_order_detailVO();

		shop_order_detailVO.setSq_order_id(sq_order_id);
		shop_order_detailVO.setSq_product_id(sq_product_id);
		shop_order_detailVO.setProduct_price(product_price);
		shop_order_detailVO.setOrder_sum(order_sum);
		dao.insert(shop_order_detailVO);
		
		return shop_order_detailVO;
	}
	public Shop_order_detailVO updateShop_order_detail(String sq_order_id, String sq_product_id, Integer product_price, Integer order_sum) {
		Shop_order_detailVO shop_order_detailVO = new Shop_order_detailVO();

		shop_order_detailVO.setSq_order_id(sq_order_id);
		shop_order_detailVO.setSq_product_id(sq_product_id);
		shop_order_detailVO.setProduct_price(product_price);
		shop_order_detailVO.setOrder_sum(order_sum);
		dao.update(shop_order_detailVO);
		
		return shop_order_detailVO;
	}
	public void deleteShop_message(String sq_order_id, String sq_product_id) {
		dao.delete(sq_order_id, sq_product_id);
	}
	public Shop_order_detailVO getOneShop_message(String sq_order_id, String sq_product_id) {
		return dao.findByPrimaryKey(sq_order_id, sq_product_id);
	}
	public List<Shop_order_detailVO> getAll(){
		return dao.getAll();
	}
}
