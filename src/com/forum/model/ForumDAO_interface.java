package com.forum.model;

import java.util.List;

import com.forum_message.model.ForumMessageVO;

public interface ForumDAO_interface {
	
	public void insert(ForumVO forumVO);
	public void update(ForumVO forumVO);
	public void delete(String sq_theme_id);
	public ForumVO findByPrimaryKey(String sq_theme_id);
	public List<ForumVO> getAll();
	public List<ForumVO> getThemebySq_member_id(String sq_member_id);
	
}

