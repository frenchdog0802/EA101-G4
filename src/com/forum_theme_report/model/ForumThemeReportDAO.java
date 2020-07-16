package com.forum_theme_report.model;

import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ForumThemeReportDAO implements ForumThemeReportDAO_interface {

	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	// u3uv84以下未完
	private static final String INSERT_STMT = "INSERT INTO forum_theme_report (sq_theme_report_id,sq_theme_id,sq_member_id,theme_report_detail,theme_report_time,theme_report_type) VALUES (('TR'||'-'||RPAD(to_char(theme_report_id_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?, ?,)";
	private static final String GET_ALL_STMT = "SELECT sq_theme_report_id,sq_theme_id,sq_member_id,theme_report_detail,to_char(theme_report_time,'yyyy-mm-dd') theme_report_time,theme_report_type FROM forum_theme_report order by sq_theme_report_id";
	private static final String GET_ONE_STMT = "SELECT sq_theme_report_id,sq_theme_id,sq_member_id,theme_report_detail,to_char(theme_report_time,'yyyy-mm-dd') theme_report_time,theme_report_type FROM forum_theme_report order by sq_theme_report_id";
	private static final String DELETE = "DELETE FROM forum_theme_report where sq_theme_report_id = ?";
	private static final String UPDATE = "UPDATE forum_theme_report set sq_theme_report_id=?,sq_theme_id=?,sq_member_id=?,theme_report_detail=?,theme_report_time=?,theme_report_type=? where sq_theme_report_id = ?";
	
	@Override
	public void insert(ForumThemeReportVO forumthemereportVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, forumthemereportVO.getSq_theme_id());
			pstmt.setString(2, forumthemereportVO.getSq_member_id());
			pstmt.setClob(3, forumthemereportVO.getTheme_report_detail());
			pstmt.setDate(4, forumthemereportVO.getTheme_report_time());
			pstmt.setInt(5, forumthemereportVO.getTheme_report_type());

			pstmt.executeUpdate();

		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());

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
	public void update(ForumThemeReportVO forumthemereportVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, forumthemereportVO.getSq_theme_report_id());
			pstmt.setString(2, forumthemereportVO.getSq_theme_id());
			pstmt.setString(3, forumthemereportVO.getSq_member_id());
			pstmt.setClob(4, forumthemereportVO.getTheme_report_detail());
			pstmt.setDate(5, forumthemereportVO.getTheme_report_time());
			pstmt.setInt(6, forumthemereportVO.getTheme_report_type());
			pstmt.setString(7, forumthemereportVO.getSq_theme_report_id());
			
			pstmt.executeUpdate();
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());

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
	public void delete(String sq_theme_report_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_theme_report_id);
			pstmt.executeUpdate();

		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());

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
	public ForumThemeReportVO findByPrimaryKey(String sq_theme_report_id) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ForumThemeReportVO forumthemereportVO = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_theme_report_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				forumthemereportVO = new ForumThemeReportVO();
				forumthemereportVO.setSq_theme_report_id(rs.getString("sq_theme_report_id"));
				forumthemereportVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forumthemereportVO.setSq_member_id(rs.getString("sq_member_id"));
				forumthemereportVO.setTheme_report_detail(rs.getClob("theme_report_detail"));
				forumthemereportVO.setTheme_report_time(rs.getDate("theme_report_time"));
				forumthemereportVO.setTheme_report_type(rs.getInt("theme_report_type"));
			}
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());

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
		return forumthemereportVO;
	}

	@Override
	public List<ForumThemeReportVO> getAll() {
		List<ForumThemeReportVO> list = new ArrayList<ForumThemeReportVO>();
		ForumThemeReportVO empVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ForumThemeReportVO forumthemereportVO = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {

				forumthemereportVO = new ForumThemeReportVO();
				forumthemereportVO.setSq_theme_report_id(rs.getString("sq_theme_report_id"));
				forumthemereportVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forumthemereportVO.setSq_member_id(rs.getString("sq_member_id"));
				forumthemereportVO.setTheme_report_detail(rs.getClob("theme_report_detail"));
				forumthemereportVO.setTheme_report_time(rs.getDate("theme_report_time"));
				forumthemereportVO.setTheme_report_type(rs.getInt("theme_report_type"));
				list.add(forumthemereportVO);
			}
			
		}catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());

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

}
