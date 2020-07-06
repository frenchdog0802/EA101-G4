package com.bike.scheduler;

import java.io.Serializable;
import java.util.Date;

public class WeatherVO implements Serializable{
	
	private String locationName;//車站名稱
	private String date; //日期
	private String value; //value
	private byte[] pic;
	
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public byte[] getPic() {
		return pic;
	}
	public void setPic(byte[] pic) {
		this.pic = pic;
	}
}
