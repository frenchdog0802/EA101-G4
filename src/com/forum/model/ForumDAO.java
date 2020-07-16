package com.forum.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ForumDAO implements ForumDAO_interface {

	
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
			"INSERT INTO forum (sq_theme_id,sq_member_id,theme_name,theme_time,reponse_sum,theme_detial,theme_pic,theme_display_status) VALUES (('TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
			"SELECT sq_theme_id,sq_member_id,theme_name,to_char(theme_time,'yyyy-mm-dd') theme_time,reponse_sum,theme_detial,theme_pic,theme_display_status FROM forum order by sq_theme_id";
	private static final String GET_ONE_STMT = 
			"SELECT sq_theme_id,sq_member_id,theme_name,to_char(theme_time,'yyyy-mm-dd') theme_time,reponse_sum,theme_detial,theme_pic,theme_display_status FROM forum where sq_theme_id = ?";
	private static final String DELETE = 
			"DELETE FROM forum where sq_theme_id = ?";
	private static final String UPDATE = 
			"UPDATE forum set sq_member_id=?,theme_name=?,theme_time=?,reponse_sum=?,theme_detial=?,theme_pic=?,theme_display_status=? where sq_theme_id = ?";
	private static final String GET_MEMBER_THEME = 
			"SELECT * FROM forum where sq_member_id=?";

	
	@Override
	public void insert(ForumVO forumVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, forumVO.getSq_member_id());
			pstmt.setString(2, forumVO.getTheme_name());
			pstmt.setDate(3, forumVO.getTheme_time());
			pstmt.setInt(4, forumVO.getReponse_sum());
			pstmt.setString(5, forumVO.getTheme_detial());
			pstmt.setBytes(6, forumVO.getTheme_pic());
			pstmt.setInt(7, forumVO.getTheme_display_status());

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
	public void update(ForumVO forumVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, forumVO.getSq_member_id());
			pstmt.setString(2, forumVO.getTheme_name());
			pstmt.setDate(3, forumVO.getTheme_time());
			pstmt.setInt(4, forumVO.getReponse_sum());
			pstmt.setString(5, forumVO.getTheme_detial());
			pstmt.setBytes(6, forumVO.getTheme_pic());
			pstmt.setInt(7, forumVO.getTheme_display_status());
			pstmt.setString(8, forumVO.getSq_theme_id());

			pstmt.executeUpdate();

		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred." + se.getMessage());

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
	public void delete(String sq_theme_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_theme_id);
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
	public ForumVO findByPrimaryKey(String sq_theme_id) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ForumVO forumVO = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_theme_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				forumVO = new ForumVO();
				forumVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forumVO.setSq_member_id(rs.getNString("sq_member_id"));
				forumVO.setTheme_name(rs.getString("Theme_name"));
				forumVO.setTheme_time(rs.getDate("Theme_time"));
				forumVO.setReponse_sum(rs.getInt("reponse_sum"));
				forumVO.setTheme_detial(rs.getString("theme_detial"));
				forumVO.setTheme_pic(rs.getBytes("theme_pic"));
				forumVO.setTheme_display_status(rs.getInt("theme_display_status"));
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

		return forumVO;
	}

	@Override
	public List<ForumVO> getAll() {
		List<ForumVO> list = new ArrayList<ForumVO>();
		ForumVO forumVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				forumVO = new ForumVO();
				forumVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forumVO.setSq_member_id(rs.getNString("sq_member_id"));
				forumVO.setTheme_name(rs.getString("Theme_name"));
				forumVO.setTheme_time(rs.getDate("Theme_time"));
				forumVO.setReponse_sum(rs.getInt("reponse_sum"));
				forumVO.setTheme_detial(rs.getString("theme_detial"));
				forumVO.setTheme_pic(rs.getBytes("theme_pic"));
				forumVO.setTheme_display_status(rs.getInt("theme_display_status"));
				list.add(forumVO);
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
		return list;
	}
	@Override
	public List<ForumVO> getThemebySq_member_id(String sq_member_id) {

		List<ForumVO> list = new ArrayList<ForumVO>();
		ForumVO forumVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_MEMBER_THEME);

			pstmt.setString(1, sq_member_id);
			pstmt.executeUpdate();

			rs = pstmt.executeQuery();
			while (rs.next()) {

				forumVO = new ForumVO();

				forumVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forumVO.setSq_member_id(rs.getString("sq_member_id"));
				forumVO.setTheme_name(rs.getString("Theme_name"));
				forumVO.setTheme_time(rs.getDate("Theme_time"));
				forumVO.setReponse_sum(rs.getInt("reponse_sum"));
				forumVO.setTheme_detial(rs.getString("theme_detial"));
				forumVO.setTheme_pic(rs.getBytes("theme_pic"));
				forumVO.setTheme_display_status(rs.getInt("theme_display_status"));

				list.add(forumVO);
			}

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
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
	
//	public static void main(String[] args) {
//
//		ForumJDBCDAO dao = new ForumJDBCDAO();
//		ForumVO forumVO = new ForumVO();

		// 新增
//		forumVO.setSq_member_id("910001");
//		forumVO.setTheme_name("hello world");
//		forumVO.setTheme_time(java.sql.Date.valueOf("2000-01-01"));
//		forumVO.setReponse_sum(0);
//		forumVO.setTheme_detial("safsasgdsgsadg");
//		forumVO.setTheme_pic(null);
//		forumVO.setTheme_display_status(0);
//		dao.insert(forumVO);
//		System.out.println("新增");
//		

		// 修改
//		ForumVO forumVO1 = new ForumVO();
//		forumVO1.setSq_theme_id("TM-400006");
//		forumVO1.setSq_member_id("910001");
//		forumVO1.setTheme_name("hello worldasfsaf");
//		forumVO1.setTheme_time(java.sql.Date.valueOf("2000-01-01"));
//		forumVO1.setReponse_sum(0);
//		forumVO1.setTheme_detial("123464987safsasgdsgsadg");
//		forumVO1.setTheme_pic(null);
//		forumVO1.setTheme_display_status(0);
//		dao.update(forumVO1);
//		

		// 查詢
//		ForumVO forumVO2 = dao.findByPrimaryKey("TM-400004");
//
//		System.out.print(forumVO2.getSq_theme_id() + ",");
//		System.out.print(forumVO2.getSq_member_id() + ",");
//		System.out.print(forumVO2.getTheme_name() + ",");
//		System.out.print(forumVO2.getTheme_time() + ",");
//		System.out.print(forumVO2.getReponse_sum() + ",");
//		System.out.print(forumVO2.getTheme_detial() + ",");
//		System.out.print(forumVO2.getTheme_pic() + ",");
//		System.out.println(forumVO2.getTheme_display_status() + ",");
//		System.out.println("---------------------");
//		
//		
//		
//		List<ForumVO> list = dao.getAll();
//		for(ForumVO allForum : list ) {
//			System.out.print(allForum.getSq_theme_id() + ",");
//			System.out.print(allForum.getSq_member_id() + ",");
//			System.out.print(allForum.getTheme_name() + ",");
//			System.out.print(allForum.getTheme_time() + ",");
//			System.out.print(allForum.getReponse_sum() + ",");
//			System.out.print(allForum.getTheme_detial() + ",");
//			System.out.print(allForum.getTheme_pic()+ ",");
//			System.out.println(allForum.getTheme_display_status());
//			System.out.println();
//		}

//		List<ForumVO> list = dao.getThemebySq_member_id("910002");
//		for (ForumVO allForum : list) {
//			System.out.print(allForum.getSq_theme_id() + ",");
//			System.out.print(allForum.getSq_member_id() + ",");
//			System.out.print(allForum.getTheme_name() + ",");
//			System.out.print(allForum.getTheme_time() + ",");
//			System.out.print(allForum.getReponse_sum() + ",");
//			System.out.print(allForum.getTheme_detial() + ",");
//			System.out.print(allForum.getTheme_pic() + ",");
//			System.out.println(allForum.getTheme_display_status());
//			System.out.println();

//		}
//	}

	

}
