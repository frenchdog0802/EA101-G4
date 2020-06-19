package com.actjoin.model;

import java.util.*;

import com.act.model.ActVO;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;

public class ActJoinJDBCDAO implements ActJoinDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) VALUES (?, ?, ?)";
	private static final String UPDATE = "UPDATE JOINED_ACT_DETAIL set SQ_MEMBER_ID=?, JOIN_TIME=? where SQ_ACTIVITY_ID = ?";
	private static final String DELETE_ACTJOIN = "DELETE FROM JOINED_ACT_DETAIL where SQ_ACTIVITY_ID = ?";	
	private static final String GET_ONE_STMT = "SELECT SQ_ACTIVITY_ID, SQ_MEMBER_ID, JOIN_TIME FROM JOINED_ACT_DETAIL where SQ_ACTIVITY_ID = ?";
	private static final String GET_ALL_STMT = "SELECT SQ_ACTIVITY_ID, SQ_MEMBER_ID, JOIN_TIME FROM JOINED_ACT_DETAIL order by SQ_ACTIVITY_ID";

	@Override
	public void insert(ActJoinVO actjoinVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actjoinVO.getSq_activity_id());
			pstmt.setString(2, actjoinVO.getSq_member_id());
			pstmt.setTimestamp(3, actjoinVO.getJoin_time());
		
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
	public void update(ActJoinVO actjoinVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);
		
			pstmt.setString(1, actjoinVO.getSq_member_id());
			pstmt.setTimestamp(2, actjoinVO.getJoin_time());
			pstmt.setString(3, actjoinVO.getSq_activity_id());

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
		public void delete(String SQ_ACTIVITY_ID) {

			Connection con = null;
			PreparedStatement pstmt = null;

			try {

				Class.forName(driver);
				con = DriverManager.getConnection(url, userid, passwd);
				pstmt = con.prepareStatement(DELETE_ACTJOIN);

				pstmt.setString(1, SQ_ACTIVITY_ID);

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
	public ActJoinVO findByPrimaryKey(String SQ_ACTIVITY_ID) {

		ActJoinVO actjoinVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, SQ_ACTIVITY_ID);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				// empVo 也稱為 Domain01 objects
				actjoinVO = new ActJoinVO();
				actjoinVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actjoinVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actjoinVO.setJoin_time(rs.getTimestamp("JOIN_TIME"));
				
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
		return actjoinVO;
	}

	@Override
	public List<ActJoinVO> getAll() {
		List<ActJoinVO> list = new ArrayList<ActJoinVO>();
		ActJoinVO actjoinVO = null;

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
				actjoinVO = new ActJoinVO();
				actjoinVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actjoinVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actjoinVO.setJoin_time(rs.getTimestamp("JOIN_TIME"));

				list.add(actjoinVO); // Store the row in the list
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
	public void insert2 (ActJoinVO actjoinVO , Connection con) {

		PreparedStatement pstmt = null;

		try {

     		pstmt = con.prepareStatement(INSERT_STMT);

     		pstmt.setString(1, actjoinVO.getSq_activity_id());
			pstmt.setString(2, actjoinVO.getSq_member_id());
			pstmt.setTimestamp(3, actjoinVO.getJoin_time());
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
					throw new RuntimeException("rollback error occured. "
							+ excep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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

		ActJoinJDBCDAO dao = new ActJoinJDBCDAO();
		// 新增
		ActJoinVO actjoinVO1 = new ActJoinVO();
		actjoinVO1.setSq_activity_id("ACT-700010");
		actjoinVO1.setSq_member_id("910001");
		actjoinVO1.setJoin_time(java.sql.Timestamp.valueOf("2020-05-20 10:11:12"));
		
		dao.insert(actjoinVO1);

		// 修改
		
		ActJoinVO actjoinVO2 = new ActJoinVO();
		actjoinVO2.setSq_member_id("910002");
		actjoinVO2.setJoin_time(java.sql.Timestamp.valueOf("2020-06-19 09:10:11"));
		actjoinVO2.setSq_activity_id("ACT-700009");
	
		dao.update(actjoinVO2);
		
		// 刪除
		dao.delete("ACT-700010");

		// 查詢
		ActJoinVO actjoinVO3 = dao.findByPrimaryKey("ACT-700001");
		System.out.print(actjoinVO3.getSq_activity_id() + ",");
		System.out.print(actjoinVO3.getSq_member_id() + ",");
		System.out.print(actjoinVO3.getJoin_time() + ",");
		System.out.println("---------------------");

		// 查詢
		List<ActJoinVO> list = dao.getAll();
		for (ActJoinVO aActJoin : list) {
			System.out.print(aActJoin.getSq_activity_id() + ",");
			System.out.print(aActJoin.getSq_member_id() + ",");
			System.out.print(aActJoin.getJoin_time() + ",");
			System.out.println();
		}

	}

}
