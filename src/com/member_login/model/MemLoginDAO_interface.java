package com.member_login.model;

import java.util.List;
import java.util.Set;

import com.bike.bike.model.BikeVO;
import com.member.model.MemVO;

public interface MemLoginDAO_interface {

	public List<MemVO> findAll();
	public MemVO findMember_account(String member_account);
	
}
