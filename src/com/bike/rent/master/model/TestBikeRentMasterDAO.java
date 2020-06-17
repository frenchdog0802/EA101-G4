package com.bike.rent.master.model;

import java.util.List;

public class TestBikeRentMasterDAO {
	public static void main(String[] args) {


		
		BikeRentMasterDAO_interface BikeRentMasterDAO = new BikeRentMasterDAO();
//		
//		//insert	
//		BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
//		BikeRentMasterVO.setSq_member_id("910002");
//		BikeRentMasterVO.setSq_bike_store_id("620001");
//		BikeRentMasterVO.setRent_payment(1);
//		BikeRentMasterVO.setOd_total_price(13333);
//		BikeRentMasterVO.setRent_name("蕭琮保");
//		BikeRentMasterVO.setRent_phone("0987456321");
//		BikeRentMasterVO.setRent_od_status(1);
//		
//		BikeRentMasterDAO.insert(BikeRentMasterVO);
		
		//update
//		BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
//		
//		BikeRentMasterVO.setSq_rent_id("RT-600006");
//		BikeRentMasterVO.setSq_member_id("910002");
//		BikeRentMasterVO.setSq_bike_store_id("620001");
//		BikeRentMasterVO.setRent_payment(1);
//		
//		BikeRentMasterVO.setOd_total_price(13333);
//		BikeRentMasterVO.setRent_name("蕭琮寶寶");
//		BikeRentMasterVO.setRent_phone("0987456321");
//		BikeRentMasterVO.setRent_od_status(1);
//		BikeRentMasterDAO.update(BikeRentMasterVO);
		
		//get one 
//		BikeRentMasterVO BikeRentMasterVO = BikeRentMasterDAO.findByPrimaryKey("RT-600001");
//		
//		System.out.println(BikeRentMasterVO.getSq_rent_id());
//		System.out.println(BikeRentMasterVO.getSq_member_id());
//		System.out.println(BikeRentMasterVO.getSq_bike_store_id());
//		System.out.println(BikeRentMasterVO.getRent_payment());
//		System.out.println(BikeRentMasterVO.getRsved_rent_date());
//		System.out.println(BikeRentMasterVO.getReal_rent_date());
//		System.out.println(BikeRentMasterVO.getEx_return_date());
//		System.out.println(BikeRentMasterVO.getReal_return_date());
//		System.out.println(BikeRentMasterVO.getOd_total_price());
//		System.out.println(BikeRentMasterVO.getOd_price());
//		System.out.println(BikeRentMasterVO.getRent_name());
//		System.out.println(BikeRentMasterVO.getRent_phone());
//		System.out.println(BikeRentMasterVO.getRent_od_status());
//		System.out.println(BikeRentMasterVO.getPick_up_status());
//		System.out.println(BikeRentMasterVO.getOrder_date());
		
		//get all
		List<BikeRentMasterVO> list = BikeRentMasterDAO.getAll();
		
		for(BikeRentMasterVO BikeRentMasterVO:list) {
			System.out.println(BikeRentMasterVO.getSq_rent_id());
			System.out.println(BikeRentMasterVO.getSq_member_id());
			System.out.println(BikeRentMasterVO.getSq_bike_store_id());
			System.out.println(BikeRentMasterVO.getRent_payment());
			System.out.println(BikeRentMasterVO.getOd_total_price());
			System.out.println(BikeRentMasterVO.getRent_name());
			System.out.println(BikeRentMasterVO.getRent_phone());
			System.out.println(BikeRentMasterVO.getRent_od_status());
			System.out.println(BikeRentMasterVO.getOrder_date());
		}
		
		
		
		
	}
}
