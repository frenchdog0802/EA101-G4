package com.actfavor.model;

import java.util.List;

public interface ActFavorDAO_interface {
	public void insert(ActFavorVO actfavorVO);
    public void delete(String actfavorid, String memberid);
    public List<ActFavorVO> getAll(); //前台判別收藏加入與取消
    public List<ActFavorVO> findByMemberId(String memberid); //前台會員搜尋自己的收藏
}
