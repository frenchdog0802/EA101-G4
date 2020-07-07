package com.actjoin.model;

import java.util.List;
import java.sql.Timestamp;

public class ActJoinService {
	private ActJoinDAO_interface dao;

	public ActJoinService() {
		dao = new ActJoinJDBCDAO();
	}

	public ActJoinVO addActJoin(String sq_activity_id, String sq_member_id, Timestamp join_time) {

		ActJoinVO actjoinVO = new ActJoinVO();

		actjoinVO.setSq_activity_id(sq_activity_id);
		actjoinVO.setSq_member_id(sq_member_id);
		actjoinVO.setJoin_time(join_time);
		dao.insert(actjoinVO);

		return actjoinVO;
	}

	public ActJoinVO updateActJoin(String sq_member_id, Timestamp join_time, String sq_activity_id) {

		ActJoinVO actjoinVO = new ActJoinVO();

		
		actjoinVO.setSq_member_id(sq_member_id);
		actjoinVO.setJoin_time(join_time);
		actjoinVO.setSq_activity_id(sq_activity_id);
		
		dao.update(actjoinVO);

		return actjoinVO;
	}

	public void deleteActJoin(String sq_activity_id, String sq_member_id) {
		dao.delete(sq_activity_id, sq_member_id);
	}

	public List<ActJoinVO> getOneActJoin(String sq_activity_id) {
		return dao.findByPrimaryKey(sq_activity_id);
	}
	
	public List<ActJoinVO> getMyActJoin(String sq_member_id) {
		return dao.findByMemberId(sq_member_id);
	}
	
	public int getOneJoinPeople(String sq_activity_id) {
		return dao.search(sq_activity_id);
	}

	public List<ActJoinVO> getAll() {
		return dao.getAll();
	}
}
