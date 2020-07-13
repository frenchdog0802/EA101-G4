package com.member.model;

//import java.util.List;
import java.util.*;


public interface MemDAO_interface {
	public void insert(MemVO memVO);
	public void update(MemVO memVO);
	public void delete(String sq_member_id);
	public MemVO findByPrimaryKey(String sq_member_id);
	public MemVO getOneMemfromAccount(String member_account) ;
	public List<MemVO> getAll();
}
