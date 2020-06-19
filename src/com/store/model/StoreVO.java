package com.store.model;

import java.math.BigDecimal;

public class StoreVO {
	private String sq_store_address_id;
	private String store_name;
	private String store_address;
	private BigDecimal longitude; 
	private BigDecimal latitude;
	public String getSq_store_address_id() {
		return sq_store_address_id;
	}
	public void setSq_store_address_id(String sq_address_id) {
		this.sq_store_address_id = sq_address_id;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_address() {
		return store_address;
	}
	public void setStore_address(String store_address) {
		this.store_address = store_address;
	}
	public BigDecimal getLongitude() {
		return longitude;
	}
	public void setLongitude(BigDecimal longitude) {
		this.longitude = longitude;
	}
	public BigDecimal getLatitude() {
		return latitude;
	}
	public void setLatitude(BigDecimal latitude) {
		this.latitude = latitude;
	}
	
	
}
