package com.bike.store.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.store.model.BikeStoreVO;
import com.bike.type.model.BikeTypeService;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutOneTime;

public class BikeEcpayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		if("pay".equals(action)) {
			
			//接收參數

			//建立商品描述
			String startDate  = (String)session.getAttribute("startDate");
			String endDate  = (String)session.getAttribute("endDate");
			BikeTypeService bikeTypeSvc = new BikeTypeService();
			StringBuilder items = new StringBuilder();
			items.append("取車日期 : "+startDate);
			items.append("#");
			items.append("還車日期 : "+endDate);
			items.append("#");
			TreeMap<String, Integer> bookMap  = (TreeMap<String, Integer>)session.getAttribute("bookMap");
			for(Map.Entry<String,Integer>entry : bookMap.entrySet()) {
				String bikeTypeName = bikeTypeSvc.findByPrimaryKey(entry.getKey()).getBike_type_name();
				items.append(bikeTypeName);
				items.append(entry.getValue()+"台");
				items.append("#");
			}
			//商店VO
			BikeStoreVO BikeStoreVO = (BikeStoreVO)session.getAttribute("BikeStoreVO");
			//交易日期
			Date date  = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String formatstr = sdf.format(date);
			//金額
			String totalPrice = request.getParameter("totalPrice");
			
			//串接金流
			AllInOne all = new AllInOne("");
			AioCheckOutOneTime obj = new AioCheckOutOneTime();
			//商店id
			obj.setStoreID(BikeStoreVO.getSq_bike_store_id());
			//訂單編號
			obj.setMerchantTradeNo("testCompany881010");
//			設定MerchantTradeDate 合作特店交易時間
			obj.setMerchantTradeDate(formatstr);
//			設定TotalAmount 交易金額
			obj.setTotalAmount(totalPrice);
//			設定TradeDesc 交易描述
			obj.setTradeDesc("PAPAGO租車 :"+BikeStoreVO.getBike_store_name()+"店家");
//			設定客製化欄位 
			obj.setCustomField1(BikeStoreVO.getBike_store_name());
//			設定ItemName 商品名稱
			obj.setItemName(items.toString());
//			設定ReturnURL 付款完成通知回傳網址 使用  https://7299cf1ce94a.ngrok.io
			String returnURL = "https://7299cf1ce94a.ngrok.io/EA101_G4/front-end/bike/bikeStoreList.jsp";
			obj.setReturnURL(returnURL);
//			設定ClientBackURL Client端返回合作特店系統的按鈕連結
			obj.setClientBackURL(returnURL);
//			設定OrderResultURL Client端回傳付款結果網址 跟ReturnURL二選一
//			obj.setOrderResultURL(returnURL);
//			設定NeedExtraPaidInfo 是否需要額外的付款資訊 
			obj.setNeedExtraPaidInfo("N");
			 //setRedeem是否使用紅利折抵
			obj.setRedeem("N");   
			String form = all.aioCheckOut(obj, null);
			out.println(form);
		}
	}

	
//	public static String genAioCheckOutOneTime(){
////		產生信用卡一次付清訂單物件
//		AioCheckOutOneTime obj = new AioCheckOutOneTime();
//		//訂單編號
//		obj.setMerchantTradeNo("testCompany888888");
////		設定MerchantTradeDate 合作特店交易時間
//		obj.setMerchantTradeDate("2017/01/01 08:05:23");
////		設定TotalAmount 交易金額
//		obj.setTotalAmount("50");
////		設定TradeDesc 交易描述
//		obj.setTradeDesc("test Description");
////		設定ItemName 商品名稱
//		obj.setItemName("TestItem");
////		設定ReturnURL 付款完成通知回傳網址
//		obj.setReturnURL("http://211.23.128.214:5000");
////		設定NeedExtraPaidInfo 是否需要額外的付款資訊 
//		obj.setNeedExtraPaidInfo("N");
//		 //setRedeem是否使用紅利折抵
//		obj.setRedeem("Y");   
//		String form = all.aioCheckOut(obj, null);
//		return form;
//	}


}

