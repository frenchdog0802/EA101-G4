package com.bike.store.model;

import java.io.Serializable;
import java.sql.Date;

public class BikeStoreVO implements Serializable{
	
	private String sqBikeStoreId;
	private String bikeStoreName;
	private String location;
	private String phone;
	private String storeOpentime;
	private Double storeLongitute;
	private Double storeLatitute;
	private Integer storeStatus;
	private Date createTime;
	
	
	public String getSqBikeStoreId() {
		return sqBikeStoreId;
	}
	public void setSqBikeStoreId(String sqBikeStoreId) {
		this.sqBikeStoreId = sqBikeStoreId;
	}
	public String getBikeStoreName() {
		return bikeStoreName;
	}
	public void setBikeStoreName(String bikeStoreName) {
		this.bikeStoreName = bikeStoreName;
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
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Double getStoreLongitute() {
		return storeLongitute;
	}
	public String getStoreOpentime() {
		return storeOpentime;
	}
	public void setStoreOpentime(String storeOpentime) {
		this.storeOpentime = storeOpentime;
	}
	public void setStoreLongitute(Double storeLongitute) {
		this.storeLongitute = storeLongitute;
	}
	public Double getStoreLatitute() {
		return storeLatitute;
	}
	public void setStoreLatitute(Double storeLatitute) {
		this.storeLatitute = storeLatitute;
	}
	public Integer getStoreStatus() {
		return storeStatus;
	}
	public void setStoreStatus(Integer storeStatus) {
		this.storeStatus = storeStatus;
	}
	
	
	
	
}
