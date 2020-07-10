package com.staff.model;

public class StaffVO implements java.io.Serializable{

	private String sq_staff_id;
	private Integer sf_status;
	private String sf_account;
	private String sf_password;
	private String sf_name;
	
	public String getSq_staff_id() {
		return sq_staff_id;
	}
	public void setSq_staff_id(String sq_staff_id) {
		this.sq_staff_id = sq_staff_id;
	}
	public Integer getSf_status() {
		return sf_status;
	}
	public void setSf_status(Integer sf_status) {
		this.sf_status = sf_status;
	}
	public String getSf_account() {
		return sf_account;
	}
	public void setSf_account(String sf_account) {
		this.sf_account = sf_account;
	}
	public String getSf_password() {
		return sf_password;
	}
	public void setSf_password(String sf_password) {
		this.sf_password = sf_password;
	}
	public String getSf_name() {
		return sf_name;
	}
	public void setSf_name(String sf_name) {
		this.sf_name = sf_name;
	}
	
	
}
