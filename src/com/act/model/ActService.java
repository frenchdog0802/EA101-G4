package com.act.model;

import java.util.ArrayList;
import java.util.List;

import com.actjoin.model.ActJoinVO;

import java.sql.Date;

public class ActService {
	private ActDAO_interface dao;

	public ActService() {
		dao = new ActDAO();
	}

	public ActVO addAct(String sq_route_id, String sq_member_id, String act_title, Integer max_population,
			Integer min_population, Date start_time, Date end_time, Date act_start_time,
			Date act_end_time, String act_description, byte[] act_picture) {

		ActVO actVO = new ActVO();

		actVO.setSq_route_id(sq_route_id);
		actVO.setSq_member_id(sq_member_id);
		actVO.setAct_title(act_title);
		actVO.setMax_population(max_population);
		actVO.setMin_population(min_population);
		actVO.setAct_description(act_description);
		actVO.setStart_time(start_time);
		actVO.setEnd_time(end_time);
		actVO.setAct_start_time(act_start_time);
		actVO.setAct_end_time(act_end_time);
		actVO.setAct_picture(act_picture);

		List<ActJoinVO> testList = new ArrayList<ActJoinVO>();
		ActJoinVO actjoinVO = new ActJoinVO();  
		java.sql.Timestamp join_time = new java.sql.Timestamp(System.currentTimeMillis());
		actjoinVO.setSq_member_id(sq_member_id);
		actjoinVO.setJoin_time(join_time);

		testList.add(actjoinVO);
	
		dao.insertWithActJoin(actVO , testList);
		return actVO;
	}

	public ActVO updateAct(String sq_route_id, String sq_member_id,String act_title,
			Integer max_population, Integer min_population, Date start_time,
			Date end_time, Date act_start_time,Date act_end_time, String act_description,
			byte[] act_picture, Integer gp_status, String sq_activity_id) {

		ActVO actVO = new ActVO();

		actVO.setSq_route_id(sq_route_id);
		actVO.setSq_member_id(sq_member_id);
		actVO.setAct_title(act_title);
		actVO.setMax_population(max_population);
		actVO.setMin_population(min_population);
		actVO.setAct_description(act_description);
		actVO.setStart_time(start_time);
		actVO.setEnd_time(end_time);
		actVO.setAct_start_time(act_start_time);
		actVO.setAct_end_time(act_end_time);
		actVO.setAct_picture(act_picture);
		actVO.setGp_status(gp_status);
		actVO.setSq_activity_id(sq_activity_id);
		
		dao.update(actVO);

		return actVO;
	}

	public void cancelAct(String sq_activity_id) {
		dao.cancel(sq_activity_id);
	}
	
	public void deleteAct(String sq_activity_id) {
		dao.delete(sq_activity_id);
	}

	public ActVO getOneAct(String sq_activity_id) {
		return dao.findByPrimaryKey(sq_activity_id);
	}

	public List<ActVO> getAll() {
		return dao.getAll();
	}
}
