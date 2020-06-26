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
	
	
	public List<String> getRentMasterId(String sq_bike_store_id){
		return dao.getRentMasterId(sq_bike_store_id);
	}
}
