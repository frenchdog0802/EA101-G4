package com.forum_theme_report.model;

import java.sql.Clob;
import java.sql.Date;

public class ForumThemeReportVO implements java.io.Serializable{
	private String sq_theme_report_id;
	private String sq_theme_id;
	private String sq_member_id;
	private Clob theme_report_detail;
	private Date theme_report_time;
	private Integer theme_report_type;
	
	public String getSq_theme_report_id() {
		return sq_theme_report_id;
	}
	public void setSq_theme_report_id(String sq_theme_report_id) {
		this.sq_theme_report_id = sq_theme_report_id;
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
	public Clob getTheme_report_detail() {
		return theme_report_detail;
	}
	public void setTheme_report_detail(Clob theme_report_detail) {
		this.theme_report_detail = theme_report_detail;
	}
	public Date getTheme_report_time() {
		return theme_report_time;
	}
	public void setTheme_report_time(Date theme_report_time) {
		this.theme_report_time = theme_report_time;
	}
	public Integer getTheme_report_type() {
		return theme_report_type;
	}
	public void setTheme_report_type(Integer theme_report_type) {
		this.theme_report_type = theme_report_type;
	}
	
	
}
