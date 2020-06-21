package com.shop_message.model;

import java.sql.*;

public class Shop_messageVO {
	private String sq_shop_message_id;
	private String sq_product_id;
	private String shop_message_detial;
	private Timestamp shop_message_time;
	private Integer shop_message_status;
	
	public String getSq_shop_message_id() {
		return sq_shop_message_id;
	}
	public void setSq_shop_message_id(String sq_shop_message_id) {
		this.sq_shop_message_id = sq_shop_message_id;
	}
	public String getSq_product_id() {
		return sq_product_id;
	}
	public void setSq_product_id(String sq_product_id) {
		this.sq_product_id = sq_product_id;
	}
	public String getShop_message_detial() {
		return shop_message_detial;
	}
	public void setShop_message_detial(String shop_message_detial) {
		this.shop_message_detial = shop_message_detial;
	}
	public Timestamp getShop_message_time() {
		return shop_message_time;
	}
	public void setShop_message_time(Timestamp shop_message_time) {
		this.shop_message_time = shop_message_time;
	}
	public Integer getShop_message_status() {
		return shop_message_status;
	}
	public void setShop_message_status(Integer shop_message_status) {
		this.shop_message_status = shop_message_status;
	}
	
}
