package example;

import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.UUID;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import ecpay.payment.integration.domain.AioCheckOutATM;
import ecpay.payment.integration.domain.AioCheckOutBARCODE;
import ecpay.payment.integration.domain.AioCheckOutCVS;
import ecpay.payment.integration.domain.AioCheckOutDevide;
import ecpay.payment.integration.domain.AioCheckOutOneTime;
import ecpay.payment.integration.domain.AioCheckOutPeriod;
import ecpay.payment.integration.domain.AioCheckOutWebATM;
import ecpay.payment.integration.domain.CaptureObj;
import ecpay.payment.integration.domain.CreateServerOrderObj;
import ecpay.payment.integration.domain.DoActionObj;
import ecpay.payment.integration.domain.FundingReconDetailObj;
import ecpay.payment.integration.domain.InvoiceObj;
import ecpay.payment.integration.domain.QueryCreditCardPeriodInfoObj;
import ecpay.payment.integration.domain.QueryTradeInfoObj;
import ecpay.payment.integration.domain.QueryTradeObj;
import ecpay.payment.integration.domain.TradeNoAioObj;

public class ExampleAllInOne {
	public static AllInOne all;
	public static void main(String[] args) {
		initial();
		System.out.println("compare CheckMacValue method testing result: " + cmprChkMacValue());
//		System.out.println("apple pay create order: " + postCreateServerOrder());
//		System.out.println("doAction: " + postDoAction());
//		System.out.println("queryTradeInfo: " + postQueryTradeInfo());
//		System.out.println("queryCreditCardPeriodInfo: " + postQueryCreditCardPeriodInfo());
//		System.out.println("capture: " + postCapture());
//		System.out.println("queryTrade: " + postQueryTrade());
//		System.out.println("tradeNoAio: " + postTradeNoAio());
//		System.out.println("fundingReconDetail: " + postFundingReconDetail());
//		System.out.println("aioCheckOutALL: " + genAioCheckOutALL());
		//System.out.println("aioCheckOutATM: " + genAioCheckOutATM());
//		System.out.println("aioCheckOutCVS: " + genAioCheckOutCVS());
//		System.out.println("aioCheckOutBARCODE: " + genAioCheckOutBARCODE());
//		System.out.println("aioCheckOutDevide: " + genAioCheckOutDevide()); //分期
		System.out.println("aioCheckOutOneTime: " + genAioCheckOutOneTime());//紅利折抵(可以一次付清)
//		System.out.println("aioCheckOutPeriod: " + genAioCheckOutPeriod()); //定期定額
//		System.out.println("aioCheckOutWebATM: " + genAioCheckOutWebATM());
	}
	
	public ExampleAllInOne() {
		all = new AllInOne("");
	};
	
	private static void initial(){
		all = new AllInOne("");
	}
	
	public static boolean cmprChkMacValue(){
		Hashtable<String, String> dict = new Hashtable<String, String>();
		dict.put("MerchantID", "2000132");
		dict.put("CheckMacValue", "50BE3989953C1734E32DD18EB23698241E035F9CBCAC74371CCCF09E0E15BD61");
		return all.compareCheckMacValue(dict);
//		檢查Hashtable中的檢查碼是否正確(確保資料未被竄改)
	}
	
	public static String postCreateServerOrder(){
//		 ApplePay 信用卡授權作業物件
		CreateServerOrderObj obj = new CreateServerOrderObj();
		obj.setMerchantTradeNo("sdfkjh2kli3hlih");
		obj.setMerchantTradeDate("2017/05/12 10:23:46");
		obj.setTotalAmount("1000");
		obj.setCurrencyCode("TWD");
		try {
			obj.setItemName(new String("哈".getBytes("BIG5"), "UTF-8"));
			obj.setTradeDesc(new String("哈".getBytes("BIG5"), "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		obj.setTradeType("2");
		obj.setPaymentToken("{	\"token\":	{		\"paymentData\":		{			\"data\":\"rLQsaJzRWR4MGdZWvWY9dvfmKRYKY8jcOP3YDBH+QpB5tklltZErejVyHARz6+pJdBAnjjECuoqH8aDerZHraBz2pb14uBuiawhqeT0UrAsp/vHTM05BZdpcGT7JQAJzx0gcxRWZ7b7EpBt8xiSaPISHZA9TlVwNbfyM3IB1p5e3V3OEWwENAyhaXdBZNovZdjfQ8Z8AhCypjCeiLvprlfXHpzYadZwHlX40lbZRkxWYPEbP3XEaa1FsPVxYNkSJKcE6t4mEW1cSGZJnEbxFOw6npITnm+Pr2lg8mQJwMeRxs90xpmc0m0BVBAnT7CnqYSzEBkmIBUX5EQvgAC3t4XHUAghwx9nkPbgzXtBA5OLkaDq5Cqo5qrgGty37eDot+zkUQfpugj2Axkrc5Mey1J0+PWpG1cOLeAq/UGSv2tbZ\",			\"signature\":\"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\",			\"header\":			{				\"publicKeyHash\":\"xLBxijBsfyoaFVUlEEUEQptPsmD4WIt491ovV5DKNAg=\",				\"ephemeralPublicKey\":\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE/WwswbNtdjBmX94iGQh5Z4Cyt7v7rMNAMO2Hgi93HUpSSJ5pI+5TYM4UtdIWfDbBzXQiwCAKT3jreo1cLPAdzg==\",				\"transactionId\":\"85a158652b0d98379cb817dd53e97dfd8131dde2f578128482b6dee4c9e98eb9\"			},			\"version\":\"EC_v1\"		},		\"transactionIdentifier\":\"85A158652B0D98379CB817DD53E97DFD8131DDE2F578128482B6DEE4C9E98EB9\",		\"paymentMethod\":		{			\"network\":\"Visa\",			\"type\":\"debit\",			\"displayName\":\"Visa 0492\"		}	}}");
		return all.createServerOrder(obj);
	}
	
	public static String postDoAction(){
//		信用卡關帳/退刷/取消/放棄物件
		DoActionObj obj = new DoActionObj();
		obj.setMerchantTradeNo("b0fac40057364c0894b");
		obj.setTotalAmount("100");
		obj.setTradeNo("16054565489");
		obj.setAction("C");
		return all.doAction(obj);
	}
	
	public static String postFundingReconDetail(){
//		下載信用卡撥款對帳資料檔物件
		FundingReconDetailObj obj = new FundingReconDetailObj();
		obj.setPayDateType("close");
		obj.setStartDate("2017-03-03");
		obj.setEndDate("2017-03-03");
		return all.fundingReconDetail(obj);
	}
	
	public static String postCapture(){
//		合作特店申請撥款物件
		CaptureObj obj = new CaptureObj();
		obj.setMerchantTradeNo("testCompany0003");
		obj.setCaptureAMT("100");
		return all.capture(obj);
	}
	
	public static String postQueryTrade(){
//		查詢信用卡單筆明細記錄物件
		QueryTradeObj obj = new QueryTradeObj();
		obj.setCreditRefundId("10123456");
		obj.setCreditAmount("100");
		obj.setCreditCheckCode("59997889");
		return all.queryTrade(obj);
	}
	
	public static String postQueryTradeInfo(){
//		查詢訂單物件
		QueryTradeInfoObj obj = new QueryTradeInfoObj();
		obj.setMerchantTradeNo("0c3075e7499743e58ef");
		return all.queryTradeInfo(obj);
	}
	
	public static String postTradeNoAio(){
//		下載合作特店對帳媒體檔物件
		TradeNoAioObj obj = new TradeNoAioObj();
		obj.setDateType("6");
		obj.setBeginDate("2017-03-03");
		obj.setEndDate("2017-03-03");
		obj.setMediaFormated("1");
		return all.tradeNoAio(obj);
	}
	
	public static String postQueryCreditCardPeriodInfo(){
//		信用卡定期定額訂單查詢物件
		QueryCreditCardPeriodInfoObj obj = new QueryCreditCardPeriodInfoObj();
		obj.setMerchantTradeNo("74823H75879R166472");
		return all.queryCreditCardPeriodInfo(obj);
	}
	
	public static String genAioCheckOutWebATM(){
//		產生網路ATM訂單物件
		AioCheckOutWebATM obj = new AioCheckOutWebATM();
		obj.setMerchantTradeNo("testCompany444444");
		obj.setMerchantTradeDate("2017/01/01 08:05:08");
		obj.setTotalAmount("100");
		obj.setTradeDesc("test Description");
		obj.setItemName("Test Item");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
	
	public static String genAioCheckOutALL(){
//		產生訂單物件(不指定付款方式，由綠界顯示)
		AioCheckOutALL obj = new AioCheckOutALL();
		obj.setMerchantTradeNo("testCompany563332");
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
	
	public static String genAioCheckOutATM(){
//		產生ATM訂單物件
		AioCheckOutATM obj = new AioCheckOutATM();
		obj.setMerchantTradeNo("testCompany555556");
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setExpireDate("6");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
	
	public static String genAioCheckOutBARCODE(){
//		產生超商條碼繳費訂單物件
		AioCheckOutBARCODE obj = new AioCheckOutBARCODE();
		obj.setMerchantTradeNo("testCompany77775");
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setStoreExpireDate("3");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
	
	public static String genAioCheckOutCVS(){
//		產生CVS超商代碼繳費訂單物件
//		開立發票物件
		AioCheckOutCVS obj = new AioCheckOutCVS();
		InvoiceObj invoice = new InvoiceObj();
		UUID uid = UUID.randomUUID();
		obj.setMerchantTradeNo(uid.toString().replaceAll("-", "").substring(0, 20));
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setStoreExpireDate("3");
		obj.setInvoiceMark("Y");
		invoice.setRelateNumber("test201217test");
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("台北市南港區三重路");
		invoice.setCustomerPhone("0911429215");
		invoice.setDelayDay("1");
		invoice.setInvType("07");
		invoice.setInvoiceItemName("測試");
		invoice.setInvoiceItemCount("1");
		invoice.setInvoiceItemWord("個");
		invoice.setInvoiceItemPrice("50");
		invoice.setInvoiceItemTaxType("1");
		String form = all.aioCheckOut(obj, invoice);
		return form;
	}
	
	public static String genAioCheckOutDevide(){
//		產生信用卡分期付款訂單物件
		AioCheckOutDevide obj = new AioCheckOutDevide();
		obj.setMerchantTradeNo("testCompany11111");
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setCreditInstallment("3,6");
		obj.setInstallmentAmount("10");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
	
	public static String genAioCheckOutOneTime(){
//		產生信用卡一次付清訂單物件
		AioCheckOutOneTime obj = new AioCheckOutOneTime();
		//訂單編號
		obj.setMerchantTradeNo("testCompany888888");
//		設定MerchantTradeDate 合作特店交易時間
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
//		設定TotalAmount 交易金額
		obj.setTotalAmount("50");
//		設定TradeDesc 交易描述
		obj.setTradeDesc("test Description");
//		設定ItemName 商品名稱
		obj.setItemName("TestItem");
//		設定ReturnURL 付款完成通知回傳網址
		obj.setReturnURL("http://211.23.128.214:5000");
//		設定NeedExtraPaidInfo 是否需要額外的付款資訊 
		obj.setNeedExtraPaidInfo("N");
		 //setRedeem是否使用紅利折抵
		obj.setRedeem("Y");   
		String form = all.aioCheckOut(obj, null);
		return form;
	}
	
	public static String genAioCheckOutPeriod(){
//		產生信用卡定期定額訂單物件
		AioCheckOutPeriod obj = new AioCheckOutPeriod();
		obj.setMerchantTradeNo("testCompany99999");
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setPeriodAmount("50");
		obj.setPeriodType("D");
		obj.setFrequency("1");
		obj.setExecTimes("12");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
}
