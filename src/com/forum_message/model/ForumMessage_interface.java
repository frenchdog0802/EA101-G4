package com.forum_message.model;

import java.util.List;

public interface ForumMessage_interface {
	
	public void insert(ForumMessageVO forummessageVO);
    public void update(ForumMessageVO forummessageVO);
    public void delete(String sq_forum_message_id);
    public ForumMessageVO findByPrimaryKey(String sq_forum_message_id);
    
    public List<ForumMessageVO> getAll();
    
    public List<ForumMessageVO> getMessageBySq_theme_id(String sq_theme_id);
    
}