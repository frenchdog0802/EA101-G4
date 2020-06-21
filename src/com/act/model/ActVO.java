package com.act.model;

import java.io.Serializable;
import java.sql.*;

public class ActVO implements Serializable{

	private static final long serialVersionUID = 5644846033741136769L;
	private String sq_activity_id;
	private String sq_route_id;
	private String sq_member_id;
	private String act_title;
	private Integer max_population;
	private Integer min_population;
	private Integer population;
	private String act_description;
	private Date start_time;
	private Date end_time;
	private Date act_start_time;
	private Date act_end_time;
	private byte[] act_picture;
	private Integer gp_status;
	
	public ActVO() {
		super();
	}

	public ActVO(String sq_activity_id, String sq_route_id, String sq_member_id, String act_title,
			Integer max_population, Integer min_population, Integer population, String act_description, 
			Date start_time, Date end_time, Date act_start_time, Date act_end_time, byte[] act_picture,
			Integer gp_status) {
		this.sq_activity_id = sq_activity_id;
		this.sq_route_id = sq_route_id;
		this.sq_member_id = sq_member_id;
		this.act_title = act_title;
		this.max_population = max_population;
		this.min_population = min_population;
		this.population = population;		
		this.act_description = act_description;
		this.start_time = start_time;
		this.end_time = end_time;
		this.act_start_time = act_start_time;
		this.act_end_time = act_end_time;
		this.act_picture = act_picture;
		this.gp_status = gp_status;
	}

	public String getSq_activity_id() {
		return sq_activity_id;
	}

	public void setSq_activity_id(String sq_activity_id) {
		this.sq_activity_id = sq_activity_id;
	}

	public String getSq_route_id() {
		return sq_route_id;
	}

	public void setSq_route_id(String sq_route_id) {
		this.sq_route_id = sq_route_id;
	}

	public String getSq_member_id() {
		return sq_member_id;
	}

	public void setSq_member_id(String sq_member_id) {
		this.sq_member_id = sq_member_id;
	}

	public String getAct_title() {
		return act_title;
	}

	public void setAct_title(String act_title) {
		this.act_title = act_title;
	}

	public Integer getMax_population() {
		return max_population;
	}

	public void setMax_population(Integer max_population) {
		this.max_population = max_population;
	}

	public Integer getMin_population() {
		return min_population;
	}

	public void setMin_population(Integer min_population) {
		this.min_population = min_population;
	}

	public Integer getPopulation() {
		return population;
	}

	public void setPopulation(Integer population) {
		this.population = population;
	}

	public String getAct_description() {
		return act_description;
	}

	public void setAct_description(String act_description) {
		this.act_description = act_description;
	}

	public Date getStart_time() {
		return start_time;
	}

	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}

	public Date getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}

	public Date getAct_start_time() {
		return act_start_time;
	}

	public void setAct_start_time(Date act_start_time) {
		this.act_start_time = act_start_time;
	}

	public Date getAct_end_time() {
		return act_end_time;
	}

	public void setAct_end_time(Date act_end_time) {
		this.act_end_time = act_end_time;
	}

	public byte[] getAct_picture() {
		return act_picture;
	}

	public void setAct_picture(byte[] act_picture) {
		this.act_picture = act_picture;
	}

	public Integer getGp_status() {
		return gp_status;
	}

	public void setGp_status(Integer gp_status) {
		this.gp_status = gp_status;
	}

}
