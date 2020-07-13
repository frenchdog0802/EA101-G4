package com.tips.model;

import java.util.List;

public class TipsService {

	private TipsDAO_interface dao;

	public TipsService() {
		dao = new TipsJDBCDAO();
	}

	public TipsVO addTips(byte[] tips_picture, String tips_desciption,
			String tips_title) {

		TipsVO tipsVo = new TipsVO();

		tipsVo.setTips_picture(tips_picture);
		tipsVo.setTips_desciption(tips_desciption);
		tipsVo.setTips_title(tips_title);
		dao.insert(tipsVo);

		return tipsVo;
	}

	public TipsVO updateTips(String sq_tips_id, byte[] tips_picture, String tips_desciption,
			String tips_title) {

		TipsVO tipsVo = new TipsVO();

		tipsVo.setSq_tips_id(sq_tips_id);
		tipsVo.setTips_picture(tips_picture);
		tipsVo.setTips_desciption(tips_desciption);
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
}