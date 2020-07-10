package com.routeDetail.model;

import java.util.List;
import java.util.Set;

import com.route.model.RouteVO;



public interface RouteDetailDAO_interface {
	public void insert(RouteDetailVO rouDeVO);
	public void updateBySerialNo(RouteDetailVO rouDeVO);
    public void updateByRouId(RouteDetailVO rouDeVO);
    public void delete(String sqSerialNo);
    public RouteDetailVO findByPrimaryKey(String sqSerialNo);
    public List<RouteDetailVO> getAll();
    //查詢某路線的停留點(一對多)(回傳 Set)
    public List<RouteDetailVO> getStepsByRouteId(String sqRouteId);
}
