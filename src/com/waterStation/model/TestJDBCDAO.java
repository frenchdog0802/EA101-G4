package com.waterStation.model;

import java.util.List;

import com.route.model.RouteJDBCDAO;

public class TestJDBCDAO {
	public static void main(String[] args) {
		WaterStationJDBCDAO dao = new WaterStationJDBCDAO();

//		 insert
			WaterStationVO ws1 = new WaterStationVO();
			
			ws1.setStationName("喝起來");
			ws1.setStationAddress("來喝");
			ws1.setLongitude(123.123);
			ws1.setLatitude(23.23);
			ws1.setCountry("台灣");
			ws1.setArea("宜蘭縣");
			ws1.setStationImage(null);
			ws1.setBusinessHours(null);

			ws1.setCheckFlag(0);
			ws1.setAddStation(0);
			dao.insert(ws1);

		// update
//			WaterStationVO ws2 = new WaterStationVO();
//			
//			ws2.setStationName("喝起來");
//			ws2.setStationAddress("來喝");
//			ws2.setLongitude(123.123);
//			ws2.setLatitude(23.23);
//			ws2.setCountry("台灣");
//			ws2.setArea("宜蘭縣");
//			ws2.setStationImage(null);
//			ws2.setBusinessHours(null);

//			ws2.setModifyId("");
//			ws2.setInsertBy("2");
//			ws2.setCheckFlag(0);
//			ws2.setAddStation(0);
//			ws2.setSqStationId("WS130006");
//			dao.update(ws2);

		// delete
//			dao.delete("WS130005");

		// select findByPrimaryKey
//			WaterStationVO ws3 = dao.findByPrimaryKey("WS130007");
//			System.out.print(ws3.getSqStationId() + ",");
//			System.out.print(ws3.getStationName() + ",");
//			System.out.print(ws3.getStationAddress() + ",");
//			System.out.print(ws3.getLongitude() + ",");
//			System.out.print(ws3.getLatitude() + ",");
//			System.out.print(ws3.getCountry() + ",");
//			System.out.print(ws3.getArea() + ",");
//			System.out.print(ws3.getStationImage() + ",");
//			System.out.print(ws3.getBusinessHours() + ",");
//			System.out.print(ws3.getInsertTimestamp() + ",");
//			System.out.print(ws3.getUpdateTimestamp() + ",");
//			System.out.print(ws3.getModifyId() + ",");
//			System.out.print(ws3.getInsertBy() + ",");
//			System.out.print(ws3.getCheckFlag() + ",");
//			System.out.print(ws3.getAddStation() + ",");
//			System.out.println("---------------------");

//		 select All
			List<WaterStationVO> list = dao.getAll();
			System.out.println(list.size());
			for (WaterStationVO aWs : list) {
				System.out.print(aWs.getSqStationId() + ",");
				System.out.print(aWs.getStationName() + ",");
				System.out.print(aWs.getStationAddress() + ",");
				System.out.print(aWs.getLongitude() + ",");
				System.out.print(aWs.getLatitude() + ",");
				System.out.print(aWs.getCountry() + ",");
				System.out.print(aWs.getArea() + ",");
				System.out.print(aWs.getStationImage() + ",");
				System.out.print(aWs.getBusinessHours() + ",");
				System.out.print(aWs.getInsertTimestamp() + ",");
				System.out.print(aWs.getUpdateTimestamp() + ",");
				System.out.print(aWs.getModifyId() + ",");
				System.out.print(aWs.getInsertBy() + ",");
				System.out.print(aWs.getCheckFlag() + ",");
				System.out.print(aWs.getAddStation() + ",");
				System.out.println("---------------------");
			}

	}

}
