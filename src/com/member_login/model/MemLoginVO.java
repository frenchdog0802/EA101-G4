package com.member_login.model;

import java.sql.Blob;
import java.sql.Date;

public class MemLoginVO implements java.io.Serializable {

	private String member_account;
	private String password;
	private String m_name;
	private Integer gender;
	private Date birthday;
	private String cellphone;
	private String m_email;
	private Integer validation;
	private Date registered;
	private byte[] m_photo;
	private byte[] back_img;
	private String nick_name;
	private String address;
	private String sq_member_id;
	
	
	public Integer getValidation() {
		return validation;
	}
	public void setValidation(Integer validation) {
		this.validation = validation;
	}
	public Date getRegistered() {
		return registered;
	}
	public void setRegistered(Date registered) {
		this.registered = registered;
	}
	public String getMember_account() {
		return member_account;
	}
	public void setMember_account(String member_account) {
		this.member_account = member_account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public byte[] getM_photo() {
		return m_photo;
	}
	public void setM_photo(byte[] m_photo) {
		this.m_photo = m_photo;
	}
	public byte[] getBack_img() {
		return back_img;
	}
	public void setBack_img(byte[] back_img) {
		this.back_img = back_img;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSq_member_id() {
		return sq_member_id;
	}
	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}
	
	
}
