package ecpay.payment.integration;

import ecpay.payment.integration.domain.InvoiceObj;

public class AllInOneService {
	
	private AllInOne all;
	
	public AllInOneService(){
		all = new AllInOne("");
	}
	
	//信用卡一次付清
	public String aioCheckOut(Object obj, InvoiceObj invoice) {
		return all.aioCheckOut(obj, null);
	}
}
