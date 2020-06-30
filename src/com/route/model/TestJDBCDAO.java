package com.route.model;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

public class TestJDBCDAO {
	public static void main(String[] args) {
		RouteJDBCDAO dao = new RouteJDBCDAO();

//		 insert
//		RouteVO rou1 = new RouteVO();
//		rou1.setSqMemberId("");
//		rou1.setSqStaffId("");
//		rou1.setRouteName("中央陰屍路");
//		rou1.setDistance(987.66);
//		rou1.setCountry("台灣");
//		rou1.setStartArea("桃園市");
//		rou1.setEndArea("桃園市");
//		// rou.setRouteImage(byte[]);
//		rou1.setRouteIntroduction("就是爽");
//		rou1.setModifyId("");
//		rou1.setCheckFlag(0);
//		rou1.setAddRoute(0);
//		dao.insert(rou1);
//		
//		//updateByMem
//		RouteVO rou2 = new RouteVO();
//		rou2.setRouteName("中央陰屍路8787");
//		rou2.setDistance(87.87);
//		rou2.setCountry("台灣");
//		rou2.setStartArea("桃園市");
//		rou2.setEndArea("桃園市");
//		rou2.setRouteImage(null);
//		rou2.setRouteIntroduction("123");
//		rou2.setSqMemberId("7");
//		dao.updateByMem(rou2);
//		
//		//updateByStaf
		RouteVO rou3 = new RouteVO();
		rou3.setRouteName("工欲善其事");
		rou3.setDistance(94.87);
		rou3.setCountry("台灣");
		rou3.setStartArea("龜山島");
		rou3.setEndArea("龜山島");
		rou3.setRouteImage(null);
		rou3.setRouteIntroduction("測試成功吧！！！！");
		rou3.setInsertTimestamp(java.sql.Timestamp.valueOf("2020-06-14 00:00:00"));
		rou3.setCheckFlag(1);
		rou3.setAddRoute(1);
		rou3.setSqStaffId("2");
		dao.updateByStaf(rou3);
//		
//		
//		//delete
//		dao.delete("RP110007");
//
//		
//		//select findByPrimaryKey
//		RouteVO rou4 = dao.findByPrimaryKey("RP110005");
//		System.out.print(rou4.getSqRouteId() + ",");
//		System.out.print(rou4.getSqMemberId() + ",");
//		System.out.print(rou4.getSqStaffId() + ",");
//		System.out.print(rou4.getRouteName() + ",");
//		System.out.print(rou4.getDistance() + ",");
//		System.out.print(rou4.getCountry() + ",");
//		System.out.print(rou4.getStartArea() + ",");
//		System.out.print(rou4.getEndArea() + ",");
//		System.out.print(rou4.getRouteImage() + ",");
//		System.out.print(rou4.getRouteIntroduction() + ",");
//		System.out.print(rou4.getInsertTimestamp() + ",");
//		System.out.print(rou4.getUpdateTimestamp() + ",");
//		System.out.print(rou4.getModifyId() + ",");
//		System.out.print(rou4.getCheckFlag() + ",");
//		System.out.print(rou4.getAddRoute());
//		System.out.println("---------------------");
//		
		//查詢全部路線
//		List<RouteVO> list = dao.getAll();
//		System.out.println(list.size());
//		for (RouteVO aRou : list) {
//			System.out.print(aRou.getSqRouteId() + ",");
//			System.out.print(aRou.getSqMemberId() + ",");
//			System.out.print(aRou.getSqStaffId() + ",");
//			System.out.print(aRou.getRouteName() + ",");
//			System.out.print(aRou.getDistance() + ",");
//			System.out.print(aRou.getCountry() + ",");
//			System.out.print(aRou.getStartArea() + ",");
//			System.out.print(aRou.getEndArea() + ",");
//			System.out.print(aRou.getRouteImage() + ",");
//			System.out.print(aRou.getRouteIntroduction() + ",");
//			System.out.print(aRou.getInsertTimestamp() + ",");
//			System.out.print(aRou.getUpdateTimestamp() + ",");
//			System.out.print(aRou.getModifyId() + ",");
//			System.out.print(aRou.getCheckFlag() + ",");
//			System.out.print(aRou.getAddRoute());
//			System.out.println("---------------------");
//		}
		
		
		//查詢某區域內的路線
//		Set<RouteVO> set = dao.getAreaByStartArea("桃園市");
//		for (RouteVO aRou : set) {
//			System.out.print(aRou.getRouteName()+ ",");
//			System.out.print(aRou.getDistance()+ ",");
//			System.out.print(aRou.getCountry()+ ",");
//			System.out.print(aRou.getStartArea()+ ",");
//			System.out.print(aRou.getEndArea()+ ",");
//			System.out.print(aRou.getRouteImage()+ ",");
//			System.out.print(aRou.getRouteIntroduction()+ ",");
//			System.out.println("---------------------");
//		}
		
		//查詢某會員的路線
//				Set<RouteVO> set = dao.getRouteByMemId("7");
//				for (RouteVO aRou : set) {
//					System.out.print(aRou.getSqRouteId()+ ",");
//					System.out.print(aRou.getRouteName()+ ",");
//					System.out.print(aRou.getDistance()+ ",");
//					System.out.print(aRou.getCountry()+ ",");
//					System.out.print(aRou.getStartArea()+ ",");
//					System.out.print(aRou.getEndArea()+ ",");
//					System.out.print(aRou.getRouteImage()+ ",");
//					System.out.print(aRou.getRouteIntroduction()+ ",");
//					System.out.println("---------------------");
//				}
//
	}
}
