package com.member_login.model;

public class MemLoginService {
	
	private MemLoginDAO_interface dao;

	public MemLoginService() {
		
		dao = new MemLoginJDBCDAO();
	}
	
	public MemLoginVO login(String member_account) {
		
		return dao.login(member_account);
	}
		
}
