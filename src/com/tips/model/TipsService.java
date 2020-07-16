package com.tips.model;

import java.util.List;

public class TipsService {

	private TipsDAO_interface dao;

	public TipsService() {
		dao = new TipsDAO();
	}

	public void addTips(TipsVO tipsVo) {
		dao.insert(tipsVo);
	}

	public void updateTips(TipsVO tipsVo) {

		dao.update(tipsVo);
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
	
	public String findByTitleStr(Integer tip_title) {
		String str = null;
		switch(tip_title) {
			case 1 : 
				str = "法規資訊";
				break;
			case 2 : 
				str = "自行車道規劃認識";
				break;
			case 3 : 
				str = "單車裝備";
				break;
			case 4 : 
				str = "行前準備";
				break;
			case 5 : 
				str = "單車安全小常識";
				break;
			case 6 : 
				str = "全臺單車驛站";
				break;
		};
		return str;
	}
		
	
	

}