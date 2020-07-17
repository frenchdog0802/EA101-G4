package com.forum_message.model;

import java.sql.Date;
import java.util.List;

import com.forum.model.ForumVO;

public class ForumMessageService {

	private ForumMessage_interface dao;

	public ForumMessageService() {
		dao = new ForumMessageDAO();
	}

	public ForumMessageVO addForumMessage(String sq_theme_id, String sq_member_id,
			String message_detail, Date message_time, Integer message_display_status) {

		ForumMessageVO forumMessageVO = new ForumMessageVO();

		forumMessageVO.setSq_theme_id(sq_theme_id);
		forumMessageVO.setSq_member_id(sq_member_id);
		forumMessageVO.setMessage_detail(message_detail);
		forumMessageVO.setMessage_time(message_time);
		forumMessageVO.setMessage_display_status(message_display_status);

		dao.insert(forumMessageVO);

		return forumMessageVO;
	}

	public ForumMessageVO updateForumMessage(String sq_forum_message_id, String sq_theme_id, String sq_member_id,
			String message_detail, Date message_time, Integer message_display_status) {

		ForumMessageVO forumMessageVO = new ForumMessageVO();

		forumMessageVO.setSq_forum_message_id(sq_forum_message_id);
		forumMessageVO.setSq_theme_id(sq_theme_id);
		forumMessageVO.setSq_member_id(sq_member_id);
		forumMessageVO.setMessage_detail(message_detail);
		forumMessageVO.setMessage_time(message_time);
		forumMessageVO.setMessage_display_status(message_display_status);

		dao.update(forumMessageVO);

		return forumMessageVO;
	}

	public void deleteForumMessage(String sq_forum_message_id) {
		dao.delete(sq_forum_message_id);
	}

	public ForumMessageVO getForumMessage(String sq_forum_message_id) {
		return dao.findByPrimaryKey(sq_forum_message_id);
	}
	
	public List<ForumMessageVO> getMessagebySq_theme_id(String Sq_theme_id) {
		return dao.getMessageBySq_theme_id(Sq_theme_id);
	}
	
	public List<ForumMessageVO> getAll() {
		return dao.getAll();
	}

	public ForumMessageVO findByPrimaryKey(String sq_forum_message_id) {
		return dao.findByPrimaryKey(sq_forum_message_id);
	};
}
