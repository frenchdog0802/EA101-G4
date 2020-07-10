package com.routeDetail.model;

import java.util.List;
import java.util.Set;

import com.route.model.RouteJDBCDAO;

public class RouteDetailService {
	private RouteDetailDAO_interface dao;

	

	public RouteDetailService() {
		dao = new RouteDetailJDBCDAO();
	}

	public List<RouteDetailVO> getAll() {
		return dao.getAll();
	}

	public void delete(String sqSerialNo) {
		dao.delete(sqSerialNo);
	}

	public List<RouteDetailVO> getStepsByRouteId(String sqRouteId) {
		return dao.getStepsByRouteId(sqRouteId);
	}

	public RouteDetailVO getStepsBySeriaNo(String sqSerialNo) {
		return dao.findByPrimaryKey(sqSerialNo);
	}

	// 單點查詢後單點修改！
	public RouteDetailVO updateBySrailNo(String stepName, Double stLongitude, Double stLatitude, byte[] stepImage,
			String stepIntroduction) {
		RouteDetailVO rouDeVO = new RouteDetailVO();

		rouDeVO.setStepName(stepName);
		rouDeVO.setStLongitude(stLongitude);
		rouDeVO.setStLatitude(stLatitude);
		rouDeVO.setStepImage(stepImage);
		rouDeVO.setStepIntroduction(stepIntroduction);
		dao.updateBySerialNo(rouDeVO);
		return rouDeVO;

	}

	public void insert(RouteDetailVO rouDeVO) {
		dao.insert(rouDeVO);
	}

	// 應該要寫一個方法，可以用RouteId拿出此路線的全部停留點，一次修改！
	// 由路線編號去更新單條路線的停留點！
	public RouteDetailVO updateByRouId(String stepName, Double stLongitude, Double stLatitude, byte[] stepImage,
			String stepIntroduction) {
		RouteDetailVO rouDeVO = new RouteDetailVO();

		rouDeVO.setStepName(stepName);
		rouDeVO.setStLongitude(stLongitude);
		rouDeVO.setStLatitude(stLatitude);
		rouDeVO.setStepImage(stepImage);
		rouDeVO.setStepIntroduction(stepIntroduction);
		dao.updateByRouId(rouDeVO);
		return rouDeVO;
	}

}
