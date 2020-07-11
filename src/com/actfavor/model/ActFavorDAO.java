package com.actfavor.model;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ActFavorDAO implements ActFavorDAO_interface {
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = "INSERT INTO ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) VALUES (?, ?, ?)";
	private static final String DELETE_ACTFAVOR = "DELETE FROM ACT_FAVORITE where SQ_ACTIVITY_ID = ? and SQ_MEMBER_ID = ?";	
	private static final String GET_ALL_STMT = "SELECT * FROM ACT_FAVORITE order by SQ_ACTIVITY_ID";
	private static final String GET_ONE_MEMBER = "SELECT * FROM ACT_FAVORITE where SQ_MEMBER_ID = ?";
	@Override
	public void insert(ActFavorVO actfavorVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actfavorVO.getSq_activity_id());
			pstmt.setString(2, actfavorVO.getSq_member_id());
			pstmt.setTimestamp(3, actfavorVO.getFavorite_time());
		
			pstmt.executeUpdate();

			// Handle any driver errors
		}  catch (SQLException se) {
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

				con = ds.getConnection();
				pstmt = con.prepareStatement(DELETE_ACTFAVOR);

				pstmt.setString(1, SQ_ACTIVITY_ID);
				pstmt.setString(2, SQ_MEMBER_ID);

				pstmt.executeUpdate();

				// Handle any driver errors
			}  catch (SQLException se) {
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
		public List<ActFavorVO> getAll() {
			List<ActFavorVO> list = new ArrayList<ActFavorVO>();
			ActFavorVO actfavorVO = null;

			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {

				con = ds.getConnection();
				pstmt = con.prepareStatement(GET_ALL_STMT);
				rs = pstmt.executeQuery();

				while (rs.next()) {
					// empVO 也稱為 Domain objects
					actfavorVO = new ActFavorVO();
					actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
					actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
					actfavorVO.setFavorite_time(rs.getTimestamp("FAVORITE_TIME"));

					list.add(actfavorVO); // Store the row in the list
				}

				// Handle any driver errors
			}  catch (SQLException se) {
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
		public List<ActFavorVO> findByMemberId(String SQ_MEMBER_ID) { //用會員自己的ID搜尋收藏的活動

			List<ActFavorVO> list = new ArrayList<ActFavorVO>();
			ActFavorVO actfavorVO = null;
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {

				con = ds.getConnection();
				pstmt = con.prepareStatement(GET_ONE_MEMBER);

				pstmt.setString(1, SQ_MEMBER_ID);

				rs = pstmt.executeQuery();

				while (rs.next()) {

					actfavorVO = new ActFavorVO();
					actfavorVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
					actfavorVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
					actfavorVO.setFavorite_time(rs.getTimestamp("FAVORITE_TIME"));
					list.add(actfavorVO);
				}

				// Handle any driver errors
			}  catch (SQLException se) {
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

		ActFavorDAO dao = new ActFavorDAO();
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
