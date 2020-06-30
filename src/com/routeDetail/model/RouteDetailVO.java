package com.routeDetail.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class RouteDetailVO implements Serializable{
	private String sqSerialNo;
	private String sqRouteId;
	private String stepName;
	private Double stLongitude;
	private Double stLatitude;
	private Timestamp insertTimestamp;
	private byte[] stepImage;
	private String stepIntroduction;
	
	public String getSqSerialNum() {
		return sqSerialNo;
	}
	public void setSqSerialNo(String sqSerialNum) {
		this.sqSerialNo = sqSerialNum;
	}
	public String getSqRouteId() {
		return sqRouteId;
	}
	public void setSqRouteId(String sqRouteId) {
		this.sqRouteId = sqRouteId;
	}
	public String getStepName() {
		return stepName;
	}
	public void setStepName(String stepName) {
		this.stepName = stepName;
	}
	public Double getStLongitude() {
		return stLongitude;
	}
	public void setStLongitude(Double stLongitude) {
		this.stLongitude = stLongitude;
	}
	public Double getStLatitude() {
		return stLatitude;
	}
	public void setStLatitude(Double stLatitude) {
		this.stLatitude = stLatitude;
	}
	public Timestamp getInsertTimestamp() {
		return insertTimestamp;
	}
	public void setInsertTimestamp(Timestamp insertTimestamp) {
		this.insertTimestamp = insertTimestamp;
	}
	public byte[] getStepImage() {
		return stepImage;
	}
	public void setStepImage(byte[] stepImage) {
		this.stepImage = stepImage;
	}
	public String getStepIntroduction() {
		return stepIntroduction;
	}
	public void setStepIntroduction(String stepIntroduction) {
		this.stepIntroduction = stepIntroduction;
	}
	
	

}
