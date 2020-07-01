package com.bike.rent.master.model;

import java.util.HashSet;
import java.util.List;

import com.bike.rent.detail.model.BikeRentDetailVO;

public class BikeRentMasterService {
	
	private BikeRentMasterDAO_interface dao;
	
	public BikeRentMasterService() {
		dao = new  BikeRentMasterDAO();
	}
	
	public void insertWithDetail(BikeRentMasterVO BikeRentMasterVO,HashSet<BikeRentDetailVO> list ) {
		dao.insertWithDetail(BikeRentMasterVO , list ); 
	}
	
	public List<BikeRentMasterVO> getAll(){
		return dao.getAll();
	}
	
	
	public List<String> getRentMasterId(String sq_bike_store_id){
		return dao.getRentMasterId(sq_bike_store_id);
	}
	
	public String getCurrentKeys() {
		return dao.getCurrentKeys();
	}
}
