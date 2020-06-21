package com.actfavor.model;

import java.io.Serializable;
import java.sql.*;

public class ActFavorVO implements Serializable{

	private static final long serialVersionUID = 9046542867018935874L;
	private String sq_activity_id;
	private String sq_member_id;
	private Timestamp favorite_time;
	
	public ActFavorVO() {
		super();
	}

	public ActFavorVO(String sq_activity_id,  String sq_member_id, Timestamp favorite_time) {
		this.sq_activity_id = sq_activity_id;
		this.sq_member_id = sq_member_id;
		this.favorite_time = favorite_time;
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

	public Timestamp getFavorite_time() {
		return favorite_time;
	}

	public void setFavorite_time(Timestamp favorite_time) {
		this.favorite_time = favorite_time;
	}
	
}
