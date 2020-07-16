package com.forum_message_report.model;

import java.util.List;

public interface ForumMessageReport_interface {
	
	public void insert(ForumMessageReportVO forummessagereportVO);
	public void update(ForumMessageReportVO forummessagereportVO);
	public void delete(Integer sq_message_report_id);
	public ForumMessageReportVO findByPrimaryKey(Integer sq_message_report_id);
	public List<ForumMessageReportVO> getAll();

}
