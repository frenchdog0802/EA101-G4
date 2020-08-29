package com.bike.store.model;

import java.util.List;

public class BikeStoreService {
	
	private BikeStoreDAO_interface dao= null;
	
	public BikeStoreService(){
		dao = new BikeStoreDAO();
	};
	
	public void insert(BikeStoreVO BikeStoreVO) {
		dao.insert(BikeStoreVO);
	}
	
	public void update(BikeStoreVO BikeStoreVO) {
		 dao.update(BikeStoreVO);
	}
	
	public BikeStoreVO findByAccount(String store_account) {
		return dao.findByAccount(store_account);
	}
	
	public BikeStoreVO findByPrimaryKey(String sq_bike_store_id) {
		return dao.findByPrimaryKey(sq_bike_store_id);
	}
	
	public List<BikeStoreVO> getAll(){
		return dao.getAll();
	}
	
	public String store_status(Integer store_status) {
		String statusStr = null;
		
		switch(store_status) {
			case 0 :
				statusStr="休息";
				break;
			case 1 :
				statusStr = "開店";
				break;
			case 2 : 
				statusStr = "歇業";
				break;
		}
		return statusStr;
	}
}
