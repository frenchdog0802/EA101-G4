package com.actreport.model;

import java.util.List;
import java.sql.Date;
import java.sql.Timestamp;

public class ActReportService {
	private ActReportDAO_interface dao;

	public ActReportService() {
		dao = new ActReportJDBCDAO();
	}

	public ActReportVO addEmp(String sq_activity_id, String sq_member_id, String report_reason,
			Integer report_status) {

		ActReportVO actreportVO = new ActReportVO();

		actreportVO.setSq_activity_id(sq_activity_id);
		actreportVO.setSq_member_id(sq_member_id);
		actreportVO.setReport_reason(report_reason);
		actreportVO.setReport_status(report_status);
		
		dao.insert(actreportVO);

		return actreportVO;
	}

	public ActReportVO updateAct(Integer report_status) {

		ActReportVO actreportVO = new ActReportVO();

		actreportVO.setReport_status(report_status);
		
		dao.update(actreportVO);

		return actreportVO;
	}

	public void deleteActReport(String sq_activity_id) {
		dao.delete(sq_activity_id);
	}

	public ActReportVO getOneActReport(String sq_activity_id) {
		return dao.findByPrimaryKey(sq_activity_id);
	}

	public List<ActReportVO> getAll() {
		return dao.getAll();
	}
}
