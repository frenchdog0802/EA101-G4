package com.forum_message_report.model;

import java.sql.Clob;
import java.sql.Date;

public class ForumMessageReportVO {
	
	private String sq_message_report_id;
	private String sq_forum_message;
	private String sq_member_id;
	private Clob message_report_detail;
	private Date message_report_time;
	private Integer message_report_type;
	public String getSq_message_report_id() {
		return sq_message_report_id;
	}
	public void setSq_message_report_id(String sq_message_report_id) {
		this.sq_message_report_id = sq_message_report_id;
	}
	public String getSq_forum_message() {
		return sq_forum_message;
	}
	public void setSq_forum_message(String sq_forum_message) {
		this.sq_forum_message = sq_forum_message;
	}
	public String getSq_member_id() {
		return sq_member_id;
	}
	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}
	public Clob getMessage_report_detail() {
		return message_report_detail;
	}
	public void setMessage_report_detail(Clob message_report_detail) {
		this.message_report_detail = message_report_detail;
	}
	public Date getMessage_report_time() {
		return message_report_time;
	}
	public void setMessage_report_time(Date message_report_time) {
		this.message_report_time = message_report_time;
	}
	public Integer getMessage_report_type() {
		return message_report_type;
	}
	public void setMessage_report_type(Integer message_report_type) {
		this.message_report_type = message_report_type;
	}
	

}
