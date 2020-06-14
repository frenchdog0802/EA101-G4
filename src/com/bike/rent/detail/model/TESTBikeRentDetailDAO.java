package com.bike.rent.detail.model;

import java.util.List;

public class TESTBikeRentDetailDAO {

	public static void main(String[] args) {

		BikeRentDetailDAO BikeRentDetailDAO = new BikeRentDetailDAO();

//		// insert
//		BikeRentDetailVO BikeRentDetailVO = new BikeRentDetailVO();
//		BikeRentDetailVO.setSq_rent_id("RT-600004");
//		BikeRentDetailVO.setSq_bike_type_id("630005");
//		BikeRentDetailVO.setSq_bike_id("640002");
//		BikeRentDetailVO.setPrice(99999);
//		
//		BikeRentDetailDAO.insert(BikeRentDetailVO);
		
		//update
		
//		BikeRentDetailVO BikeRentDetailVO = new BikeRentDetailVO();
//		BikeRentDetailVO.setSq_rent_detail_id("610007");
//		BikeRentDetailVO.setSq_rent_id("RT-600004");
//		BikeRentDetailVO.setSq_bike_type_id("630005");
//		BikeRentDetailVO.setSq_bike_id("640002");
//		BikeRentDetailVO.setPrice(99999);
//		
//		BikeRentDetailDAO.update(BikeRentDetailVO);
		
		
		//delete
		
		//BikeRentDetailDAO.delete("610007");
		
		
		
		//GET_ONE
//		BikeRentDetailVO BikeRentDetailVO= BikeRentDetailDAO.findByPrimaryKey("610001");
//		
//		System.out.println(BikeRentDetailVO.getSq_rent_detail_id());
//		System.out.println(BikeRentDetailVO.getSq_rent_id());
//		System.out.println(BikeRentDetailVO.getSq_bike_id());
//		System.out.println(BikeRentDetailVO.getSq_bike_type_id());
//		System.out.println(BikeRentDetailVO.getPrice());
		
		
		//get all
		
		List<BikeRentDetailVO> list = BikeRentDetailDAO.getAll();
		
		for(BikeRentDetailVO BikeRentDetailVO:list) {
			System.out.println(BikeRentDetailVO.getSq_rent_detail_id());
			System.out.println(BikeRentDetailVO.getSq_rent_id());
			System.out.println(BikeRentDetailVO.getSq_bike_id());
			System.out.println(BikeRentDetailVO.getSq_bike_type_id());
			System.out.println(BikeRentDetailVO.getPrice());
			
		}
		
	}

}
