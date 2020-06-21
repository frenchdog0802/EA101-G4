package com.bike.rent.detail.model;

import java.util.List;

public class BikeRentDetailService {
	
	private BikeRentDetailDAO_interface dao = null;
	
	public BikeRentDetailService() {
		dao = new BikeRentDetailDAO();
	}
	
	public BikeRentDetailVO findByPrimaryKey(String sq_rent_detail_id) {
		return dao.findByPrimaryKey(sq_rent_detail_id);
	}
	
	public List<BikeRentDetailVO> getAll(){
		return dao.getAll();
	}
}
