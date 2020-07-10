package com.route.model;

import java.util.*;

public interface RouteDAO_interface {
	public void insert(RouteVO routeVO);
	public void updateByMem(RouteVO routeVO);
	public void updateByStaf(RouteVO routeVO);
	public void delete(String sqRouteId);
	public RouteVO findByPrimaryKey(String sqRouteId);
	public RouteVO findByRouteName(String routeName);
	public List<RouteVO> getAll();
	//查詢某個區域內的路線起始點
	public List<RouteVO> getAreaByStartArea(String startArea);
	//查詢某帳號的自訂路線
	public Set<RouteVO> getRouteByMemId (String sqMemberId);
}
