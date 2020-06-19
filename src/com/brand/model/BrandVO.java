package com.brand.model;

public class BrandVO implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String sq_brand_id;
	private String brand_name;
	private String brand_phone;
	private String brand_address;
	private byte[] brand_sign;
	private String brand_detail;
	
	public String getSq_brand_id() {
		return sq_brand_id;
	}
	public void setSq_brand_id(String sq_brand_id) {
		this.sq_brand_id = sq_brand_id;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getBrand_phone() {
		return brand_phone;
	}
	public void setBrand_phone(String brand_phone) {
		this.brand_phone = brand_phone;
	}
	public String getBrand_address() {
		return brand_address;
	}
	public void setBrand_address(String brand_address) {
		this.brand_address = brand_address;
	}
	public byte[] getBrand_sign() {
		return brand_sign;
	}
	public void setBrand_sign(byte[] brand_sign) {
		this.brand_sign = brand_sign;
	}
	public String getBrand_detail() {
		return brand_detail;
	}
	public void setBrand_detail(String brand_detail) {
		this.brand_detail = brand_detail;
	}
}
