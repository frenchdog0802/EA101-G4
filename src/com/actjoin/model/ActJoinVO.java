package com.actjoin.model;

import java.io.Serializable;
import java.sql.*;

public class ActJoinVO implements Serializable{
	
	private static final long serialVersionUID = -57521426802410840L;
	private String sq_activity_id;
	private String sq_member_id;
	private Timestamp join_time;
	private Integer i;
	
	public ActJoinVO() {
		super();
	}
	
	public Integer getI() {
		return i;
	}

	public void setI(Integer i) {
		this.i = i;
	}


	public ActJoinVO(String sq_activity_id,  String sq_member_id, Timestamp join_time) {
		this.sq_activity_id = sq_activity_id;
		this.sq_member_id = sq_member_id;
		this.join_time = join_time;
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

	public Timestamp getJoin_time() {
		return join_time;
	}

	public void setJoin_time(Timestamp join_time) {
		this.join_time = join_time;
	}

	
}
