package com.bike.rent.detail.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class BikeRentDetailVO implements Serializable,Comparable<BikeRentDetailVO>{
	
	public BikeRentDetailVO() {
		
	};
	private String sq_rent_detail_id;
	private String sq_rent_id;
	private String sq_bike_type_id;
	private String sq_bike_id;
	private Integer price;
	private Integer extra_cost;
	private Timestamp rsved_rent_date;
	private Timestamp ex_return_date;
	private Timestamp real_return_date;
	
	//假VO傳回bikeStore頁面
	private List<String> bikeTypeList;
	private String bikeTypeName;
	
	public Integer getExtra_cost() {
		return extra_cost;
	}
	public void setExtra_cost(Integer extra_cost) {
		this.extra_cost = extra_cost;
	}
	public Timestamp getRsved_rent_date() {
		return rsved_rent_date;
	}
	@Override
	public int compareTo(BikeRentDetailVO o) {
		return getRsved_rent_date().compareTo(o.getRsved_rent_date());
	}
	public void setRsved_rent_date(Timestamp rsved_rent_date) {
		this.rsved_rent_date = rsved_rent_date;
	}
	public Timestamp getEx_return_date() {
		return ex_return_date;
	}
	public void setEx_return_date(Timestamp ex_return_date) {
		this.ex_return_date = ex_return_date;
	}
	public Timestamp getReal_return_date() {
		return real_return_date;
	}
	public void setReal_return_date(Timestamp real_return_date) {
		this.real_return_date = real_return_date;
	}
	
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
	
	public List<String> getBikeTypeList() {
		return bikeTypeList;
	}
	public void setBikeTypeList(List<String> bikeTypeList) {
		this.bikeTypeList = bikeTypeList;
	}
	public String getBikeTypeName() {
		return bikeTypeName;
	}
	public void setBikeTypeName(String bikeTypeName) {
		this.bikeTypeName = bikeTypeName;
	}
	
	
	
	
}
