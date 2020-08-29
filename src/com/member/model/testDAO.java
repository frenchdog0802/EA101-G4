package com.member.model;

import java.util.List;

public class testDAO {
	
	public static void main(String[] args) {
		
		
		MemJDBCDAO memSvc = new MemJDBCDAO();
		MemVO MemVO = memSvc.findByPrimaryKey("910011");
		MemVO.setValidation(1);
		memSvc.update(MemVO);
		
	}
	
}	
