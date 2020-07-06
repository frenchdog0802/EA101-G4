package com.bike.rent.master.model;

import java.util.HashSet;
import java.util.List;

import com.bike.rent.detail.model.BikeRentDetailVO;


public interface BikeRentMasterDAO_interface {
	//同時新增到明細
	public void insertWithDetail(BikeRentMasterVO BikeRentMasterVO,List<BikeRentDetailVO>list );
	public void update(BikeRentMasterVO BikeRentMasterVO);
	public void delete(String sq_rent_id);
	public BikeRentMasterVO findByPrimaryKey(String sq_rent_id);
	public List<BikeRentMasterVO> getAll();
	
	public List<String> getRentMasterId(String sq_bike_store_id); //抓出所有訂單
	
	public List<String> getRentMasterIdIsVaild(String sq_bike_store_id , Integer rent_od_status);//抓出成立訂單
	public String getCurrentKeys() ;//抓取最大主鍵
	

}
