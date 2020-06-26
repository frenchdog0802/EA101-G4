package com.bike.rent.master.model;

import java.util.List;


public interface BikeRentMasterDAO_interface {
	public void insert(BikeRentMasterVO BikeRentMasterVO);
	public void update(BikeRentMasterVO BikeRentMasterVO);
	public void delete(String sq_rent_id);
	public BikeRentMasterVO findByPrimaryKey(String sq_rent_id);
	public List<BikeRentMasterVO> getAll();
	
	public List<String> getRentMasterId(String sq_bike_store_id); 
}
