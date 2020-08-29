package com.tips.model;

import java.util.*;


public interface TipsDAO_interface {
	public void insert(TipsVO tipsVo);
	public void update(TipsVO tipsVo);
	public void delete(String tips_title);
	public TipsVO findByPrimaryKey(String tips_title);
	public List<TipsVO> getAll();
	
	public List<TipsVO> findByTitle(Integer tips_title);

}
