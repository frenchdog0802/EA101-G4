package com.bike.rent.detail.model;

import java.util.List;

public class BikeRentDetailService {
	
	private BikeRentDetailDAO_interface dao = null;
	
	public BikeRentDetailService() {
		dao = new BikeRentDetailDAO();
	}
	
	public BikeRentDetailVO findByPrimaryKey(String sq_rent_detail_id) {
		return dao.findByPrimaryKey(sq_rent_detail_id);
	}
	
	public List<BikeRentDetailVO> getAll(){
		return dao.getAll();
	}
	
	//找出明細裡面商家擁有的車種
	public List<BikeRentDetailVO> getDetail(String sq_rent_id,String sq_bike_type_id){
		return dao.getDetail(sq_rent_id, sq_bike_type_id);
	}
	
	//修改
	public void update(BikeRentDetailVO BikeRentDetailVO) {
		dao.update(BikeRentDetailVO);
	}
	
	//刪除
	public void delete(String sq_rent_detail_id) {
		dao.delete(sq_rent_detail_id);
	}
}
