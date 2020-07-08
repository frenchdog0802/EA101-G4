package com.actfavor.model;

import java.sql.Timestamp;
import java.util.List;

public class ActFavorService {
	private ActFavorDAO_interface dao;

	public ActFavorService() {
		dao = new ActFavorJDBCDAO();
	}

	public ActFavorVO addActFavor(String sq_activity_id, String sq_member_id, Timestamp favorite_time) {

		ActFavorVO actfavorVO = new ActFavorVO();

		actfavorVO.setSq_activity_id(sq_activity_id);
		actfavorVO.setSq_member_id(sq_member_id);
		actfavorVO.setFavorite_time(favorite_time);
		dao.insert(actfavorVO);

		return actfavorVO;
	}
	
	public void deleteActFavor(String sq_activity_id, String sq_member_id) {
		dao.delete(sq_activity_id, sq_member_id);
	}
	
	public List<ActFavorVO> getMyActFavor(String sq_member_id) {
		return dao.findByMemberId(sq_member_id);
	}
	
	public List<ActFavorVO> getAll() {
		return dao.getAll();
	}
	
}
