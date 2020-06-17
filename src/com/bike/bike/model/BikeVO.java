package com.bike.bike.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class BikeVO implements Serializable  {

	public BikeVO() {
	};

	private String sq_bike_id;
	private String sq_bike_type_id;
	private String sq_bike_store_id;
	private Integer bike_status;
	private Timestamp publication_date;

	public Timestamp getPublication_date() {
		return publication_date;
	}

	public void setPublication_date(Timestamp publication_date) {
		this.publication_date = publication_date;
	}

	public String getSq_bike_id() {
		return sq_bike_id;
	}

	public void setSq_bike_id(String sq_bike_id) {
		this.sq_bike_id = sq_bike_id;
	}

	public String getSq_bike_type_id() {
		return sq_bike_type_id;
	}

	public void setSq_bike_type_id(String sq_bike_type_id) {
		this.sq_bike_type_id = sq_bike_type_id;
	}

	public String getSq_bike_store_id() {
		return sq_bike_store_id;
	}

	public void setSq_bike_store_id(String sq_bike_store_id) {
		this.sq_bike_store_id = sq_bike_store_id;
	}

	public Integer getBike_status() {
		return bike_status;
	}

	public void setBike_status(Integer bike_status) {
		this.bike_status = bike_status;
	}

}
