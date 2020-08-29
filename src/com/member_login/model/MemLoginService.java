package com.member_login.model;

import java.util.List;
import java.util.Set;

import com.member.model.MemVO;

public class MemLoginService {
	
	private MemLoginDAO_interface dao;

	public MemLoginService() {
		dao = new MemLoginDAO();

	}
	
	public List<MemVO> findAll() {
		return dao.findAll();
	}
	
	public MemVO findMember_account(String member_account) {
		return dao.findMember_account(member_account);
	}
		
}
