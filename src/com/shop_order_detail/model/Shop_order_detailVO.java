package com.shop_order_detail.model;

public class Shop_order_detailVO {
	private String sq_order_id;
	private String sq_product_id;
	private Integer product_price;
	private Integer order_sum;
	
	public String getSq_order_id() {
		return sq_order_id;
	}
	public void setSq_order_id(String sq_order_id) {
		this.sq_order_id = sq_order_id;
	}
	public String getSq_product_id() {
		return sq_product_id;
	}
	public void setSq_product_id(String sq_product_id) {
		this.sq_product_id = sq_product_id;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
	public Integer getOrder_sum() {
		return order_sum;
	}
	public void setOrder_sum(Integer order_sum) {
		this.order_sum = order_sum;
	}
	
}
