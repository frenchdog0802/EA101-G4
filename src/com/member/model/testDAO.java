package com.member.model;

import java.util.List;

public class testDAO {
	
	public static void main(String[] args) {
		MemService memService  = new MemService ();
		
		
		List<MemVO> list =  memService.getAll();
		
		for(MemVO memVO : list) {
			System.out.println(memVO.getM_name());
		}
		
	}
	
}	
