package com.bike.store.model;

import java.io.Serializable;
import java.sql.Date;

public class BikeStoreVO implements Serializable {
	public BikeStoreVO() {
		
	};
	private String sq_bike_store_id;
	private String bike_store_name;
	private String location;
	private String phone;
	private String store_opentime;
	private Double store_longitute;
	private Double store_latitute;
	private Integer store_status;
	private String store_email;
	private String store_account;
	private String store_password;
	private byte[] store_photo;
	
	
	public String getStore_email() {
		return store_email;
	}

	public void setStore_email(String store_email) {
		this.store_email = store_email;
	}

	public String getStore_account() {
		return store_account;
	}

	public void setStore_account(String store_account) {
		this.store_account = store_account;
	}

	public String getStore_password() {
		return store_password;
	}

	public void setStore_password(String store_password) {
		this.store_password = store_password;
	}
	private String area;

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSq_bike_store_id() {
		return sq_bike_store_id;
	}

	public void setSq_bike_store_id(String sq_bike_store_id) {
		this.sq_bike_store_id = sq_bike_store_id;
	}

	public String getBike_store_name() {
		return bike_store_name;
	}

	public void setBike_store_name(String bike_store_name) {
		this.bike_store_name = bike_store_name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStore_opentime() {
		return store_opentime;
	}

	public void setStore_opentime(String store_opentime) {
		this.store_opentime = store_opentime;
	}

	public Double getStore_longitute() {
		return store_longitute;
	}

	public void setStore_longitute(Double store_longitute) {
		this.store_longitute = store_longitute;
	}

	public Double getStore_latitute() {
		return store_latitute;
	}

	public void setStore_latitute(Double store_latitute) {
		this.store_latitute = store_latitute;
	}

	public Integer getStore_status() {
		return store_status;
	}

	public void setStore_status(Integer store_status) {
		this.store_status = store_status;
	}

	public byte[] getStore_photo() {
		return store_photo;
	}

	public void setStore_photo(byte[] store_photo) {
		this.store_photo = store_photo;
	}



}
