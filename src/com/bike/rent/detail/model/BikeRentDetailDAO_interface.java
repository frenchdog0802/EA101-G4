package com.bike.rent.detail.model;

import java.util.List;


public interface BikeRentDetailDAO_interface {
	public void insert(BikeRentDetailVO BikeRentDetailVO);
	public void update(BikeRentDetailVO BikeRentDetailVO);
	public void delete(String sq_rent_detail_id);
	public BikeRentDetailVO findByPrimaryKey(String sq_rent_detail_id);
	public List<BikeRentDetailVO> getAll();
	
	//找出明細裡面商家擁有的車種
	public List<BikeRentDetailVO> getDetail(String sq_rent_id,String sq_bike_type_id);
	
	//(實務上並不常用, 但,可用在訂單主檔與明細檔一次新增成功)
	public void insert2(BikeRentDetailVO BikeRentDetailVO , java.sql.Connection con);
}
