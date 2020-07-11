package com.actreport.model;

import java.util.List;

public class ActReportService {
	private ActReportDAO_interface dao;

	public ActReportService() {
		dao = new ActReportDAO();
	}

	public ActReportVO addActReport(String sq_activity_id, String sq_member_id, String report_reason) {

		ActReportVO actreportVO = new ActReportVO();
		actreportVO.setSq_activity_id(sq_activity_id);
		actreportVO.setSq_member_id(sq_member_id);
		actreportVO.setReport_reason(report_reason);
		
		dao.insert(actreportVO);

		return actreportVO;
	}

	public ActReportVO updateActReport(String sq_actreport_id, Integer report_status) {

		ActReportVO actreportVO = new ActReportVO();
		actreportVO.setSq_activityreport_id(sq_actreport_id);
		actreportVO.setReport_status(report_status);
		
		dao.update(actreportVO);

		return actreportVO;
	}


	public int getOneActReportStatus(String sq_activity_id) {
		return dao.findGpStatusByPK(sq_activity_id);
	}
	
	public ActReportVO getOneActReport(String sq_actreport_id) {
		return dao.findByPrimaryKey(sq_actreport_id);
	}
	
	public List<ActReportVO> getOneActReportForMember(String sq_member_id) { //給前台會員找自己檢舉用
		return dao.findByMemberId(sq_member_id);
	}

	public List<ActReportVO> getAll() {
		return dao.getAll();
	}
}
