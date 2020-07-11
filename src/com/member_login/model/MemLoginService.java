package com.member_login.model;

import java.util.List;
import java.util.Set;

public class MemLoginService {
	
	private MemLoginDAO_interface dao;

	public MemLoginService() {
		dao = new MemLoginDAO();

	}
	
	public List<MemLoginVO> findAll() {
		return dao.findAll();
	}
	
	public MemLoginVO findMember_account(String member_account) {
		return dao.findMember_account(member_account);
	}
		
}
