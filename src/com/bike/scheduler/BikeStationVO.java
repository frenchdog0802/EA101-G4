package com.bike.scheduler;

import java.io.Serializable;

public class BikeStationVO implements Serializable{
	
	private String stationName;
	private String stationAddress;
	private String stationLat;//緯度
	private String stationLon;//經度
	private Integer stationNum1; //目前數量
	private Integer stationNum2; //尚餘空位
	
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
	public String getStationLat() {
		return stationLat;
	}
	public void setStationLat(String stationLat) {
		this.stationLat = stationLat;
	}
	public String getStationLon() {
		return stationLon;
	}
	public void setStationLon(String stationLon) {
		this.stationLon = stationLon;
	}
	public Integer getStationNum1() {
		return stationNum1;
	}
	public void setStationNum1(Integer stationNum1) {
		this.stationNum1 = stationNum1;
	}
	public Integer getStationNum2() {
		return stationNum2;
	}
	public void setStationNum2(Integer stationNum2) {
		this.stationNum2 = stationNum2;
	}
}
