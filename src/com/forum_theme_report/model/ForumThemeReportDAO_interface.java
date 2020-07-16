package com.forum_theme_report.model;

import java.util.List;


public interface ForumThemeReportDAO_interface {

	public void insert(ForumThemeReportVO forumthemereportVO);
    public void update(ForumThemeReportVO forumthemereportVO);
    public void delete(String sq_theme_report_id);
    public ForumThemeReportVO findByPrimaryKey(String sq_theme_report_id);
    public List<ForumThemeReportVO> getAll();
}
