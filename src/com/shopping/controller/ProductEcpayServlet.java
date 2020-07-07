package com.shopping.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.type.model.BikeTypeService;
import com.shop_order.model.Shop_orderService;
import com.shop_order.model.Shop_orderVO;
import com.shop_order_detail.model.Shop_order_detailVO;
import com.shop_product.model.Shop_productVO;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.Vector;

import ecpay.payment.integration.AllInOneService;
import ecpay.payment.integration.domain.AioCheckOutOneTime;

public class ProductEcpayServlet extends HttpServlet {
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
		List<Shop_productVO> buylist = (Vector<Shop_productVO>)session.getAttribute("shoppingcar");
		
		if ("pay".equals(action)) {
			// 接收參數
			// 建立商品描述
						
			StringBuilder items = new StringBuilder();
			for(Shop_productVO vo : buylist) {
				items.append(vo.getProduct_name());
				items.append(" x " + vo.getProduct_quantity());
				items.append("#");
			}
			System.out.println(items.toString());
			// 取得訂單編號+1
			Shop_orderService Shop_orderSvc = new Shop_orderService();
			String shopOrder_id = Shop_orderSvc.getCurrentKey();//取得目前最大的訂單編號
			String sq_rent_idNum = null;
			String sq_rent_idStr = null;
			int j = shopOrder_id.indexOf("-");
			sq_rent_idStr = shopOrder_id.substring(0, j + 1);
			sq_rent_idNum = Integer.toString(new Integer(shopOrder_id.substring(j + 1)) + 1);
			StringBuilder sb = new StringBuilder();// 串接回來
			sb.append(sq_rent_idStr);
			sb.append(sq_rent_idNum);
			shopOrder_id = sb.toString();
			
			System.out.println(shopOrder_id);		
			// 交易日期
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String formatstr = sdf.format(date);
			// 金額
			String totalPrice = request.getParameter("totalPrice");

			// 串接金流
			AioCheckOutOneTime obj = new AioCheckOutOneTime();
			
//			訂單編號
			obj.setMerchantTradeNo(shopOrder_id);
					
//			設定MerchantTradeDate 合作特店交易時間
			obj.setMerchantTradeDate(formatstr);
//			設定TotalAmount 交易金額
			obj.setTotalAmount(totalPrice);
//			設定ItemName 商品名稱
			obj.setItemName(items.toString());
//			設定交易訊息
			obj.setTradeDesc("支付信用卡");
//			設定ReturnURL 付款完成通知回傳網址 使用  ngrok.io
			String returnURL = "https://11cf8e050943.ngrok.io/EA101_G4/ProductEcpayServlet.do";
			obj.setReturnURL(returnURL);
//			設定ClientBackURL Client端返回合作特店系統的按鈕連結
			String clientBackURL = "https://11cf8e050943.ngrok.io/EA101_G4/front-end/shopMall/shoppignFinal.jsp";
			obj.setClientBackURL(clientBackURL);
//			設定OrderResultURL Client端回傳付款結果網址 跟ReturnURL二選一
//			obj.setOrderResultURL(clientBackURL);
//			設定NeedExtraPaidInfo 是否需要額外的付款資訊 
			obj.setNeedExtraPaidInfo("N");
//			setRedeem是否使用紅利折抵
			obj.setRedeem("N");
//			設定自訂回傳訊息 controller接收action
			obj.setCustomField1("returnMsg");
			obj.setCustomField2(buylist.toString());

			
			AllInOneService allInOneSvc = new AllInOneService();
			String form = allInOneSvc.aioCheckOut(obj, null);
			out.println(form);
		}

		
		// 綠界回傳交易訊息(自訂)
		String CustomField1 = request.getParameter("CustomField1"); 
		if ("returnMsg".equals(CustomField1)) {

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

	

		// 接受參數回傳取需要參數

		String MerchantTradeNo = request.getParameter("MerchantTradeNo");//request.getParameter("MerchantTradeNo");
		Integer RtnCode = Integer.parseInt(request.getParameter("RtnCode"));
		Integer TradeAmt = Integer.parseInt(request.getParameter("TradeAmt"));
			

		// 新增到訂單
		Shop_orderService shop_orderSvc = new Shop_orderService();
		Shop_orderVO shop_orderVO = new Shop_orderVO();
		shop_orderVO.setSq_order_id(MerchantTradeNo);
		shop_orderVO.setSq_member_id(memNo);
		shop_orderVO.setSq_store_address_id("550001");//取貨超商編號
		shop_orderVO.setOrder_address("桃園市平鎮區中央路187號");//從收件人資訊取
		shop_orderVO.setShop_order_price(TradeAmt);
		shop_orderVO.setPay_mode(2);
		shop_orderVO.setOrder_status(0);
		

		// 同時新增到明細
			List<Shop_order_detailVO> list = new ArrayList<>();
		// 取得購物車商品
			for(Shop_productVO productVO : buylist) {
				Shop_order_detailVO detailVO = new Shop_order_detailVO();
				int price = productVO.getProduct_price() * productVO.getProduct_quantity();
				detailVO.setSq_order_id(MerchantTradeNo);
				detailVO.setSq_product_id(productVO.getSq_product_id());
				detailVO.setProduct_price(price);
				detailVO.setOrder_sum(productVO.getProduct_quantity());
				list.add(detailVO);
			}
		shop_orderSvc.insertWithDetail(shop_orderVO, list);
		}

	}

	
//	public Map<String , String> stringToMap(String MapString){
//		int s1 = MapString.indexOf("{");
//		String reg1 = MapString.substring(s1+1);
//		int s2 = reg1.indexOf("}");
//		String reg2 = reg1.substring(0,s2);
//	
//		Map<String, String> reconstructedUtilMap = Arrays.stream(reg2.split(","))
//	            .map(s -> s.split("="))
//	            .collect(Collectors.toMap(s -> s[0], s -> s[1]));
//		
//		return reconstructedUtilMap;
//	}

}
