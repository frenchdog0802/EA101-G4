package com.bike.bike.model;

import java.util.List;

public interface BikeDAO_interface {
	public void insert(BikeVO BikeVO);
	public void update(BikeVO BikeVO);
	public void delete(String sq_bike_id);
	public BikeVO findByPrimaryKey(String sq_bike_id);
	public List<BikeVO> getAll();
	
	public Integer findStoreBikeEmpty(String sq_bike_store_id); //找出店家目前空的車輛
	public List<String> findStoreBikeType(String sq_bike_store_id);//找出店家目前擁有的車種
	public Integer findBikeTypeAndStore(String sq_bike_store_id , String sq_bike_type_id);
	
}
