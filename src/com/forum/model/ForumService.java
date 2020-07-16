package com.forum.model;

import java.sql.Blob;
import java.sql.Clob;
import java.sql.Date;
import java.util.List;

import com.forum_message.model.ForumMessageVO;
import com.member.model.MemVO;


public class ForumService {
	
	private ForumDAO_interface dao;

	public ForumService() {
		dao = new ForumJDBCDAO();
	}
	public ForumVO addForum(String sq_member_id, String theme_name, Date theme_time, Integer reponse_sum,
			String theme_detial,byte[] theme_pic, Integer theme_display_status) {

		ForumVO forumVO = new ForumVO();
		forumVO.setSq_member_id(sq_member_id);
		forumVO.setTheme_name(theme_name);
		forumVO.setTheme_time(theme_time);
		forumVO.setReponse_sum(reponse_sum);
		forumVO.setTheme_detial(theme_detial);
		forumVO.setTheme_pic(theme_pic);
		forumVO.setTheme_display_status(theme_display_status);
		
		dao.insert(forumVO);
		
		return forumVO;
	}
//	public void addForum(ForumVO forumVO) {
//		dao.insert(forumVO);
//	}
	
	public ForumVO updateTheme(String sq_theme_id, String sq_member_id, String theme_name,
			String theme_detial,byte[] theme_pic, Integer theme_display_status) {

		ForumVO forumVO = new ForumVO();
		forumVO.setSq_theme_id(sq_theme_id);
		forumVO.setSq_member_id(sq_member_id);
		forumVO.setTheme_name(theme_name);
		forumVO.setTheme_detial(theme_detial);
		forumVO.setTheme_pic(theme_pic);
		forumVO.setTheme_display_status(theme_display_status);
		
		dao.update(forumVO);

		return forumVO;
	}
	
	public void deleteTheme(String sq_theme_id) {
		dao.delete(sq_theme_id);
	}

	public ForumVO getOneTheme(String sq_theme_id) {
		return dao.findByPrimaryKey(sq_theme_id);
	}

	public List<ForumVO> getAll() {
		return dao.getAll();
	}
	public ForumVO findByPrimaryKey(String sq_theme_id){
		return dao.findByPrimaryKey(sq_theme_id);
	}
		
	public List<ForumVO> getThemebySq_member_id(String sq_member_id) {
		return dao.getThemebySq_member_id(sq_member_id);
	}
}
