package com.bike.store.model;

import java.util.List;

public class BikeStoreService {
	
	private BikeStoreDAO dao= null;
	
	public BikeStoreService(){
		dao = new BikeStoreDAO();
	};
	
	public List<BikeStoreVO> getAll(){
		return dao.getAll();
	}

}
