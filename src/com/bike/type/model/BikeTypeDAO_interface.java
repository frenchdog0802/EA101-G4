package com.bike.type.model;

import java.util.List;

public interface BikeTypeDAO_interface {
	public void insert(BikeTypeVO BikeTypeVO);
	public void update(BikeTypeVO BikeTypeVO);
	public void delete(String Sq_bike_type_id);
	public BikeTypeVO findByPrimaryKey(String sq_bike_type_id);
	public List<BikeTypeVO> getAll();
}
