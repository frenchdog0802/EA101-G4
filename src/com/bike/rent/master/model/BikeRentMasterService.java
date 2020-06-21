package com.bike.rent.master.model;

import java.util.List;

public class BikeRentMasterService {
	
	private BikeRentMasterDAO_interface dao;
	
	public BikeRentMasterService() {
		dao = new  BikeRentMasterDAO();
	}
	
	public List<BikeRentMasterVO> getAll(){
		return dao.getAll();
	}
	
}
