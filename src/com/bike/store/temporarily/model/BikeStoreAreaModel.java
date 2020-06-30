package com.bike.store.temporarily.model;

import java.io.Serializable;

public class BikeStoreAreaModel implements Serializable {
	
	private String bike_store_name;
	private String location;
	private String phone;
	private String store_opentime;
	private Integer empty_bike;
	
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
	public Integer getEmpty_bike() {
		return empty_bike;
	}
	public void setEmpty_bike(Integer empty_bike) {
		this.empty_bike = empty_bike;
	}
}
