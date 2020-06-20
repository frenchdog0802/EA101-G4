package com.bike.bike.model;

import java.util.List;

public class BikeService {
	
	private BikeDAO_interface BikeDAO ;
	
	public BikeService() {
		this.BikeDAO = new BikeDAO();
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
	
}
