package com.bike.rent.master.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.store.model.BikeStoreService;
import com.member.model.MemVO;

public class BikeRentMasterServlet extends HttpServlet {
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
		
		//查看會員清單
		if("memberOrderInit".equals(action)) {
			//取得會員編號
			MemVO  MemVO = (MemVO)session.getAttribute("MemVO");
			String sq_member_id = MemVO.getSq_member_id();
			//取得會員訂單
			BikeStoreService BikeStoreService = new BikeStoreService();
			BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
			List<BikeRentMasterVO> BikeRentMasterVOList = BikeRentMasterSvc.getAll();
			
			List<BikeRentMasterVO> memberMasterList =  BikeRentMasterVOList.stream()
													.filter(e->e.getSq_member_id().equals(sq_member_id))
													.filter(e->e.getRent_od_status()==0)
													.collect(Collectors.toList());
			//取得會員訂單明細
			List<BikeRentDetailVO> BikeRentDetailVOList = BikeRentDetailSvc.getAll();
///			裝入要回傳的SET
			Integer count = 0;
			Map returnMap = new LinkedHashMap<>();
			for(BikeRentMasterVO BikeRentMasterVO : memberMasterList) {
				Map valueMap = new LinkedHashMap<>();
				//計算有幾筆
				Integer total = 0; 
				for(BikeRentDetailVO BikeRentDetailVO : BikeRentDetailVOList) {
					if(BikeRentMasterVO.getSq_rent_id().equals(BikeRentDetailVO.getSq_rent_id())) {
						//裝入店家名稱
						String sq_bike_store_id = BikeRentMasterVO.getSq_bike_store_id();
						valueMap.put("Sq_rent_id",BikeRentMasterVO.getSq_rent_id());
						valueMap.put("bike_store_name",BikeStoreService.findByPrimaryKey(sq_bike_store_id).getBike_store_name());
						valueMap.put("Rsved_rent_date",BikeRentDetailVO.getRsved_rent_date());
						valueMap.put("Ex_return_date",BikeRentDetailVO.getEx_return_date());
						valueMap.put("Od_total_price",BikeRentMasterVO.getOd_total_price());
						total++;
					}
				}
				valueMap.put("total",total);
				returnMap.put(count,valueMap);
				count++;
			}
			//包裝成JSON回傳
			JSONObject returnObj = new JSONObject(returnMap);
			out.println(returnObj);
		}
		
		if("memberCancel".equals(action)) {
			//接收參數
			String sq_rent_id = request.getParameter("Sq_rent_id");
			//呼叫service進行 修改狀態
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
			BikeRentMasterVO BikeRentMasterVO = BikeRentMasterSvc.findByPrimaryKey(sq_rent_id);
			BikeRentMasterVO.setRent_od_status(2);
			BikeRentMasterSvc.update(BikeRentMasterVO);
		}
		
		if("memberOrderAllInit".equals(action)) {
			//取得會員編號
			MemVO  MemVO = (MemVO)session.getAttribute("MemVO");
			String sq_member_id = MemVO.getSq_member_id();
			//取得會員訂單
			BikeStoreService BikeStoreService = new BikeStoreService();
			BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
			List<BikeRentMasterVO> BikeRentMasterVOList = BikeRentMasterSvc.getAll();
			
			List<BikeRentMasterVO> memberMasterList =  BikeRentMasterVOList.stream()
													.filter(e->e.getSq_member_id().equals(sq_member_id))
													.filter(e->e.getRent_od_status()!=0)
													.collect(Collectors.toList());
			//取得會員訂單明細
			List<BikeRentDetailVO> BikeRentDetailVOList = BikeRentDetailSvc.getAll();
///			裝入要回傳的SET
			Integer count = 0;
			Map returnMap = new LinkedHashMap<>();
			for(BikeRentMasterVO BikeRentMasterVO : memberMasterList) {
				Map valueMap = new LinkedHashMap<>();
				//計算有幾筆
				Integer total = 0; 
				for(BikeRentDetailVO BikeRentDetailVO : BikeRentDetailVOList) {
					if(BikeRentMasterVO.getSq_rent_id().equals(BikeRentDetailVO.getSq_rent_id())) {
						//裝入店家名稱
						String sq_bike_store_id = BikeRentMasterVO.getSq_bike_store_id();
						valueMap.put("Sq_rent_id",BikeRentMasterVO.getSq_rent_id());
						valueMap.put("bike_store_name",BikeStoreService.findByPrimaryKey(sq_bike_store_id).getBike_store_name());
						valueMap.put("Rsved_rent_date",BikeRentDetailVO.getRsved_rent_date());
						valueMap.put("Ex_return_date",BikeRentDetailVO.getEx_return_date());
						valueMap.put("Od_total_price",BikeRentMasterVO.getOd_total_price());
						valueMap.put("Od_rent_status",BikeRentMasterSvc.getOd_rent_statusStr(BikeRentMasterVO.getRent_od_status()));
						total++;
					}
				}
				valueMap.put("total",total);
				returnMap.put(count,valueMap);
				count++;
			}
			//包裝成JSON回傳
			JSONObject returnObj = new JSONObject(returnMap);
			out.println(returnObj);
		}
	}

}
