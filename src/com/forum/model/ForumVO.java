package com.forum.model;

import java.sql.Blob;
import java.sql.Clob;
import java.sql.Date;

public class ForumVO implements java.io.Serializable{
	private String sq_theme_id;
	private String sq_member_id;
	private String theme_name;
	private Date theme_time;
	private Integer reponse_sum;
	private String theme_detial;
	private byte[] theme_pic;
	private Integer theme_display_status;
	
	public String getSq_theme_id() {
		return sq_theme_id;
	}
	public void setSq_theme_id(String sq_theme_id) {
		this.sq_theme_id = sq_theme_id;
	}
	public String getSq_member_id() {
		return sq_member_id;
	}
	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}
	public String getTheme_name() {
		return theme_name;
	}
	public void setTheme_name(String theme_name) {
		this.theme_name = theme_name;
	}
	public Date getTheme_time() {
		return theme_time;
	}
	public void setTheme_time(Date theme_time) {
		this.theme_time = theme_time;
	}
	public Integer getReponse_sum() {
		return reponse_sum;
	}
	public void setReponse_sum(Integer reponse_sum) {
		this.reponse_sum = reponse_sum;
	}
	public String getTheme_detial() {
		return theme_detial;
	}
	public void setTheme_detial(String theme_detial) {
		this.theme_detial = theme_detial;
	}
	public byte[] getTheme_pic() {
		return theme_pic;
	}
	public void setTheme_pic(byte[] theme_pic) {
		this.theme_pic = theme_pic;
	}
	public Integer getTheme_display_status() {
		return theme_display_status;
	}
	public void setTheme_display_status(Integer theme_display_status) {
		this.theme_display_status = theme_display_status;
	}
	
}
