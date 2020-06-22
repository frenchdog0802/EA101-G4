package com.bike.store.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.bike.bike.model.BikeService;
import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.store.model.BikeStoreService;
import com.bike.store.model.BikeStoreVO;
import com.bike.store.temporarily.model.BikeStoreAreaModel;
import com.google.gson.Gson;

public class BikeStoreAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");

		if ("searchDate".equals(action)) {
			String startDate = request.getParameter("startDate");
			String endDate = request.getParameter("endDate");
			HashMap<String, Integer> map = new HashMap<>();
			// 單車物件
			BikeService BikeSvc = new BikeService();
			// 租車店家
			BikeStoreService BikeStoreSvc = new BikeStoreService();
			// 訂單明細
			BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
			// 主要訂單
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();

			List<BikeRentMasterVO> BikeRentMasterList = BikeRentMasterSvc.getAll();
			List<BikeRentDetailVO> BikeRentDetailList = BikeRentDetailSvc.getAll();
			List<BikeStoreVO> BikeStoreList = BikeStoreSvc.getAll();

			// 1.找出所有店家編號
			for (BikeStoreVO BikeStoreVO : BikeStoreList) {

				String BikeStoreID = BikeStoreVO.getSq_bike_store_id();// 店家編號

				List<String> BikeSearchMasterList = new ArrayList<>();// 找出rent_master裡面店家有的訂單編號的LIST

				List<BikeRentDetailVO> BikeSearchDetailList = new ArrayList<>();// 找出rent_detail裡面店家有的訂單物件的LIST

				for (BikeRentMasterVO BikeRentMasterVO : BikeRentMasterList) {
					// 2.找出rent_master裡面店家有的訂單編號
					if (BikeRentMasterVO.getSq_bike_store_id().equals(BikeStoreID)) {
						BikeSearchMasterList.add(BikeRentMasterVO.getSq_rent_id());
					}
				}

				// 3.找出rent_detail裡面店家有幾張訂單明細
				for (BikeRentDetailVO BikeRentDetailVO : BikeRentDetailList) {
					for (String BikeSearchId : BikeSearchMasterList) {
						if (BikeSearchId.equals(BikeRentDetailVO.getSq_rent_id())) {
							BikeSearchDetailList.add(BikeRentDetailVO);
						}
					}
				}

				// 印出訂單明細物件店家擁有並開始比對時間
				Integer failMatch = 0;// 比對成功次數
				for (BikeRentDetailVO BikeSearchDetail : BikeSearchDetailList) {
					Date sqlStartDate = new Date(BikeSearchDetail.getRsved_rent_date().getTime()); // timeStamp轉換成util.Date
					Date sqlEndDate = new Date(BikeSearchDetail.getEx_return_date().getTime());
					// 開始比對時間simpleFormat
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH");
					try {
						Date inputStartDate = sdf.parse(startDate);
						Date inputEndDate = sdf.parse(endDate);
						if (!(inputStartDate.before(sqlStartDate) && inputEndDate.before(sqlStartDate))) {
							if (!(inputStartDate.after(sqlEndDate) && inputEndDate.after(sqlEndDate))) {
								failMatch++;
							}
							;
						}
					} catch (ParseException e) {
						e.printStackTrace();
					}
				}
				Integer Bike = BikeSvc.findStoreBikeEmpty(BikeStoreID);
				Integer matchBike = Bike - failMatch;
				// System.out.println(BikeStoreVO.getBike_store_name()+":"+matchBike+"輛");
				map.put(BikeStoreVO.getBike_store_name(), matchBike);
			}
			;

			JSONObject responseJSONObject = new JSONObject(map);
			out.println(responseJSONObject);
		}
		
		
		
		if("searchArea".equals(action)) {
			
			String area = request.getParameter("area");
			// 租車店家
			
			HashMap<String, List>  map = new HashMap<>();
			BikeService bikeSvc = new BikeService();
			BikeStoreService BikeStoreSvc = new BikeStoreService();
			//暫存的model 傳回前端頁面
			List<BikeStoreAreaModel> BikeStoreReturnList = new ArrayList<>();
			List<BikeStoreVO> BikeStorelist = BikeStoreSvc.getAll();
			for(BikeStoreVO BikeStoreVO : BikeStorelist) {
				if(area.equals(BikeStoreVO.getArea())) {
					BikeStoreAreaModel bsa = new BikeStoreAreaModel();
					bsa.setBike_store_name(BikeStoreVO.getBike_store_name());
					bsa.setLocation(BikeStoreVO.getLocation());
					bsa.setPhone(BikeStoreVO.getPhone());
					bsa.setStore_opentime(BikeStoreVO.getStore_opentime());
					//找出空車
					bsa.setEmpty_bike(bikeSvc.findStoreBikeEmpty(BikeStoreVO.getSq_bike_store_id()));
					BikeStoreReturnList.add(bsa);
				}
			}
			map.put("returnValue",BikeStoreReturnList );
			JSONObject responseJSONObject = new JSONObject(map);
			out.println(responseJSONObject);
		}

	}

}
