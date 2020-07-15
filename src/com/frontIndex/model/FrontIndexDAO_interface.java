package com.frontIndex.model;
import java.util.List;

import com.act.model.*;
import com.route.model.*;
import com.shop_product.model.*;
public interface FrontIndexDAO_interface {
	public List<ActVO> getTopFourAct();
	public List<Shop_productVO> getTopFourProduct();
	public List<RouteVO> getTopFourRoute();
//	public List<ActVO> getTopFour();
}
