package com.bike.rent.detail.model;

import java.util.List;


public interface BikeRentDetailDAO_interface {
	public void insert(BikeRentDetailVO BikeRentDetailVO);
	public void update(BikeRentDetailVO BikeRentDetailVO);
	public void delete(String sq_rent_detail_id);
	public BikeRentDetailVO findByPrimaryKey(String sq_rent_detail_id);
	public List<BikeRentDetailVO> getAll();
}
