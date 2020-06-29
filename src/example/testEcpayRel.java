package example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class testEcpayRel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		MerchantID 特店編號                       2000132
//		MerchantTradeNo 特店交易編號    testCompany881224
//		StoreID 特店旗下店舖代號		  620001
//		Int	RtnCode  交易狀態 	      1
//		RtnMsg 交易訊息			  交易成功
//		TradeNo  綠界交易編號			2006291129266663
//		Int	TradeAmt  交易金額			900
//		PaymentDate 付款時間 			2020/06/29 11:17:04
//		PaymentType 特店選擇的付款方式	Credit_CreditCard
//		TradeDate 訂單成立時間			2020/06/29 11:15:38
//		CustomField1 自訂名稱欄位 1		捷安寶-屏東東港店
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
		String CustomField1 = request.getParameter("CustomField1");
		
	
	}

}
