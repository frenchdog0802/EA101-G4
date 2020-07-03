package com.product_stock.model;

public class Product_stockVO {
	private String sq_stock_id;
	private String sq_product_id;
	private String product_color;
	private String product_model;
	private Integer stock_total;
	
	public String getSq_stock_id() {
		return sq_stock_id;
	}
	public void setSq_stock_id(String sq_stock_id) {
		this.sq_stock_id = sq_stock_id;
	}
	public String getSq_product_id() {
		return sq_product_id;
	}
	public void setSq_product_id(String sq_product_id) {
		this.sq_product_id = sq_product_id;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public String getProduct_model() {
		return product_model;
	}
	public void setProduct_model(String product_model) {
		this.product_model = product_model;
	}
	public Integer getStock_total() {
		return stock_total;
	}
	public void setStock_total(Integer stock_total) {
		this.stock_total = stock_total;
	}
}
