package com.bike.type.model;

import java.util.List;

public interface BikeTypeDAO_interface {
	public void insert(BikeTypeVO BikeTypeVO);
	public void update(BikeTypeVO BikeTypeVO);
	public void delete(String SqBikeTypeId);
	public BikeTypeVO findByPrimaryKey(String sqBikeTypeId);
	public List<BikeTypeVO> getAll();
}
