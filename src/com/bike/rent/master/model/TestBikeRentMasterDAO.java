package com.bike.rent.master.model;

import java.util.List;


public class TestBikeRentMasterDAO {
	public static void main(String[] args) {


		
		BikeRentMasterDAO_interface BikeRentMasterDAO = new BikeRentMasterDAO();
		BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
		String sq_rent_id = BikeRentMasterSvc.getCurrentKeys();
		String sq_rent_idNum = null;
		String sq_rent_idStr = null;
		int j = sq_rent_id.indexOf("X");
		sq_rent_idStr = sq_rent_id.substring(0, j + 1);
		sq_rent_idNum = Integer.toString(new Integer(sq_rent_id.substring(j + 1)) + 1);
		StringBuilder sb = new StringBuilder();// 串接回來
		sb.append(sq_rent_idStr);
		sb.append(sq_rent_idNum);
		System.out.println(sb.toString());
		
//		List<String> list = BikeRentMasterDAO.getRentMasterId("620001");
//		
//		for(String i : list) {
//			System.out.println(i);
//		}
//		
//		//insert	
//		BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
//		BikeRentMasterVO.setSq_rent_id("RT-600006");
//		BikeRentMasterVO.setSq_member_id("910002");
//		BikeRentMasterVO.setSq_bike_store_id("620001");
//		BikeRentMasterVO.setRent_payment(1);
//		BikeRentMasterVO.setOd_total_price(13333);
//		BikeRentMasterVO.setRent_name("蕭琮保");
//		BikeRentMasterVO.setRent_phone("0987456321");
//		BikeRentMasterVO.setRent_od_status(1);
//		BikeRentMasterVO.setTradeno("2006291129266670");
//		
//		BikeRentMasterDAO.insert(BikeRentMasterVO);
		
		//update
//		BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
//		
//		BikeRentMasterVO.setSq_rent_id("RT-600004");
//		BikeRentMasterVO.setSq_member_id("910002");
//		BikeRentMasterVO.setSq_bike_store_id("620001");
//		BikeRentMasterVO.setRent_payment(1);
//		BikeRentMasterVO.setTradeno("2006291129266670");
//		BikeRentMasterVO.setOd_total_price(13333);
//		BikeRentMasterVO.setRent_name("蕭琮寶寶");
//		BikeRentMasterVO.setRent_phone("0987456321");
//		BikeRentMasterVO.setRent_od_status(1);
//		BikeRentMasterDAO.update(BikeRentMasterVO);
		
		
		//get one 
//		BikeRentMasterVO BikeRentMasterVO = BikeRentMasterDAO.findByPrimaryKey("RT-600001");
//		System.out.println(BikeRentMasterVO.getTradeno());
//		System.out.println(BikeRentMasterVO.getSq_rent_id());
//		System.out.println(BikeRentMasterVO.getSq_member_id());
//		System.out.println(BikeRentMasterVO.getSq_bike_store_id());
//		System.out.println(BikeRentMasterVO.getRent_payment());
//		
//		System.out.println(BikeRentMasterVO.getOd_total_price());
//		System.out.println(BikeRentMasterVO.getRent_name());
//		System.out.println(BikeRentMasterVO.getRent_phone());
//		System.out.println(BikeRentMasterVO.getRent_od_status());
//		System.out.println(BikeRentMasterVO.getOrder_date());
//		
		//get all
//		List<BikeRentMasterVO> list = BikeRentMasterDAO.getAll();
//		
//		for(BikeRentMasterVO BikeRentMasterVO:list) {
//			System.out.println(BikeRentMasterVO.getSq_rent_id());
//			System.out.println(BikeRentMasterVO.getSq_member_id());
//			System.out.println(BikeRentMasterVO.getSq_bike_store_id());
//			System.out.println(BikeRentMasterVO.getRent_payment());
//			System.out.println(BikeRentMasterVO.getOd_total_price());
//			System.out.println(BikeRentMasterVO.getRent_name());
//			System.out.println(BikeRentMasterVO.getRent_phone());
//			System.out.println(BikeRentMasterVO.getRent_od_status());
//			System.out.println(BikeRentMasterVO.getOrder_date());
//			System.out.println(BikeRentMasterVO.getTradeno());
//		}
		
		
		
		
	}
}
