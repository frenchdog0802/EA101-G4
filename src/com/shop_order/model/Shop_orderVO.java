package com.shop_order.model;

import java.sql.*;

public class Shop_orderVO {
	private String sq_order_id;
	private String sq_member_id;
	private String sq_store_address_id;
	private String order_address;
	private Timestamp order_date;
	private Date pay_deadline;
	private Integer shop_order_price;
	private Integer pay_mode;
	private Integer order_status;
	
	public String getSq_order_id() {
		return sq_order_id;
	}
	public void setSq_order_id(String sq_order_id) {
		this.sq_order_id = sq_order_id;
	}
	public String getSq_member_id() {
		return sq_member_id;
	}
	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}
	public String getSq_store_address_id() {
		return sq_store_address_id;
	}
	public void setSq_store_address_id(String sq_store_address_id) {
		this.sq_store_address_id = sq_store_address_id;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	public Date getPay_deadline() {
		return pay_deadline;
	}
	public void setPay_deadline(Date pay_deadline) {
		this.pay_deadline = pay_deadline;
	}
	public Integer getShop_order_price() {
		return shop_order_price;
	}
	public void setShop_order_price(Integer shop_order_price) {
		this.shop_order_price = shop_order_price;
	}
	public Integer getPay_mode() {
		return pay_mode;
	}
	public void setPay_mode(Integer pay_mode) {
		this.pay_mode = pay_mode;
	}
	public Integer getOrder_status() {
		return order_status;
	}
	public void setOrder_status(Integer order_status) {
		this.order_status = order_status;
	}
}
