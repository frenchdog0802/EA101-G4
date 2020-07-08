package com.bike.rent.detail.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.bike.bike.model.BikeService;
import com.bike.bike.model.BikeVO;
import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.type.model.BikeTypeService;
import com.google.gson.Gson;

public class BikeRentDetailServlet extends HttpServlet {
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
		HttpSession session = request.getSession();
		
		// initResv
		if ("initResv".equals(action)) {
//上限改成session 取得店家id資料			
			String sq_bike_store_id = "620001";
			
			
			//取訂單編號 如果是空值去session取  如果不是存進去
			String sq_rent_id_Resv=null;
			String sq_rent_id = request.getParameter("sq_rent_id");
			if(sq_rent_id==null) {
				sq_rent_id_Resv = (String)session.getAttribute("sq_rent_id");
			}else {
				sq_rent_id_Resv = sq_rent_id;
				session.setAttribute("sq_rent_id", sq_rent_id);
			}
			
			
			
			
//			String sq_rent_id = "RTX6987656";
			// 取得初始參數
			BikeRentMasterService bikeRentMasterSvc = new BikeRentMasterService();// 先採取一張這個用不到
			BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			BikeService bikeSvc = new BikeService();
			List<BikeVO> bikeVOList = bikeSvc.getAll();
			List<BikeVO> storeBikeList = new ArrayList<>();
			// 先撈出店家車輛
			storeBikeList = bikeVOList.stream().filter(p -> p.getSq_bike_store_id().equals(sq_bike_store_id))
					.collect(Collectors.toList());

// 找出是這間店的訂單 //要改成連結過來
			// 所有訂單明細編號
			List<BikeRentDetailVO> bikeRentDetailList = bikeRentDetailSvc.getAll();

			// 找出這間店訂單明細VO 裝入list
			LinkedList<BikeRentDetailVO> storeRetailVOList = new LinkedList<>();

			for (BikeRentDetailVO BikeRentDetailVO : bikeRentDetailList) {
//					這間店的訂單編號 比對所有訂單明細編號 && 單車為空值
				if (sq_rent_id_Resv.equals(BikeRentDetailVO.getSq_rent_id()) && BikeRentDetailVO.getSq_bike_id() == null) {
					// 取消車輛不顯示
					if (!(BikeRentDetailVO.getSq_bike_type_id().equals("639999"))) {
						// 裝入比對到的單車車輛車種到這個list
						List<String> bikeTypeList = new ArrayList<>();
						for (BikeVO BikeVO : storeBikeList) {
							if (BikeRentDetailVO.getSq_bike_type_id().equals(BikeVO.getSq_bike_type_id())) {
								bikeTypeList.add(BikeVO.getSq_bike_id());
							}
						}
						// 把map裝入
						BikeRentDetailVO.setBikeTypeList(bikeTypeList);
						// 裝入車種名稱
						BikeRentDetailVO.setBikeTypeName(bikeTypeSvc
								.findByPrimaryKey(BikeRentDetailVO.getSq_bike_type_id()).getBike_type_name());
						storeRetailVOList.add(BikeRentDetailVO);
					}
				}

			}
			;
			Collections.sort(storeRetailVOList);
			// 傳回的JSON
			HashMap initMap = new HashMap();
			initMap.put("returnList", storeRetailVOList);
			JSONObject initJSONObject = new JSONObject(initMap);
			out.println(initJSONObject);
//			request.setAttribute("storeRetailVOList", storeRetailVOList);
//			RequestDispatcher successView = request.getRequestDispatcher("/back-end/bike/bikeDetailResv.jsp");
//			successView.forward(request, response);
		}

		// 取消單車
		if ("deleteBike".equals(action)) {
			// 取訂單明細編號
			String sq_rent_detail_id = request.getParameter("sq_rent_detail_id");
			// 修改明細 新增單車物件
			BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();
			BikeRentDetailVO BikeRentDetailVO = bikeRentDetailSvc.findByPrimaryKey(sq_rent_detail_id);
			BikeRentDetailVO.setSq_bike_type_id("639999");
			bikeRentDetailSvc.update(BikeRentDetailVO);
		}

		// 接收單車進行修改
		if ("submitBike".equals(action)) {
			String jsonStr = request.getParameter("jsonStr");
			String sq_rent_id = request.getParameter("sq_rent_id");

			BikeRentMasterService bikeRentMasterSvc = new BikeRentMasterService();
			BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();

			// 處理json資料
			try {
				JSONObject BikeorderObj = new JSONObject(jsonStr.trim());
				Iterator<String> keys = BikeorderObj.keys();
				while (keys.hasNext()) {
					String sq_rent_detail_id = keys.next();// 取出key sq_rent_detail_id
					String sq_bike_id = (String) BikeorderObj.get(sq_rent_detail_id);// 取出value sq_bike_id

					// 進行明細update
					BikeRentDetailVO BikeRentDetailVO = bikeRentDetailSvc.findByPrimaryKey(sq_rent_detail_id);
					BikeRentDetailVO.setSq_bike_id(sq_bike_id);
					bikeRentDetailSvc.update(BikeRentDetailVO);
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}

			// 訂單mater資訊更新
			BikeRentMasterVO BikeRentMasterVO = bikeRentMasterSvc.findByPrimaryKey(sq_rent_id);
			BikeRentMasterVO.setRent_od_status(1);
			bikeRentMasterSvc.update(BikeRentMasterVO);

		}
//ExPage------------------------------------------------------------------------------------------------------------------
		// initEx
		if ("initEx".equals(action)) {
			// 上限改成session 取得店家id資料
			String sq_bike_store_id = "620001";
			// 取得初始參數
			BikeRentMasterService bikeRentMasterSvc = new BikeRentMasterService();
			BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			// 找出是這間店的訂單
			List<String> storeRentIdList = bikeRentMasterSvc.getRentMasterIdIsVaild(sq_bike_store_id, 1);
			// 所有訂單明細編號
			List<BikeRentDetailVO> bikeRentDetailList = bikeRentDetailSvc.getAll();

			// 找出這間店訂單明細VO 裝入list
			LinkedList<BikeRentDetailVO> storeRetailVOList = new LinkedList<>();

			for (BikeRentDetailVO BikeRentDetailVO : bikeRentDetailList) {
				for (String storeRentId : storeRentIdList) {
					if (BikeRentDetailVO.getSq_rent_id().equals(storeRentId)
							&& BikeRentDetailVO.getSq_bike_id() != null) {
						// 裝入車種名稱
						BikeRentDetailVO.setBikeTypeName(bikeTypeSvc
								.findByPrimaryKey(BikeRentDetailVO.getSq_bike_type_id()).getBike_type_name());
						storeRetailVOList.add(BikeRentDetailVO);
					}
				}
			}
			Collections.sort(storeRetailVOList);
			// 傳回的JSON
			HashMap initMap = new HashMap();
			initMap.put("returnList", storeRetailVOList);
			JSONObject initJSONObject = new JSONObject(initMap);
			out.println(initJSONObject);
		}
		
//MasterPage------------------------------------------------------------------------------------------------------------------
		if ("initMaster".equals(action)) {
			// 上限改成session 取得店家id資料
			String sq_bike_store_id = "620001";
			// 取得初始參數
			BikeRentMasterService bikeRentMasterSvc = new BikeRentMasterService();
			BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			// 找出是這間店的訂單
			List<BikeRentMasterVO> storeRentList = bikeRentMasterSvc.getAll();
			List<BikeRentMasterVO> storeMaster = null;
			storeMaster = storeRentList.stream().filter(p -> p.getSq_bike_store_id().equals(sq_bike_store_id))
					.collect(Collectors.toList());
			
			HashMap map = new HashMap();
			map.put("storeMaster",storeMaster);
			JSONObject responseJson = new JSONObject(map);
			out.println(responseJson);
		}
	}
}
//訂單編號
//車種
//車輛編號
//還車狀態
//時間
//確認車輛
