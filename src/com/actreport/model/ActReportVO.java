package com.actreport.model;

import java.io.Serializable;

public class ActReportVO implements Serializable{

	private static final long serialVersionUID = -5300346747539801939L;
	private String sq_activityreport_id;
	private String sq_activity_id;
	private String sq_member_id;
	private String report_reason;
	private String report_response;
	private Integer report_status;
	
	public ActReportVO() {
		super();
	}

	public ActReportVO(String sq_activityreport_id, String sq_activity_id,  String sq_member_id,
			String report_reason, Integer report_status) {
		
		this.sq_activityreport_id = sq_activityreport_id;
		this.sq_activity_id = sq_activity_id;
		this.sq_member_id = sq_member_id;
		this.report_reason = report_reason;
		this.report_status = report_status;
	}

	public String getSq_activityreport_id() {
		return sq_activityreport_id;
	}

	public void setSq_activityreport_id(String sq_activityreport_id) {
		this.sq_activityreport_id = sq_activityreport_id;
	}

	public String getSq_activity_id() {
		return sq_activity_id;
	}

	public void setSq_activity_id(String sq_activity_id) {
		this.sq_activity_id = sq_activity_id;
	}

	public String getSq_member_id() {
		return sq_member_id;
	}

	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}

	public String getReport_reason() {
		return report_reason;
	}

	public void setReport_reason(String report_reason) {
		this.report_reason = report_reason;
	}
	
	public String getReport_response() {
		return report_response;
	}

	public void setReport_response(String report_response) {
		this.report_response = report_response;
	}

	public Integer getReport_status() {
		return report_status;
	}

	public void setReport_status(Integer report_status) {
		this.report_status = report_status;
	}

}
