package com.bike.store.model;

import java.util.List;

public interface BikeStoreDAO_interface {
	
	public void insert(BikeStoreVO BikeStoreVO);
	public void update(BikeStoreVO BikeStoreVO);
	public void delete(String sq_bike_store_id);
	public BikeStoreVO findByPrimaryKey(String sq_bike_store_id);
	public BikeStoreVO findByAccount(String store_account);
	public List<BikeStoreVO> getAll();
}
