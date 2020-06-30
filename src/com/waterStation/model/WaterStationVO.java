package com.waterStation.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class WaterStationVO implements Serializable{
	private String sqStationId;
	private String stationName;
	private String stationAddress;
	private Double longitude;
	private Double latitude;
	private String country;
	private String area;
	private byte[] stationImage;
	private String businessHours;
	private Timestamp insertTimestamp;
	private Timestamp updateTimestamp;
	private String modifyId;
	private String insertBy;
	private Integer checkFlag;
	private Integer addStation;
	
	public String getSqStationId() {
		return sqStationId;
	}
	public void setSqStationId(String sqStationId) {
		this.sqStationId = sqStationId;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public String getStationAddress() {
		return stationAddress;
	}
	public void setStationAddress(String stationAddress) {
		this.stationAddress = stationAddress;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public byte[] getStationImage() {
		return stationImage;
	}
	public void setStationImage(byte[] stationImage) {
		this.stationImage = stationImage;
	}
	public String getBusinessHours() {
		return businessHours;
	}
	public void setBusinessHours(String businessHours) {
		this.businessHours = businessHours;
	}
	public Timestamp getInsertTimestamp() {
		return insertTimestamp;
	}
	public void setInsertTimestamp(Timestamp insertTimestamp) {
		this.insertTimestamp = insertTimestamp;
	}
	public Timestamp getUpdateTimestamp() {
		return updateTimestamp;
	}
	public void setUpdateTimestamp(Timestamp updateTimestamp) {
		this.updateTimestamp = updateTimestamp;
	}
	public String getModifyId() {
		return modifyId;
	}
	public void setModifyId(String modifyId) {
		this.modifyId = modifyId;
	}
	public String getInsertBy() {
		return insertBy;
	}
	public void setInsertBy(String insertBy) {
		this.insertBy = insertBy;
	}
	public Integer getCheckFlag() {
		return checkFlag;
	}
	public void setCheckFlag(Integer checkFlag) {
		this.checkFlag = checkFlag;
	}
	public Integer getAddStation() {
		return addStation;
	}
	public void setAddStation(Integer addStation) {
		this.addStation = addStation;
	}
	
	
}
