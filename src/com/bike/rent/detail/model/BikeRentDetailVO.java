package com.bike.rent.detail.model;

public class BikeRentDetailVO {
	private String sq_rent_detail_id;
	private String sq_rent_id;
	private String sq_bike_type_id;
	private String sq_bike_id;
	private Integer price;
	
	public String getSq_rent_detail_id() {
		return sq_rent_detail_id;
	}
	public void setSq_rent_detail_id(String sq_rent_detail_id) {
		this.sq_rent_detail_id = sq_rent_detail_id;
	}
	public String getSq_rent_id() {
		return sq_rent_id;
	}
	public void setSq_rent_id(String sq_rent_id) {
		this.sq_rent_id = sq_rent_id;
	}
	public String getSq_bike_type_id() {
		return sq_bike_type_id;
	}
	public void setSq_bike_type_id(String sq_bike_type_id) {
		this.sq_bike_type_id = sq_bike_type_id;
	}
	public String getSq_bike_id() {
		return sq_bike_id;
	}
	public void setSq_bike_id(String sq_bike_id) {
		this.sq_bike_id = sq_bike_id;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
	
}
