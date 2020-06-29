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
		String action = request.getParameter("action"); //網頁指定訊息
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
			obj.setMerchantTradeNo("testCompany881225");
//			設定MerchantTradeDate 合作特店交易時間
			obj.setMerchantTradeDate(formatstr);
//			設定TotalAmount 交易金額
			obj.setTotalAmount(totalPrice);
//			設定ItemName 商品名稱
			obj.setItemName(items.toString());
//			設定自訂回傳訊息 
			obj.setCustomField1("returnMsg");
//			設定ReturnURL 付款完成通知回傳網址 使用  ngrok.io
			String returnURL = "https://d1c218187190.ngrok.io/EA101_G4/bike/testEcpayRel.do";
			obj.setReturnURL(returnURL);
//			設定ClientBackURL Client端返回合作特店系統的按鈕連結
			String clientBackURL = "https://d1c218187190.ngrok.io/EA101_G4/front-end/bike/bikeStoreList.jsp";
			obj.setClientBackURL(clientBackURL);
//			設定OrderResultURL Client端回傳付款結果網址 跟ReturnURL二選一
//			obj.setOrderResultURL(returnURL);
//			設定NeedExtraPaidInfo 是否需要額外的付款資訊 
			obj.setNeedExtraPaidInfo("N");
			 //setRedeem是否使用紅利折抵
			obj.setRedeem("N");   
			String form = all.aioCheckOut(obj, null);
			out.println(form);
		}
		
		String CustomField1 = request.getParameter("CustomField1"); //綠界回傳交易訊息(自訂)
		if("returnMsg".equals(CustomField1)) {
//			MerchantID 特店編號                       2000132
//			MerchantTradeNo 特店交易編號    testCompany881224
//			StoreID 特店旗下店舖代號		  620001
//			Int	RtnCode  交易狀態 	      1
//			RtnMsg 交易訊息			  交易成功
//			TradeNo  綠界交易編號			2006291129266663
//			Int	TradeAmt  交易金額			900
//			PaymentDate 付款時間 			2020/06/29 11:17:04
//			PaymentType 特店選擇的付款方式	Credit_CreditCard
//			TradeDate 訂單成立時間			2020/06/29 11:15:38
			
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			String MerchantID = request.getParameter("MerchantID");
			String MerchantTradeNo = request.getParameter("MerchantTradeNo");
			String StoreID = request.getParameter("StoreID");
			Integer RtnCode = Integer.parseInt(request.getParameter("RtnCode"));
			String RtnMsg = request.getParameter("RtnMsg");
			Integer	TradeAmt = Integer.parseInt(request.getParameter("TradeAmt"));
			String TradeNo = request.getParameter("TradeNo");
			String PaymentDate = request.getParameter("PaymentDate");
			String PaymentType = request.getParameter("PaymentType");
			String TradeDate = request.getParameter("TradeDate");
			
//			步驟
//			先做到訂單欄位增加綠界交易編號
//			再來新增訂單 同時自增主見 交易明細同時增加
			
		}
	}

	



}

