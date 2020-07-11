package com.member_login.model;

import java.util.List;
import java.util.Set;

import com.bike.bike.model.BikeVO;

public interface MemLoginDAO_interface {

	public List<MemLoginVO> findAll();
	public MemLoginVO findMember_account(String member_account);
	
}
