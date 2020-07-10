package com.routeDetail.model;

import java.util.List;
import java.util.Set;

public class TestJDBCDAO {
	public static void main(String[] args) {
	RouteDetailJDBCDAO dao = new RouteDetailJDBCDAO();
	
//	 insert
//	RouteDetailVO rd1 = new RouteDetailVO();
//
//	rd1.setSqRouteId("RP110010");
//	rd1.setStepName("測試點1");
//	rd1.setStLongitude(2222.22);
//	rd1.setStLatitude(111.11);
//	rd1.setStepImage(null);
//	rd1.setStepIntroduction("測試點1簡介！！！");
//	dao.insert(rd1);
//	}
	
	//update
//	RouteDetailVO rd2 = new RouteDetailVO();
//	
//	rd2.setStepName("測試點2!!update");
//	rd2.setStLatitude(123.456);
//	rd2.setStLongitude(87.987);
//	rd2.setStepImage(null);
//	rd2.setStepIntroduction("更新測試點！！");
//	rd2.setSqSerialNo("RD120070");
//	dao.update(rd2);
	
	
	
	//delete
//	dao.delete("RD120069");
	
	
	//select findByPrimaryKey
//	RouteDetailVO rd3 = dao.findByPrimaryKey("RD120001");
//	System.out.print(rd3.getSqRouteId()+",");
//	System.out.print(rd3.getStepName()+",");
//	System.out.print(rd3.getStLatitude()+",");
//	System.out.print(rd3.getStLongitude()+",");
//	System.out.print(rd3.getInsertTimestamp()+",");
//	System.out.print(rd3.getStepImage()+",");
//	System.out.print(rd3.getStepIntroduction()+",");

	
	//查全部停留點
//	List<RouteDetailVO> list = dao.getAll();
//	for (RouteDetailVO aRD : list) {
//		System.out.print(aRD.getSqRouteId()+",");
//		System.out.print(aRD.getStepName()+",");
//		System.out.print(aRD.getStLatitude()+",");
//		System.out.print(aRD.getStLongitude()+",");
//		System.out.print(aRD.getInsertTimestamp()+",");
//		System.out.print(aRD.getStepImage()+",");
//		System.out.print(aRD.getStepIntroduction()+",");
//		System.out.println();
//	}
	
	//查詢某條路線的所有停留點
	List<RouteDetailVO> list = dao.getStepsByRouteId("RP110001");
	for (RouteDetailVO aRD : list) {
		System.out.print(aRD.getSqSerialNo()+",");
		System.out.print(aRD.getStepName()+",");
		System.out.print(aRD.getStLatitude()+",");
		System.out.print(aRD.getStLongitude()+",");
		System.out.print(aRD.getInsertTimestamp()+",");
		System.out.print(aRD.getStepImage()+",");
		System.out.print(aRD.getStepIntroduction()+",");
		System.out.print(aRD.getSqRouteId()+",");
		System.out.println();
	}
	
	}
	
	
	

}
