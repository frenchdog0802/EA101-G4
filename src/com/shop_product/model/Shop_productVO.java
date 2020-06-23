package com.shop_product.model;

import java.sql.Date;

public class Shop_productVO implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private String sq_product_id;
	private String sq_brand_id;
	private String product_kind_name;
	private String product_name;
	private Integer product_price;
	private byte[] product_pic;
	private String product_detail;
	private Date add_date;
	private String product_material;
	private Integer product_status;
	
	public String getSq_product_id() {
		return sq_product_id;
	}
	public void setSq_product_id(String sq_product_id) {
		this.sq_product_id = sq_product_id;
	}
	public String getSq_brand_id() {
		return sq_brand_id;
	}
	public void setSq_brand_id(String sq_brand_id) {
		this.sq_brand_id = sq_brand_id;
	}
	public String getProduct_kind_name() {
		return product_kind_name;
	}
	public void setProduct_kind_name(String product_kind_name) {
		this.product_kind_name = product_kind_name;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
	public byte[] getProduct_pic() {
		return product_pic;
	}
	public void setProduct_pic(byte[] product_pic) {
		this.product_pic = product_pic;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public Date getAdd_date() {
		return add_date;
	}
	public void setAdd_date(Date add_date) {
		this.add_date = add_date;
	}
	public String getProduct_material() {
		return product_material;
	}
	public void setProduct_material(String product_material) {
		this.product_material = product_material;
	}
	public Integer getProduct_status() {
		return product_status;
	}
	public void setProduct_status(Integer product_status) {
		this.product_status = product_status;
	}
	
}
