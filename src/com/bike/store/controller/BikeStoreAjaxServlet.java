package com.bike.store.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

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
import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.store.model.BikeStoreDAO;
import com.bike.store.model.BikeStoreService;
import com.bike.store.model.BikeStoreVO;
import com.bike.store.temporarily.model.BikeStoreAreaModel;
import com.bike.type.model.BikeTypeService;
import com.bike.type.model.BikeTypeVO;
import com.google.gson.Gson;

public class BikeStoreAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");

		if ("searchDate".equals(action)) {
			String startDate = request.getParameter("startDate");
			String endDate = request.getParameter("endDate");
			HashMap<String, Integer> map = new HashMap<>();
			// 租車店家
			BikeStoreService BikeStoreSvc = new BikeStoreService();

			List<BikeStoreVO> BikeStoreList = BikeStoreSvc.getAll();

			// 1.找出所有店家編號
			for (BikeStoreVO BikeStoreVO : BikeStoreList) {

				String BikeStoreID = BikeStoreVO.getSq_bike_store_id();// 店家編號
				Integer matchBike = findDateEmptyBike(startDate, endDate, BikeStoreID);

				map.put(BikeStoreVO.getBike_store_name(), matchBike);
			}
			;

			JSONObject responseJSONObject = new JSONObject(map);
			out.println(responseJSONObject);
		}

		if ("searchArea".equals(action)) {

			String area = request.getParameter("area");
			// 租車店家

			HashMap<String, List<BikeStoreAreaModel>> map = new HashMap<>();
			BikeService bikeSvc = new BikeService();
			BikeStoreService BikeStoreSvc = new BikeStoreService();
			// 暫存的model 傳回前端頁面
			List<BikeStoreAreaModel> BikeStoreReturnList = new ArrayList<>();
			List<BikeStoreVO> BikeStorelist = BikeStoreSvc.getAll();
			for (BikeStoreVO BikeStoreVO : BikeStorelist) {
				if (area.equals(BikeStoreVO.getArea())) {
					BikeStoreAreaModel bsa = new BikeStoreAreaModel();
					bsa.setBike_store_name(BikeStoreVO.getBike_store_name());
					bsa.setLocation(BikeStoreVO.getLocation());
					bsa.setPhone(BikeStoreVO.getPhone());
					bsa.setStore_opentime(BikeStoreVO.getStore_opentime());
					// 找出空車
					bsa.setEmpty_bike(bikeSvc.findStoreBikeEmpty(BikeStoreVO.getSq_bike_store_id()));
					BikeStoreReturnList.add(bsa);
				}
			}
			map.put("returnValue", BikeStoreReturnList);
			JSONObject responseJSONObject = new JSONObject(map);
			out.println(responseJSONObject);
		}

		if ("confirm".equals(action)) {
			// 接收參數
			String sq_bike_store_id = request.getParameter("sq_bike_store_id");
			String startDate = request.getParameter("startDate");
			String endDate = request.getParameter("endDate");
			String matchBike = request.getParameter("matchBike");

			// 查詢資料
			BikeStoreService BikeStoreSvc = new BikeStoreService();
			BikeStoreVO BikeStoreVO = BikeStoreSvc.findByPrimaryKey(sq_bike_store_id);
			session.setAttribute("BikeStoreVO", BikeStoreVO);
			session.setAttribute("startDate", startDate);
			session.setAttribute("endDate", endDate);
			session.setAttribute("matchBike", matchBike);
			out.println(request.getContextPath() + "/front-end/bike/rentMaster.jsp");
		}

		// 找出目前商家的車種有幾台可以租
		if ("findTypeQuantity".equals(action)) {
			// 取參數
			String sq_bike_type_id = request.getParameter("bikeTypeId");
			String startDate = (String) session.getAttribute("startDate");
			String endDate = (String) session.getAttribute("endDate");

			BikeStoreVO BikeStoreVO = (BikeStoreVO) session.getAttribute("BikeStoreVO");
			BikeService BikeSvc = new BikeService();

			// 找出這店家擁有這車種的所有車輛
			String sq_bike_store_id = BikeStoreVO.getSq_bike_store_id();
			Integer allBike = BikeSvc.findBikeTypeAndStore(sq_bike_store_id, sq_bike_type_id);

			// 找出訂單master裡面商家的訂單編號
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
			BikeRentDetailService BikeDetailSvc = new BikeRentDetailService();
			List<String> BikeSearchMasterList = BikeRentMasterSvc.getRentMasterId(sq_bike_store_id);

			// 找出明細裡面商家擁有的車種
			Integer failMatch = 0;
			for (String sq_rent_id : BikeSearchMasterList) {
				List<BikeRentDetailVO> BikeDetailVOlist = BikeDetailSvc.getDetail(sq_rent_id, sq_bike_type_id);
				// 比對每張訂單
				for (BikeRentDetailVO BikeRentDetailVO : BikeDetailVOlist) {
					// 取出日期
					Date sqlStartDate = new Date(BikeRentDetailVO.getRsved_rent_date().getTime()); // timeStamp轉換成util.Date
					Date sqlEndDate = new Date(BikeRentDetailVO.getEx_return_date().getTime());
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
			}

			// bikeSum結果車輛數
			Integer bikeSum = allBike - failMatch;
			BikeTypeService BikeTypeSvc = new BikeTypeService();
			BikeTypeVO BikeTypeVO = BikeTypeSvc.findByPrimaryKey(sq_bike_type_id);
			// VO to String
			Gson gson = new Gson();
			String BikeTypeVOStr = gson.toJson(BikeTypeVO);
			// 建構回傳JSON
			HashMap<String, String> userMap = new HashMap<>();
			userMap.put("bikeSum", Integer.toString(bikeSum));
			userMap.put("BikeTypeVOStr", BikeTypeVOStr);
			JSONObject reponseJSONObject = new JSONObject(userMap);
			out.println(reponseJSONObject);

		}

		// 加入清單
		
		if ("btn-add".equals(action)) {
			String selectBikeQuantity = request.getParameter("selectBikeQuantity");
			String selectBikeType = request.getParameter("selectBikeType");
			HashMap<String, String> errorMsg = new HashMap<>();
			//錯誤處理
			Integer parseIntQuantity;
			try {
				parseIntQuantity = Integer.parseInt(selectBikeQuantity);
			} catch (NumberFormatException nce) {
				errorMsg.put("parseIntQuantity", "請選擇數量");
				JSONObject reponseJSONObject = new JSONObject(errorMsg);
				out.println(reponseJSONObject);
				return;
			}
			
			
			
			//取session map 存入(商品租車)清單
			LinkedHashMap<String, Integer> bookMap  = (LinkedHashMap<String, Integer>)session.getAttribute("bookMap");
			if(bookMap==null) {
				bookMap = new LinkedHashMap<>();
			}
			bookMap.put(selectBikeType ,parseIntQuantity );
			session.setAttribute("bookMap", bookMap);

		}

		// 結帳前確認
		if ("bookNow".equals(action)) {
			
			//處理時間計算
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
			//計算小時差
			int days = 0;
			int hours = 0 ;
			try {
				Date startDateft = simpleDateFormat.parse((String)session.getAttribute("startDate"));
				Date endDateft = simpleDateFormat.parse((String)session.getAttribute("endDate"));
				long startDate = startDateft.getTime();
				long endDate = endDateft.getTime();
				//天數計算
				days = (int) ((endDate - startDate) / (1000 * 60 * 60 * 24));
				//小時計算
				hours =  (int) ((endDate - startDate) / (1000 * 60 * 60 ));
				
				
				//逾6小時以上者，以一日租金計算
				if(days>1) {
					hours = 0;
				}else if(hours<7) {
					days = 0;
				}else {
					days = 1;
					hours = 0;
				}	
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			//計算租金 取出清單明細
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			int total = 0; //租金
			HashMap<String, Integer> bookMap = (HashMap<String, Integer>)session.getAttribute("bookMap");
			for (Entry<String, Integer> entry : bookMap.entrySet()) {    
				String sq_bike_type_id = entry.getKey();
				int bikequantity = entry.getValue();
				int dailyPrice = bikeTypeSvc.findByPrimaryKey(sq_bike_type_id).getBike_daily_price();
				int hourlyPrice = bikeTypeSvc.findByPrimaryKey(sq_bike_type_id).getBike_hourly_price();
				total+= (dailyPrice*days + hourlyPrice*hours)*bikequantity;
				  }    
			
			request.setAttribute("days", days);
			request.setAttribute("hours", hours);
			request.setAttribute("totalPrice", total);
			RequestDispatcher successView = request.getRequestDispatcher("/front-end/bike/detail.jsp");
			successView.forward(request, response);
		}

	}// doPost end

	public Integer findDateEmptyBike(String startDate, String endDate, String BikeStoreID) {
		// 單車物件
		BikeService BikeSvc = new BikeService();
		// 訂單明細
		BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
		// 主要訂單
		BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
		List<BikeRentDetailVO> BikeRentDetailList = BikeRentDetailSvc.getAll();
		List<String> BikeSearchMasterList = null; // 裝入rent_master裡面店家有的訂單編號的LIST
		List<BikeRentDetailVO> BikeSearchDetailList = new ArrayList<>();// 裝入rent_detail裡面店家有的訂單物件的LIST

		// 2.找出rent_master裡面店家有的訂單編號
		BikeSearchMasterList = BikeRentMasterSvc.getRentMasterId(BikeStoreID);

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
		return matchBike;
	}

}
