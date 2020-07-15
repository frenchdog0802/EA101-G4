package com.product_collection.model;

import java.util.Date;

public class Product_CollectionVO {
	private String sq_member_id;
	private String sq_product_id;
	private Date collection_date;
	
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
	public Date getCollection_date() {
		return collection_date;
	}
	public void setCollection_date(Date collection_date) {
		this.collection_date = collection_date;
	}
}
