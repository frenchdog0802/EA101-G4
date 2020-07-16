package com.tips.model;

import java.util.List;

public class TipsService {

	private TipsDAO_interface dao;

	public TipsService() {
		dao = new TipsDAO();
	}

	public TipsVO addTips(String tips_description,
			Integer tips_title) {

		TipsVO tipsVo = new TipsVO();

		tipsVo.setTips_description(tips_description);
		tipsVo.setTips_title(tips_title);
		dao.insert(tipsVo);

		return tipsVo;
	}

	public TipsVO updateTips(String sq_tips_id,  String tips_description,
			Integer tips_title) {

		TipsVO tipsVo = new TipsVO();

		tipsVo.setSq_tips_id(sq_tips_id);
		tipsVo.setTips_description(tips_description);
		tipsVo.setTips_title(tips_title);
		dao.update(tipsVo);

		return tipsVo;
	}

	public void deleteTips(String sq_tips_id) {
		dao.delete(sq_tips_id);
	}

	public TipsVO getOneTips(String sq_tips_id) {
		return dao.findByPrimaryKey(sq_tips_id);
	}

	public List<TipsVO> getAll() {
		return dao.getAll();
	}
	
	public List<TipsVO> findByTitle(Integer tips_title) {
		return dao.findByTitle(tips_title);
	}
		
	
	

}