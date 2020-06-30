package example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutOneTime;

public class TestPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		
		if("pay".equals(action)) {
			AllInOne all = new AllInOne("");
			AioCheckOutOneTime obj = new AioCheckOutOneTime();
			
			obj.setStoreID("p1101");
			//訂單編號
			obj.setMerchantTradeNo("testCompany888556");
//			設定MerchantTradeDate 合作特店交易時間
			obj.setMerchantTradeDate("2017/01/01 08:05:23");
//			設定TotalAmount 交易金額
			obj.setTotalAmount("50");
//			設定TradeDesc 交易描述
			obj.setTradeDesc("test Description");
//			設定ItemName 商品名稱
			obj.setItemName("TestItem");
//			設定ReturnURL 付款完成通知回傳網址
			obj.setReturnURL("/ECPAY/test/NewFile.html");
//			設定ClientBackURL Client端返回合作特店系統的按鈕連結
			obj.setClientBackURL("/ECPAY/test/NewFile.html");
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
