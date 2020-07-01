package com.bike.store.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.store.model.BikeStoreVO;
import com.bike.type.model.BikeTypeService;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.AllInOneService;
import ecpay.payment.integration.domain.AioCheckOutOneTime;

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

			// 接收參數
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
			obj.setMerchantTradeNo(sb.toString());
//			設定MerchantTradeDate 合作特店交易時間
			obj.setMerchantTradeDate(formatstr);
//			設定TotalAmount 交易金額
			obj.setTotalAmount(totalPrice);
//			設定ItemName 商品名稱
			obj.setItemName(items.toString());
//			設定交易訊息
			obj.setTradeDesc("支付信用卡");
//			設定ReturnURL 付款完成通知回傳網址 使用  ngrok.io
			String returnURL = "https://aedc94d95b20.ngrok.io/EA101_G4/bike/BikeEcpayServlet.do";
			obj.setReturnURL(returnURL);
//			設定ClientBackURL Client端返回合作特店系統的按鈕連結
			String clientBackURL = "https://aedc94d95b20.ngrok.io/EA101_G4/front-end/bike/bikeStoreList.jsp";
			obj.setClientBackURL(clientBackURL);
//			設定OrderResultURL Client端回傳付款結果網址 跟ReturnURL二選一
//			obj.setOrderResultURL(clientBackURL);
//			設定NeedExtraPaidInfo 是否需要額外的付款資訊 
			obj.setNeedExtraPaidInfo("N");
//			setRedeem是否使用紅利折抵
			obj.setRedeem("N");
//			設定自訂回傳訊息 controller接收
			obj.setCustomField1("returnMsg");

			AllInOneService allInOneSvc = new AllInOneService();
			String form = allInOneSvc.aioCheckOut(obj, null);
			out.println(form);
		}

		String CustomField1 = request.getParameter("CustomField1"); // 綠界回傳交易訊息(自訂)
		if ("returnMsg".equals(CustomField1)) {

			BikeTypeService bikeTypeSvc = new BikeTypeService();

			// 取得session會員編號
			String memNo = "910001";
			String memName = "peter";
			String memPhone = "0987654321";

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

//			取得所有參數

			Map<String , String[]> map = request.getParameterMap();
			for (Entry<String, String[]> entry : map.entrySet()) {
				System.out.println(entry.getKey()+":");
				System.out.println(entry.getValue());
			}

		

		// 接受參數回傳取需要參數

		String MerchantTradeNo = request.getParameter("MerchantTradeNo");
		String StoreID = request.getParameter("StoreID");
		Integer RtnCode = Integer.parseInt(request.getParameter("RtnCode"));
		Integer TradeAmt = Integer.parseInt(request.getParameter("TradeAmt"));
		String TradeNo = request.getParameter("TradeNo");
		String startDate = (String) session.getAttribute("startDate");
		String endDate = (String) session.getAttribute("endDate");

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
		BikeRentMasterVO.setRent_od_status(0);
		BikeRentMasterVO.setTradeno(TradeNo);

		// 同時新增到明細
		HashSet<BikeRentDetailVO> list = new HashSet<>();
		// 取得購物車商品
		HashMap<String, Integer> bookMap = (HashMap<String, Integer>) session.getAttribute("bookMap");
		for (Map.Entry<String, Integer> entry : bookMap.entrySet()) {
			BikeRentDetailVO BikeRentDetailVO = new BikeRentDetailVO();
			String sq_bike_type_id = entry.getKey();
			int num = entry.getValue();
			for (int i = 0; i < num; i++) {
				BikeRentDetailVO.setSq_rent_id(MerchantTradeNo);
				BikeRentDetailVO.setSq_bike_type_id(sq_bike_type_id);
				// 新增金額
				int dailyPrice = bikeTypeSvc.findByPrimaryKey(sq_bike_type_id).getBike_daily_price();
				int hourlyPrice = bikeTypeSvc.findByPrimaryKey(sq_bike_type_id).getBike_hourly_price();

				int price = getPrice(dailyPrice, hourlyPrice, startDate, endDate);
				BikeRentDetailVO.setPrice(price);
				// 新增日期
				BikeRentDetailVO.setRsved_rent_date(java.sql.Timestamp.valueOf(startDate));
				BikeRentDetailVO.setEx_return_date(java.sql.Timestamp.valueOf(endDate));
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

}
