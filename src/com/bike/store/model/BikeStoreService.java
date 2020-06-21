package com.bike.store.model;

import java.util.List;

public class BikeStoreService {
	
	private BikeStoreDAO_interface dao= null;
	
	public BikeStoreService(){
		dao = new BikeStoreDAO();
	};
	
	public BikeStoreVO findByPrimaryKey(String sq_bike_store_id) {
		return dao.findByPrimaryKey(sq_bike_store_id);
	}
	
	public List<BikeStoreVO> getAll(){
		return dao.getAll();
	}

}
