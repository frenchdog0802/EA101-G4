package com.actfavor.model;

public interface ActFavorDAO_interface {
	public void insert(ActFavorVO actfavorVO);
    public void delete(String actfavorid, String memberid);
}
