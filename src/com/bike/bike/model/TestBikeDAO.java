package com.bike.bike.model;

import java.util.List;

public class TestBikeDAO {

	public static void main(String[] args) {
		
		BikeDAO BikeDAO = new BikeDAO();
		
		System.out.println(BikeDAO.findBikeTypeAndStore("620001", "630001"));
		
//		Integer count = BikeDAO.findStoreBikeEmpty("620007");
//		System.out.println(count);
		

		//insert
		
//		BikeVO bikeVo = new BikeVO();
//		
//		bikeVo.setSq_bike_type_id("630001");
//		bikeVo.setSq_bike_store_id("620001");
//		bikeVo.setBike_status(0);
//		BikeDAO.insert(bikeVo);
		
		//delete
		
//		BikeDAO.delete("640003");
		
		//get one
//		BikeVO bikebo = BikeDAO.findByPrimaryKey("640002");
//		
//		System.out.println(bikebo.getSq_bike_id());
//		System.out.println(bikebo.getSq_bike_store_id());
//		System.out.println(bikebo.getSq_bike_type_id());
//		System.out.println(bikebo.getPublication_date());
//		System.out.println(bikebo.getBike_status());
		
		//get ALL
		
//		List<BikeVO> list = BikeDAO.getAll();
//		
//		for(BikeVO BikeVO :list) {
//			System.out.println(BikeVO.getSq_bike_id());
//			System.out.println(BikeVO.getSq_bike_store_id());
//			System.out.println(BikeVO.getSq_bike_type_id());
//			System.out.println(BikeVO.getPublication_date());
//			System.out.println(BikeVO.getBike_status());
//			
//		}
		
		
		
		
	}

}
