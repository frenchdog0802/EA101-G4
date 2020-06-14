package com.bike.store.model;

import java.io.Serializable;
import java.sql.Date;

public class BikeStoreVO implements Serializable {

	private String sq_bike_store_id;
	private String bike_store_name;
	private String location;
	private String phone;
	private String store_opentime;
	private Double store_longitute;
	private Double store_latitute;
	private Integer store_status;
	private Date create_time;

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

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

}
