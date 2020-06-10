package com.bike.store.model;

import java.util.List;

public interface BikeStoreDAO_interface {
	
	public void insert(BikeStoreVO BikeTypeVO);
	public void update(BikeStoreVO BikeTypeVO);
	public void delete(String sqBikeStoreId);
	public BikeStoreVO findByPrimaryKey(String sqBikeStoreId);
	public List<BikeStoreVO> getAll();
}
