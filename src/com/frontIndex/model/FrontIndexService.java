package com.frontIndex.model;

import java.util.List;

import com.act.model.ActVO;
import com.route.model.RouteVO;
import com.shop_product.model.Shop_productVO;

public class FrontIndexService {
	private FrontIndexDAO_interface dao;
	public FrontIndexService() {
		dao = new frontIndexDAO();
	}
	public List<ActVO> getFourAct(){
		return dao.getTopFourAct();
	}
	public List<RouteVO> getFourRoute(){
		return dao.getTopFourRoute();
	}
	public List<Shop_productVO> getFourProduct(){
		return dao.getTopFourProduct();
	}
}
