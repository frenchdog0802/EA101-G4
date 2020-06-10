package com.bike.type.model;

import java.io.Serializable;

public class BikeTypeVO implements Serializable {
	
	private String sqBikeTypeId;
	private String bikeTypeName;
	private String bikeTitle;
	private String bikeDescription;
	private byte[] bikePhoto;
	private Integer price;
	
	public String getSqBikeTypeId() {
		return sqBikeTypeId;
	}
	public void setSqBikeTypeId(String sqBikeTypeId) {
		this.sqBikeTypeId = sqBikeTypeId;
	}
	public String getBikeTypeName() {
		return bikeTypeName;
	}
	public void setBikeTypeName(String bikeTypeName) {
		this.bikeTypeName = bikeTypeName;
	}
	public String getBikeTitle() {
		return bikeTitle;
	}
	public void setBikeTitle(String bikeTitle) {
		this.bikeTitle = bikeTitle;
	}
	public String getBikeDescription() {
		return bikeDescription;
	}
	public void setBikeDescription(String bikeDescription) {
		this.bikeDescription = bikeDescription;
	}
	public byte[] getBikePhoto() {
		return bikePhoto;
	}
	public void setBikePhoto(byte[] bikePhoto) {
		this.bikePhoto = bikePhoto;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
	
}
