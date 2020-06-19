package com.shop_report.model;

import java.sql.*;

public class Shop_reportVO {
	private String sq_shop_report_id;
	private String sq_member_id;
	private String sq_product_id;
	private String shop_report_detial;
	private Timestamp shop_report_time;
	private Integer shop_report_status;
	
	public String getSq_shop_report_id() {
		return sq_shop_report_id;
	}
	public void setSq_shop_report_id(String sq_shop_report_id) {
		this.sq_shop_report_id = sq_shop_report_id;
	}
	public String getSq_member_id() {
		return sq_member_id;
	}
	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}
	public String getSq_product_id() {
		return sq_product_id;
	}
	public void setSq_product_id(String sq_product_id) {
		this.sq_product_id = sq_product_id;
	}
	public String getShop_report_detial() {
		return shop_report_detial;
	}
	public void setShop_report_detial(String shop_report_detial) {
		this.shop_report_detial = shop_report_detial;
	}
	public Timestamp getShop_report_time() {
		return shop_report_time;
	}
	public void setShop_report_time(Timestamp shop_report_time) {
		this.shop_report_time = shop_report_time;
	}
	public Integer getShop_report_status() {
		return shop_report_status;
	}
	public void setShop_report_status(Integer shop_report_status) {
		this.shop_report_status = shop_report_status;
	}
	
	
}

