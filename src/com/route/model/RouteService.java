package com.route.model;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;
import com.route.model.RouteVO;

public class RouteService {
	
	private RouteDAO_interface dao;

	public RouteService() {
		dao = new RouteDAO();
	}
	public List<RouteVO> getAll(){
		return dao.getAll();
	}
	public RouteVO getOneRoute(String sqRouteId) {
		return dao.findByPrimaryKey(sqRouteId);
	}
	
	public RouteVO getOneRouteByRouteName(String routeName) {
		return dao.findByRouteName(routeName);
	}
	
	public List<RouteVO> getAreaByStartArea(String startArea){
		return dao.getAreaByStartArea(startArea);
	}
	public Set<RouteVO> getRouteByMemId (String sqMemberId) {
		return dao.getRouteByMemId(sqMemberId);
	}
	public void deleteRoute(String sqRouteId) {
		dao.delete(sqRouteId);
	}

	public RouteVO insert(String routeName, String sqMemberId, Double distance, String country, String startArea, 
			String endArea, byte[] routeImage, String routeIntroduction, 
			 Integer checkFlag, Integer addRoute) {
		RouteVO routeVO = new RouteVO();
		routeVO.setRouteName(routeName);
		routeVO.setSqMemberId(sqMemberId);
		routeVO.setDistance(distance);
		routeVO.setCountry(country);
		routeVO.setStartArea(startArea);
		routeVO.setEndArea(endArea);
		routeVO.setRouteImage(routeImage);
		routeVO.setRouteIntroduction(routeIntroduction);
		routeVO.setCheckFlag(checkFlag);
		routeVO.setAddRoute(addRoute);
		dao.insert(routeVO);
		return routeVO;
	}
	public RouteVO updateByMem (String routeName, Double distance, String country, String startArea, 
			String endArea, byte[] routeImage, String routeIntroduction) {
		RouteVO routeVO = new RouteVO();

		routeVO.setRouteName(routeName);
		routeVO.setDistance(distance);
		routeVO.setCountry(country);
		routeVO.setStartArea(startArea);
		routeVO.setEndArea(endArea);
		routeVO.setRouteImage(routeImage);
		routeVO.setRouteIntroduction(routeIntroduction);
		dao.updateByMem(routeVO);
		return routeVO;
	}
	public RouteVO updateByStaf (String sqRouteId, Integer checkFlag, Integer addRoute) {
		RouteVO routeVO = new RouteVO();
		routeVO.setSqRouteId(sqRouteId);
		routeVO.setCheckFlag(checkFlag);
		routeVO.setAddRoute(addRoute);
		dao.updateByStaf(routeVO);
		return routeVO;
	}

}
