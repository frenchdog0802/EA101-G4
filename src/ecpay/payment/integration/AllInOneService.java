package ecpay.payment.integration;

import ecpay.payment.integration.domain.InvoiceObj;
import ecpay.payment.integration.domain.QueryCreditCardPeriodInfoObj;
import ecpay.payment.integration.domain.QueryTradeInfoObj;
import ecpay.payment.integration.domain.QueryTradeObj;

public class AllInOneService {
	
	private AllInOne all;
	
	public AllInOneService(){
		all = new AllInOne("");
	}
	
	//信用卡一次付清
	public String aioCheckOut(Object obj, InvoiceObj invoice) {
		return all.aioCheckOut(obj, null);
	}
	
	//查詢訂單
	public String queryTrade(QueryTradeObj queryTradeObj){
		return all.queryTrade(queryTradeObj);
	}
	


}
