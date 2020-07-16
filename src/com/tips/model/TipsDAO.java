package com.tips.model;
import java.util.*;
import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class TipsDAO implements TipsDAO_interface {

	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}

}

	private static final String INSERT_STMT = 
			"INSERT INTO TIPS (SQ_TIPS_ID,TIPS_TITLE ,TIPS_DESCRIPTION) VALUES (sq_TIPS.NEXTVAL, ?, ?)";
		private static final String GET_ALL_STMT = 
			"SELECT * FROM TIPS order by TIPS_TITLE ";
		private static final String GET_ONE_STMT = 
			"SELECT * FROM TIPS where SQ_TIPS_ID = ?";
		private static final String DELETE = 
			"DELETE FROM TIPS where SQ_TIPS_ID = ?";
		private static final String UPDATE = 
			"UPDATE TIPS set  TIPS_TITLE=?, TIPS_DESCRIPTION=? where SQ_TIPS_ID = ?";
		
		private static final String GET_ONE_STMT_des = 
				"SELECT * FROM TIPS where TIPS_TITLE = ?";


		
		@Override
	public List<TipsVO> findByTitle(Integer tips_title) {
			List<TipsVO> list = new ArrayList<TipsVO>();
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(GET_ONE_STMT_des);
				pstmt.setInt(1, tips_title);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					TipsVO tipsVo  = new TipsVO();
					tipsVo.setSq_tips_id(rs.getString("SQ_TIPS_ID"));
					tipsVo.setTips_title(rs.getInt("TIPS_TITLE"));
					tipsVo.setTips_description(rs.getString("TIPS_DESCRIPTION"));
					list.add(tipsVo);
				}

				// Handle any driver errors
			} catch (SQLException se) {
				throw new RuntimeException("A database error occured. "
						+ se.getMessage());
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
	public List<TipsVO> getAll() {
		List<TipsVO> list = new ArrayList<TipsVO>();
		TipsVO tipsVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				tipsVo = new TipsVO();
				tipsVo.setSq_tips_id(rs.getString("SQ_TIPS_ID"));
				tipsVo.setTips_title(rs.getInt("TIPS_TITLE"));
				tipsVo.setTips_description(rs.getString("TIPS_DESCRIPTION"));
				list.add(tipsVo); // Store the row in the list
			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
	public void insert(TipsVO tipsVo) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);
			pstmt.setInt(1, tipsVo.getTips_title());
			pstmt.setString(2, tipsVo.getTips_description());
			pstmt.executeUpdate();

			// Handle any SQL errors
		} catch (SQLException se) {
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
	public void update(TipsVO tipsVo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);
			pstmt.setInt(1, tipsVo.getTips_title());
			pstmt.setString(2, tipsVo.getTips_description());
			pstmt.setString(3, tipsVo.getSq_tips_id());
			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
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
	public void delete(String sq_tips_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);
			pstmt.setString(1, sq_tips_id);
			pstmt.executeUpdate();
			// Handle any driver errors
		} catch (SQLException se) {
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
	public TipsVO findByPrimaryKey(String sq_tips_id) {
		TipsVO tipsVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);
			pstmt.setString(1, sq_tips_id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				tipsVo = new TipsVO();
				tipsVo.setSq_tips_id(rs.getString("SQ_TIPS_ID"));
				tipsVo.setTips_title(rs.getInt("TIPS_TITLE"));
				tipsVo.setTips_description(rs.getString("TIPS_DESCRIPTION"));
			}
			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
		return tipsVo;
	}
}