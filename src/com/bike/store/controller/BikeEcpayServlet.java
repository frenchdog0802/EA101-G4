package com.bike.store.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.store.model.BikeStoreVO;
import com.bike.type.model.BikeTypeService;


import ecpay.payment.integration.AllInOneService;
import ecpay.payment.integration.domain.AioCheckOutOneTime;
import redis.clients.jedis.Jedis;



public class BikeEcpayServlet extends HttpServlet {
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
		String action = request.getParameter("action"); // 網頁指定訊息
		HttpSession session = request.getSession();

		if ("pay".equals(action)) {
			
			//創建redis連線
			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");
			// 接收參數
// 取得session會員編號
			String memNo = "910001";
			String memName = "peter";
			String memPhone = "0987654321";
			// 建立商品描述
			String startDate = (String) session.getAttribute("startDate");
			String endDate = (String) session.getAttribute("endDate");
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			StringBuilder items = new StringBuilder();
			items.append("取車日期 : " + startDate);
			items.append("#");
			items.append("還車日期 : " + endDate);
			items.append("#");
			HashMap<String, Integer> bookMap = (HashMap<String, Integer>) session.getAttribute("bookMap");
			for (Map.Entry<String, Integer> entry : bookMap.entrySet()) {
				String bikeTypeName = bikeTypeSvc.findByPrimaryKey(entry.getKey()).getBike_type_name();
				items.append(bikeTypeName);
				items.append(entry.getValue() + "台");
				items.append("#");
			}
			// 取得訂單編號+1
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
			String sq_rent_id = BikeRentMasterSvc.getCurrentKeys();
			String sq_rent_idNum = null;
			String sq_rent_idStr = null;
			int j = sq_rent_id.indexOf("X");
			sq_rent_idStr = sq_rent_id.substring(0, j + 1);
			sq_rent_idNum = Integer.toString(new Integer(sq_rent_id.substring(j + 1)) + 1);
			StringBuilder sb = new StringBuilder();// 串接回來
			sb.append(sq_rent_idStr);
			sb.append(sq_rent_idNum);
			sq_rent_id = sb.toString();
			// 商店VO
			BikeStoreVO BikeStoreVO = (BikeStoreVO) session.getAttribute("BikeStoreVO");
			// 交易日期
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String formatstr = sdf.format(date);
			// 金額
			String totalPrice = request.getParameter("totalPrice");

			// 串接金流
			AioCheckOutOneTime obj = new AioCheckOutOneTime();
//			商店id
			obj.setStoreID(BikeStoreVO.getSq_bike_store_id());
//			訂單編號
			obj.setMerchantTradeNo(sq_rent_id);
					
//			設定MerchantTradeDate 合作特店交易時間
			obj.setMerchantTradeDate(formatstr);
//			設定TotalAmount 交易金額
			obj.setTotalAmount(totalPrice);
//			設定ItemName 商品名稱
			obj.setItemName(items.toString());
//			設定交易訊息
			obj.setTradeDesc("支付信用卡");
//			設定ReturnURL 付款完成通知回傳網址 使用  ngrok.io
			String returnURL = "https://eb6991ef1481.ngrok.io/EA101_G4/bike/BikeEcpayServlet.do";
			obj.setReturnURL(returnURL);
//			設定ClientBackURL Client端返回合作特店系統的按鈕連結
			String clientBackURL = "https://eb6991ef1481.ngrok.io/EA101_G4/front-end/bike/bikeStoreList.jsp?action=payFinish";
			obj.setClientBackURL(clientBackURL);
//			設定OrderResultURL Client端回傳付款結果網址 跟ReturnURL二選一
//			obj.setOrderResultURL(clientBackURL);
//			設定NeedExtraPaidInfo 是否需要額外的付款資訊 
			obj.setNeedExtraPaidInfo("N");
//			setRedeem是否使用紅利折抵
			obj.setRedeem("N");
//			設定自訂回傳訊息 controller接收action
			obj.setCustomField1("returnMsg");
			obj.setCustomField2(startDate+"#"+endDate);
			
			
			//其他資料存入redis
			jedis.set("bookMap",bookMap.toString());
			jedis.set("memNo",memNo);
			jedis.set("memName",memName);
			jedis.set("memPhone",memPhone);
			
			

			AllInOneService allInOneSvc = new AllInOneService();
			String form = allInOneSvc.aioCheckOut(obj, null);
			out.println(form);
		}

		
		// 綠界回傳交易訊息(自訂)
		String CustomField1 = request.getParameter("CustomField1"); 
		if ("returnMsg".equals(CustomField1)) {

			BikeTypeService bikeTypeSvc = new BikeTypeService();
			//創建redis連線
			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");
			

//			MerchantID 特店編號                       2000132 String MerchantID = request.getParameter("MerchantID");
//			MerchantTradeNo 特店交易編號    RT-600001
//			StoreID 特店旗下店舖代號		  620001
//			Int	RtnCode  交易狀態 	      1
//			RtnMsg 交易訊息			  交易成功
//			TradeNo  綠界交易編號			2006291129266663
//			Int	TradeAmt  交易金額			900
//			PaymentDate 付款時間 			2020/06/29 11:17:04 String PaymentDate = request.getParameter("PaymentDate");
//			PaymentType 特店選擇的付款方式	Credit_CreditCard	String PaymentType = request.getParameter("PaymentType");
//			TradeDate 訂單成立時間			2020/06/29 11:15:38 String TradeDate = request.getParameter("TradeDate");
			 System.out.println("--------------request----------------");
			Enumeration<String> parameterNames = request.getParameterNames();
	        while (parameterNames.hasMoreElements()) {
	            String paramName = parameterNames.nextElement();
	            String[] paramValues = request.getParameterValues(paramName);
	            for (int i = 0; i < paramValues.length; i++) {
	                String paramValue = paramValues[i];
	                System.out.println(paramName);
	                System.out.println(paramValue);
	            }
	 
	        }
	    	
	        
		
		// 接受參數回傳取需要參數
	    String memNo = jedis.get("memNo");
	    String memName = jedis.get("memName");
	    String memPhone = jedis.get("memPhone");
	    
		String MerchantTradeNo = request.getParameter("MerchantTradeNo");//request.getParameter("MerchantTradeNo");
		String StoreID = request.getParameter("StoreID");
		Integer RtnCode = Integer.parseInt(request.getParameter("RtnCode"));
		Integer TradeAmt = Integer.parseInt(request.getParameter("TradeAmt"));
		String TradeNo = request.getParameter("TradeNo");
		
		//map.toString
		String CustomField3 = jedis.get("bookMap");
		Map<String , String > bookMap =  stringToMap(CustomField3);
		
		//處理日期
		//date#date
		String CustomField2 = request.getParameter("CustomField2");
		String startDate = null;
		String endDate = null;
		int j = CustomField2.indexOf("#");
		startDate = CustomField2.substring(0,j);
		endDate =  CustomField2.substring(j+1);

		// 新增到訂單
		BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
		BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
		BikeRentMasterVO.setSq_rent_id(MerchantTradeNo);
		BikeRentMasterVO.setSq_member_id(memNo);
		BikeRentMasterVO.setSq_bike_store_id(StoreID);
		BikeRentMasterVO.setRent_payment(RtnCode);
		BikeRentMasterVO.setOd_total_price(TradeAmt);
		BikeRentMasterVO.setRent_name(memName);
		BikeRentMasterVO.setRent_phone(memPhone);
		BikeRentMasterVO.setTradeno(TradeNo);
		BikeRentMasterVO.setRent_od_status(0);

		// 同時新增到明細
		List<BikeRentDetailVO> list = new ArrayList<>();
		// 取得購物車商品

		for (Map.Entry<String, String> entry : bookMap.entrySet()) {
			BikeRentDetailVO BikeRentDetailVO = new BikeRentDetailVO();
			String sq_bike_type_id = entry.getKey().trim();
			int num = new Integer(entry.getValue());
			for (int i = 0; i < num; i++) {
				BikeRentDetailVO.setSq_rent_id(MerchantTradeNo);
				BikeRentDetailVO.setSq_bike_type_id(sq_bike_type_id);
				// 新增金額
				int dailyPrice = 0;
				int hourlyPrice = 0;
				try {
					dailyPrice = bikeTypeSvc.findByPrimaryKey(sq_bike_type_id).getBike_daily_price();
					hourlyPrice = bikeTypeSvc.findByPrimaryKey(sq_bike_type_id).getBike_hourly_price();
				}catch(NullPointerException ce) {
					if(dailyPrice == 0 ) dailyPrice =0;
					if(hourlyPrice == 0 ) hourlyPrice =0;
				};
				int price = getPrice(dailyPrice, hourlyPrice, startDate, endDate);
				BikeRentDetailVO.setPrice(price);
				BikeRentDetailVO.setExtra_cost(0);
				// 新增日期
				BikeRentDetailVO.setRsved_rent_date(java.sql.Timestamp.valueOf(startDate+":00"));
				BikeRentDetailVO.setEx_return_date(java.sql.Timestamp.valueOf(endDate+":00"));
				list.add(BikeRentDetailVO);
			}
		}

		BikeRentMasterSvc.insertWithDetail(BikeRentMasterVO, list);
	}

	}

	// 取得單張明細金額
	public Integer getPrice(Integer Dailyprice, Integer Hourlyprice, String StartDate, String EndDate) {
		Integer cost = 0;

		// 處理時間計算
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		// 計算小時差
		int days = 0;
		int hours = 0;
		try {
			Date startDateft = simpleDateFormat.parse(StartDate);
			Date endDateft = simpleDateFormat.parse(EndDate);
			long startDate = startDateft.getTime();
			long endDate = endDateft.getTime();
			// 天數計算
			days = (int) ((endDate - startDate) / (1000 * 60 * 60 * 24));
			// 小時計算
			hours = (int) ((endDate - startDate) / (1000 * 60 * 60));

			// 逾6小時以上者，以一日租金計算
			if (days > 1) {
				hours = 0;
			} else if (hours < 7) {
				days = 0;
			} else {
				days = 1;
				hours = 0;
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		cost = (Dailyprice * days + Hourlyprice * hours);
		return cost;
	}
	
	public Map<String , String> stringToMap(String MapString){
		int s1 = MapString.indexOf("{");
		String reg1 = MapString.substring(s1+1);
		int s2 = reg1.indexOf("}");
		String reg2 = reg1.substring(0,s2);
	
		Map<String, String> reconstructedUtilMap = Arrays.stream(reg2.split(","))
	            .map(s -> s.split("="))
	            .collect(Collectors.toMap(s -> s[0], s -> s[1]));
		
		return reconstructedUtilMap;
	}

}
