package com.forum_message.model;

import java.sql.Clob;
import java.sql.Date;

public class ForumMessageVO {
	
	private String sq_forum_message_id;
	private String sq_theme_id;
	private String sq_member_id;
	private String message_detail;
	private Date message_time;
	private Integer message_display_status;
	
	public String getSq_forum_message_id() {
		return sq_forum_message_id;
	}
	public void setSq_forum_message_id(String sq_forum_message_id) {
		this.sq_forum_message_id = sq_forum_message_id;
	}
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
	public String getMessage_detail() {
		return message_detail;
	}
	public void setMessage_detail(String message_detail) {
		this.message_detail = message_detail;
	}
	public Date getMessage_time() {
		return message_time;
	}
	public void setMessage_time(Date message_time) {
		this.message_time = message_time;
	}
	public Integer getMessage_display_status() {
		return message_display_status;
	}
	public void setMessage_display_status(Integer message_display_status) {
		this.message_display_status = message_display_status;
	}
	

}
