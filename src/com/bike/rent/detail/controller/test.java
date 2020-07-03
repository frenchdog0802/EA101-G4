package com.bike.rent.detail.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import com.bike.bike.model.BikeService;
import com.bike.bike.model.BikeVO;
import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.type.model.BikeTypeService;

public class test {
	public static void main(String[] args) {
		String bike_store_id = "620001";
		//取得初始參數
		BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();
		BikeService bikeSvc = new BikeService();
		List<BikeVO> bikeVOList =  bikeSvc.getAll();
		List<BikeVO> storeBikeList = new ArrayList<>();
		//先撈出店家車輛
		storeBikeList = bikeVOList.stream()
				.filter(p->p.getSq_bike_store_id().equals(bike_store_id))
				.collect(Collectors.toList());
		storeBikeList.forEach(e->System.out.println(e.getSq_bike_id()));
	}
}
