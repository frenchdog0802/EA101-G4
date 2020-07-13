package com.actreport.model;

import java.util.*;
import java.io.IOException;
import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ActReportJNDIDAO implements ActReportDAO_interface {
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = "INSERT INTO ACTIVITYREPORT (SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS) VALUES (actreport_seq.NEXTVAL, ?, ?, ?, 0)";
	private static final String UPDATE = "UPDATE ACTIVITYREPORT set REPORT_STATUS=? where SQ_ACTIVITYREPORT_ID = ?";
	private static final String GET_ONE_STMT = "SELECT SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS FROM ACTIVITYREPORT where SQ_ACTIVITYREPORT_ID = ?";
	private static final String GET_ONE_MEMBER = "SELECT SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS FROM ACTIVITYREPORT where SQ_MEMBER_ID = ?";
	private static final String GET_ALL_STMT = "SELECT SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS FROM ACTIVITYREPORT order by SQ_ACTIVITYREPORT_ID";
	private static final String GET_ONE_STATUS = "SELECT REPORT_STATUS FROM ACTIVITYREPORT where SQ_ACTIVITY_ID=?";

	@Override
	public void insert(ActReportVO actreportVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actreportVO.getSq_activity_id());
			pstmt.setString(2, actreportVO.getSq_member_id());
			pstmt.setString(3, actreportVO.getReport_reason());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public void update(ActReportVO actreportVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setInt(1, actreportVO.getReport_status());
			pstmt.setString(2, actreportVO.getSq_activityreport_id());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public List<ActReportVO> findByMemberId(String SQ_MEMBER_ID) {
		
		List<ActReportVO> list = new ArrayList<ActReportVO>();
		ActReportVO actfavorVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_MEMBER);

			pstmt.setString(1, SQ_MEMBER_ID);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				// empVo 也稱為 Domain01 objects
				actfavorVO = new ActReportVO();
				actfavorVO.setSq_activityreport_id(rs.getString("SQ_ACTIVITYREPORT_ID"));
				actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actfavorVO.setReport_reason(rs.getString("REPORT_REASON"));
				actfavorVO.setReport_status(rs.getInt("REPORT_STATUS"));
				list.add(actfavorVO);
			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}
	
	@Override
	public ActReportVO findByPrimaryKey(String SQ_ACTVITYREPORT_ID) {

		ActReportVO actreportVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, SQ_ACTVITYREPORT_ID);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				// empVo 也稱為 Domain01 objects
				actreportVO = new ActReportVO();
				actreportVO.setSq_activityreport_id(rs.getString("SQ_ACTIVITYREPORT_ID"));
				actreportVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actreportVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actreportVO.setReport_reason(rs.getString("REPORT_REASON"));
				actreportVO.setReport_status(rs.getInt("REPORT_STATUS"));

			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return actreportVO;
	}
	
	@Override
	public int findGpStatusByPK(String SQ_ACTVITY_ID) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STATUS);

			pstmt.setString(1, SQ_ACTVITY_ID);

			rs = pstmt.executeQuery();

			if(rs.next()) {
			    count=rs.getInt(1);
			   }

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return count;
	}



	@Override
	public List<ActReportVO> getAll() {
		List<ActReportVO> list = new ArrayList<ActReportVO>();
		ActReportVO actfavorVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO 也稱為 Domain objects
				actfavorVO = new ActReportVO();
				actfavorVO.setSq_activityreport_id(rs.getString("SQ_ACTIVITYREPORT_ID"));
				actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actfavorVO.setReport_reason(rs.getString("REPORT_REASON"));
				actfavorVO.setReport_status(rs.getInt("REPORT_STATUS"));

				list.add(actfavorVO); // Store the row in the list
			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}


	public static void main(String[] args) throws IOException {

		ActReportJNDIDAO dao = new ActReportJNDIDAO();
		// 新增
//		ActReportVO actreportVO1 = new ActReportVO();
//		actreportVO1.setSq_activity_id("ACT-700003");
//		actreportVO1.setSq_member_id("910002");
//		actreportVO1.setReport_reason("描述與事實不符");
//
//		dao.insert(actreportVO1);
//
//		// 修改
//		ActReportVO actreportVO2 = new ActReportVO();
//		actreportVO2.setReport_status(1);
//		actreportVO2.setSq_activityreport_id("710000");
//
//		dao.update(actreportVO2);

		

		// 查詢
//		ActReportVO actreportVO3 = dao.findByPrimaryKey("710000");
//		System.out.print(actreportVO3.getSq_activityreport_id() + ",");
//		System.out.print(actreportVO3.getSq_activity_id() + ",");
//		System.out.print(actreportVO3.getSq_member_id() + ",");
//		System.out.print(actreportVO3.getReport_reason() + ",");
//		System.out.print(actreportVO3.getReport_status());
//		System.out.println("---------------------");
////
//		// 查詢
		List<ActReportVO> list = dao.getAll();
		for (ActReportVO aActReport : list) {
			System.out.print(aActReport.getSq_activityreport_id() + ",");
			System.out.print(aActReport.getSq_activity_id() + ",");
			System.out.print(aActReport.getSq_member_id() + ",");
			System.out.print(aActReport.getReport_reason() + ",");
			System.out.print(aActReport.getReport_status());
			System.out.println();
		}

	}

}
