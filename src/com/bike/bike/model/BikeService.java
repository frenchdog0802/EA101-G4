package com.bike.bike.model;

import java.util.List;

public class BikeService {
	
	private BikeDAO_interface BikeDAO ;
	
	public BikeService() {
		this.BikeDAO = new BikeDAO();
	}
	
	public Integer findBikeTypeAndStore(String sq_bike_store_id, String sq_bike_type_id) {
		return BikeDAO.findBikeTypeAndStore(sq_bike_store_id, sq_bike_type_id);
	}
	
	public List<String> findStoreBikeType(String sq_bike_store_id) {
		return BikeDAO.findStoreBikeType(sq_bike_store_id);
	}
	
	public Integer findStoreBikeEmpty(String sq_bike_store_id) {
		return BikeDAO.findStoreBikeEmpty(sq_bike_store_id);
	}
	
	public void insert(BikeVO BikeVO) {
		BikeDAO.insert(BikeVO);
	}
	
	public BikeVO findByPrimaryKey(String sq_bike_id) {
		return BikeDAO.findByPrimaryKey(sq_bike_id);
	};
	
	public List<BikeVO> getAll(){
		return BikeDAO.getAll();
	}
	
	public void update(BikeVO BikeVO) {
		BikeDAO.update(BikeVO);
	}
	
}
