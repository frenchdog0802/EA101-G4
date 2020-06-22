package com.actfavor.model;

import java.io.IOException;
import java.sql.*;

public class ActFavorJDBCDAO implements ActFavorDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) VALUES (?, ?, ?)";
	private static final String DELETE_ACTFAVOR = "DELETE FROM ACT_FAVORITE where SQ_ACTIVITY_ID = ? and SQ_MEMBER_ID = ?";	

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
		public void delete(String SQ_ACTIVITY_ID, String SQ_MEMBER_ID) {

			Connection con = null;
			PreparedStatement pstmt = null;

			try {

				Class.forName(driver);
				con = DriverManager.getConnection(url, userid, passwd);
				pstmt = con.prepareStatement(DELETE_ACTFAVOR);

				pstmt.setString(1, SQ_ACTIVITY_ID);
				pstmt.setString(2, SQ_MEMBER_ID);

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



	public static void main(String[] args) throws IOException {

		ActFavorJDBCDAO dao = new ActFavorJDBCDAO();
		// 新增
		ActFavorVO actfavorVO1 = new ActFavorVO();
		actfavorVO1.setSq_activity_id("ACT-700010");
		actfavorVO1.setSq_member_id("910002");
		actfavorVO1.setFavorite_time(java.sql.Timestamp.valueOf("2020-05-20 10:15:17"));
		
		dao.insert(actfavorVO1);

		// 刪除
		dao.delete("ACT-700010", "910002");


	}

}
