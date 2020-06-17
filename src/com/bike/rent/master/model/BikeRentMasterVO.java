package com.bike.rent.master.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

public class BikeRentMasterVO implements Serializable  {
	public BikeRentMasterVO() {
		
	};
	private String sq_rent_id;
	private String sq_member_id;
	private String sq_bike_store_id;
	private Integer rent_payment;
	private Integer od_total_price;
	private String rent_name;
	private String rent_phone;
	private Integer rent_od_status;
	private Timestamp order_date;
	
	
	public String getSq_rent_id() {
		return sq_rent_id;
	}
	public void setSq_rent_id(String sq_rent_id) {
		this.sq_rent_id = sq_rent_id;
	}
	public String getSq_member_id() {
		return sq_member_id;
	}
	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}
	public String getSq_bike_store_id() {
		return sq_bike_store_id;
	}
	public void setSq_bike_store_id(String sq_bike_store_id) {
		this.sq_bike_store_id = sq_bike_store_id;
	}
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	public Integer getRent_payment() {
		return rent_payment;
	}
	public void setRent_payment(Integer rent_payment) {
		this.rent_payment = rent_payment;
	}

	public Integer getOd_total_price() {
		return od_total_price;
	}
	public void setOd_total_price(Integer od_total_price) {
		this.od_total_price = od_total_price;
	}

	public String getRent_name() {
		return rent_name;
	}
	public void setRent_name(String rent_name) {
		this.rent_name = rent_name;
	}
	public String getRent_phone() {
		return rent_phone;
	}
	public void setRent_phone(String rent_phone) {
		this.rent_phone = rent_phone;
	}
	public Integer getRent_od_status() {
		return rent_od_status;
	}
	public void setRent_od_status(Integer rent_od_status) {
		this.rent_od_status = rent_od_status;
	}

	
}
