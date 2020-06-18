package com.bike.type.model;

import java.util.List;

public class BikeTypeService {
	
	private BikeTypeDAO_interface dao;
	
	public BikeTypeService() {
		dao = new BikeTypeDAO();
	}
	
	
	public void insert(BikeTypeVO BikeTypeVO) {
		dao.insert(BikeTypeVO);
	};
	public void update(BikeTypeVO BikeTypeVO){
		dao.update(BikeTypeVO);
	};

	public BikeTypeVO findByPrimaryKey(String sq_bike_type_id){
		return dao.findByPrimaryKey(sq_bike_type_id);
	};
	
	public List<BikeTypeVO> getAll(){
		return dao.getAll();
	};
//	public void delete(String Sq_bike_type_id){};
}
