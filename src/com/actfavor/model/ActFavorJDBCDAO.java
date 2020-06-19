package com.actfavor.model;

import java.util.*;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;

public class ActFavorJDBCDAO implements ActFavorDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) VALUES (?, ?, ?)";
	private static final String UPDATE = "UPDATE ACT_FAVORITE set SQ_MEMBER_ID=?, FAVORITE_TIME=? where SQ_ACTIVITY_ID = ?";
	private static final String DELETE_ACTFAVOR = "DELETE FROM ACT_FAVORITE where SQ_ACTIVITY_ID = ?";	
	private static final String GET_ONE_STMT = "SELECT SQ_ACTIVITY_ID, SQ_MEMBER_ID, FAVORITE_TIME FROM ACT_FAVORITE where SQ_ACTIVITY_ID = ?";
	private static final String GET_ALL_STMT = "SELECT SQ_ACTIVITY_ID, SQ_MEMBER_ID, FAVORITE_TIME FROM ACT_FAVORITE order by SQ_ACTIVITY_ID";

	@Override
	public void insert(ActFavorVO actfavorVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actfavorVO.getSq_activity_id());
			pstmt.setString(2, actfavorVO.getSq_member_id());
			pstmt.setTimestamp(3, actfavorVO.getFavorite_time());
		
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
	public void update(ActFavorVO actfavorVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);
		
			pstmt.setString(1, actfavorVO.getSq_member_id());
			pstmt.setTimestamp(2, actfavorVO.getFavorite_time());
			pstmt.setString(3, actfavorVO.getSq_activity_id());

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
				pstmt = con.prepareStatement(DELETE_ACTFAVOR);

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
	public ActFavorVO findByPrimaryKey(String SQ_ACTIVITY_ID) {

		ActFavorVO actfavorVO = null;
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
				actfavorVO = new ActFavorVO();
				actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actfavorVO.setFavorite_time(rs.getTimestamp("FAVORITE_TIME"));
				
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
	public List<ActFavorVO> getAll() {
		List<ActFavorVO> list = new ArrayList<ActFavorVO>();
		ActFavorVO actjoinVO = null;

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
				actjoinVO = new ActFavorVO();
				actjoinVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actjoinVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actjoinVO.setFavorite_time(rs.getTimestamp("FAVORITE_TIME"));

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
	public void insert2 (ActFavorVO actfavorVO , Connection con) {

		PreparedStatement pstmt = null;

		try {

     		pstmt = con.prepareStatement(INSERT_STMT);

     		pstmt.setString(1, actfavorVO.getSq_activity_id());
			pstmt.setString(2, actfavorVO.getSq_member_id());
			pstmt.setTimestamp(3, actfavorVO.getFavorite_time());
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

		ActFavorJDBCDAO dao = new ActFavorJDBCDAO();
		// 新增
		ActFavorVO actfavorVO1 = new ActFavorVO();
		actfavorVO1.setSq_activity_id("ACT-700010");
		actfavorVO1.setSq_member_id("910002");
		actfavorVO1.setFavorite_time(java.sql.Timestamp.valueOf("2020-05-20 10:15:17"));
		
		dao.insert(actfavorVO1);

		// 修改
		ActFavorVO actfavorVO2 = new ActFavorVO();
		actfavorVO2.setSq_member_id("910002");
		actfavorVO2.setFavorite_time(java.sql.Timestamp.valueOf("2020-06-19 09:10:11"));
		actfavorVO2.setSq_activity_id("ACT-700009");
	
		dao.update(actfavorVO2);
		
		// 刪除
		dao.delete("ACT-700010");

		// 查詢
		ActFavorVO actfavorVO3 = dao.findByPrimaryKey("ACT-700001");
		System.out.print(actfavorVO3.getSq_activity_id() + ",");
		System.out.print(actfavorVO3.getSq_member_id() + ",");
		System.out.print(actfavorVO3.getFavorite_time() + ",");
		System.out.println("---------------------");

		// 查詢
		List<ActFavorVO> list = dao.getAll();
		for (ActFavorVO aActFavor : list) {
			System.out.print(aActFavor.getSq_activity_id() + ",");
			System.out.print(aActFavor.getSq_member_id() + ",");
			System.out.print(aActFavor.getFavorite_time() + ",");
			System.out.println();
		}

	}

}
