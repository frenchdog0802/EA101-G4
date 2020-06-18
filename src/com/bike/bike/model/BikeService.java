package com.bike.bike.model;

import java.util.List;

public class BikeService {
	
	private BikeDAO_interface BikeDAO ;
	
	public BikeService() {
		this.BikeDAO = new BikeDAO();
	}
	
	public List<BikeVO> getAll(){
		return BikeDAO.getAll();
	}
	
}
