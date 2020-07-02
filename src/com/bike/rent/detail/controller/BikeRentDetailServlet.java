package com.bike.rent.detail.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.bike.bike.model.BikeService;
import com.bike.bike.model.BikeVO;
import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
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
		Gson gson = new Gson();

		// initpage
		if ("initList".equals(action)) {
//上限改成session 取得店家id資料			
			String sq_bike_store_id = "620001";
			// 取得初始參數
			BikeRentMasterService bikeRentMasterSvc = new BikeRentMasterService();
			BikeRentDetailService bikeRentDetailSvc = new BikeRentDetailService();
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			BikeService bikeSvc = new BikeService();
			List<BikeVO> bikeVOList = bikeSvc.getAll();
			List<BikeVO> storeBikeList = new ArrayList<>();
			// 先撈出店家車輛
			storeBikeList = bikeVOList.stream().filter(p -> p.getSq_bike_store_id().equals(sq_bike_store_id))
					.collect(Collectors.toList());

			// 找出是這間店的訂單
			List<String> storeRentIdList = bikeRentMasterSvc.getRentMasterId(sq_bike_store_id);

			// 所有訂單明細編號
			List<BikeRentDetailVO> bikeRentDetailList = bikeRentDetailSvc.getAll();
			
			// 找出這間店訂單明細VO 裝入list
			LinkedList<BikeRentDetailVO> storeRetailVOSet = new LinkedList<>();
			
			for (BikeRentDetailVO BikeRentDetailVO : bikeRentDetailList) {
				for (String storeRentId : storeRentIdList) {
					if (storeRentId.equals(BikeRentDetailVO.getSq_rent_id())) {
						// 裝入比對到的單車車輛車種到這個list
						List<String> bikeTypeList = new ArrayList<>();
						for (BikeVO BikeVO : storeBikeList) {
							if (BikeRentDetailVO.getSq_bike_type_id().equals(BikeVO.getSq_bike_type_id())) {
								bikeTypeList.add(BikeVO.getSq_bike_id());
							}
						}
						//把map裝入
						BikeRentDetailVO.setBikeTypeList(bikeTypeList);
						//裝入車種名稱
						BikeRentDetailVO.setBikeTypeName(bikeTypeSvc.findByPrimaryKey(BikeRentDetailVO.getSq_bike_type_id()).getBike_type_name());
						storeRetailVOSet.add(BikeRentDetailVO);
					}
				}
			};
			Collections.sort(storeRetailVOSet);
			//傳回的JSON
			HashMap initMap = new HashMap();
			initMap.put("returnList",storeRetailVOSet);
			JSONObject initJSONObject = new JSONObject(initMap);
			session.setAttribute("initJSONObject", initJSONObject);
			out.println(initJSONObject);
		}
	}
}
