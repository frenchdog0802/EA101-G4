package com.actreport.model;

import java.util.*;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;

public class ActReportJDBCDAO implements ActReportDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO ACTIVITYREPORT (SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS) VALUES (actreport_seq.NEXTVAL, ?, ?, ?, 0)";
	private static final String UPDATE = "UPDATE ACTIVITYREPORT set REPORT_STATUS=? where SQ_ACTIVITYREPORT_ID = ?";
	private static final String DELETE_ACTFAVOR = "DELETE FROM ACTIVITYREPORT where SQ_ACTIVITYREPORT_ID = ?";
	private static final String GET_ONE_STMT = "SELECT SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS FROM ACTIVITYREPORT where SQ_ACTIVITYREPORT_ID = ?";
	private static final String GET_ALL_STMT = "SELECT SQ_ACTIVITYREPORT_ID, SQ_ACTIVITY_ID, SQ_MEMBER_ID, REPORT_REASON, REPORT_STATUS FROM ACTIVITYREPORT order by SQ_ACTIVITYREPORT_ID";

	@Override
	public void insert(ActReportVO actreportVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actreportVO.getSq_activity_id());
			pstmt.setString(2, actreportVO.getSq_member_id());
			pstmt.setString(3, actreportVO.getReport_reason());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
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

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setInt(1, actreportVO.getReport_status());
			pstmt.setString(2, actreportVO.getSq_activityreport_id());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
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
	public void delete(String SQ_ACTIVITYREPORT_ID) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE_ACTFAVOR);

			pstmt.setString(1, SQ_ACTIVITYREPORT_ID);

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
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
	public ActReportVO findByPrimaryKey(String SQ_ACTIVITYREPORT_ID) {

		ActReportVO actfavorVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, SQ_ACTIVITYREPORT_ID);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				// empVo 也稱為 Domain01 objects
				actfavorVO = new ActReportVO();
				actfavorVO.setSq_activityreport_id(rs.getString("SQ_ACTIVITYREPORT_ID"));
				actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actfavorVO.setReport_reason(rs.getString("REPORT_REASON"));
				actfavorVO.setReport_status(rs.getInt("REPORT_STATUS"));

			}

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
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
		return actfavorVO;
	}

	@Override
	public List<ActReportVO> getAll() {
		List<ActReportVO> list = new ArrayList<ActReportVO>();
		ActReportVO actfavorVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO 也稱為 Domain objects
				actfavorVO = new ActReportVO();
				actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actfavorVO.setReport_reason(rs.getString("REPORT_REASON"));
				actfavorVO.setReport_status(rs.getInt("REPORT_STATUS"));

				list.add(actfavorVO); // Store the row in the list
			}

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
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
	public void insert2(ActReportVO actreportVO, Connection con) {

		PreparedStatement pstmt = null;

		try {

			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actreportVO.getSq_activity_id());
			pstmt.setString(2, actreportVO.getSq_member_id());
			pstmt.setString(3, actreportVO.getReport_reason());
			pstmt.executeUpdate();

			// Handle any SQL errors
		} catch (SQLException se) {
			if (con != null) {
				try {
					// 3●設定於當有exception發生時之catch區塊內
					System.err.print("Transaction is being ");
					System.err.println("rolled back-由-emp");
					con.rollback();
				} catch (SQLException excep) {
					throw new RuntimeException("rollback error occured. " + excep.getMessage());
				}
			}
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
		}

	}

	public static void main(String[] args) throws IOException {

		ActReportJDBCDAO dao = new ActReportJDBCDAO();
		// 新增
		ActReportVO actreportVO1 = new ActReportVO();
		actreportVO1.setSq_activity_id("ACT-700003");
		actreportVO1.setSq_member_id("910002");
		actreportVO1.setReport_reason("描述與事實不符");

		dao.insert(actreportVO1);

		// 修改
		ActReportVO actreportVO2 = new ActReportVO();
		actreportVO2.setReport_status(1);
		actreportVO2.setSq_activityreport_id("710002");

		dao.update(actreportVO2);

		// 刪除
		dao.delete("710002");

		// 查詢
		ActReportVO actreportVO3 = dao.findByPrimaryKey("710000");
		System.out.print(actreportVO3.getSq_activityreport_id() + ",");
		System.out.print(actreportVO3.getSq_activity_id() + ",");
		System.out.print(actreportVO3.getSq_member_id() + ",");
		System.out.print(actreportVO3.getReport_reason() + ",");
		System.out.print(actreportVO3.getReport_status());
		System.out.println("---------------------");

		// 查詢
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
