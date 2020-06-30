package com.route.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class RouteVO implements Serializable{
	private String sqRouteId;
	private String sqMemberId;
	private String sqStaffId;
	private String routeName;
	private Double distance;
	private String country;
	private String startArea;
	private String endArea;
	private byte[] routeImage;
	private String routeIntroduction;
	private Timestamp insertTimestamp;
	private Timestamp updateTimestamp;
	private String modifyId;
	private Integer checkFlag;
	private Integer addRoute;
	
	private String imgString;
	
	
	
	public String getImgString() {
		return imgString;
	}
	public void setImgString(String imgString) {
		this.imgString = imgString;
	}
	public String getSqRouteId() {
		return sqRouteId;
	}
	public void setSqRouteId(String sqRouteId) {
		this.sqRouteId = sqRouteId;
	}
	public String getSqMemberId() {
		return sqMemberId;
	}
	public void setSqMemberId(String sqMemberId) {
		this.sqMemberId = sqMemberId;
	}
	public String getSqStaffId() {
		return sqStaffId;
	}
	public void setSqStaffId(String sqStaffId) {
		this.sqStaffId = sqStaffId;
	}
	public String getRouteName() {
		return routeName;
	}
	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}
	public Double getDistance() {
		return distance;
	}
	public void setDistance(Double distance) {
		this.distance = distance;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getStartArea() {
		return startArea;
	}
	public void setStartArea(String startArea) {
		this.startArea = startArea;
	}
	public String getEndArea() {
		return endArea;
	}
	public void setEndArea(String endArea) {
		this.endArea = endArea;
	}
	public byte[] getRouteImage() {
		return routeImage;
	}
	public void setRouteImage(byte[] routeImage) {
		this.routeImage = routeImage;
	}
	public String getRouteIntroduction() {
		return routeIntroduction;
	}
	public void setRouteIntroduction(String routeIntroduction) {
		this.routeIntroduction = routeIntroduction;
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
	public Integer getCheckFlag() {
		return checkFlag;
	}
	public void setCheckFlag(Integer checkFlag) {
		this.checkFlag = checkFlag;
	}
	public Integer getAddRoute() {
		return addRoute;
	}
	public void setAddRoute(Integer addRoute) {
		this.addRoute = addRoute;
	}
	
	
}
