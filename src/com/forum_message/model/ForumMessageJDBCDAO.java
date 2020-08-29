package com.forum_message.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ForumMessageJDBCDAO implements ForumMessage_interface {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO forum_message (sq_forum_message_id,sq_theme_id,sq_member_id,message_detail,message_time,message_display_status) VALUES (('FM'||'-'||LPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = "SELECT * FROM forum_message order by sq_forum_message_id";																				
	private static final String GET_ONE_STMT = "SELECT * FROM forum_message where sq_forum_message_id = ?"; // sq_member_id?
	private static final String DELETE = "DELETE FROM forum_message where sq_forum_message_id = ?";
	private static final String UPDATE = "UPDATE forum_message set sq_theme_id=?, sq_member_id=?, message_detail=?, message_time=?, message_display_status=? where sq_forum_message_id=?";
	private static final String GET_THEME_MESSAGE ="SELECT * FROM forum_message where sq_theme_id=?";

	@Override
	public void insert(ForumMessageVO forummessageVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, forummessageVO.getSq_theme_id());
			pstmt.setString(2, forummessageVO.getSq_member_id());
			pstmt.setString(3, forummessageVO.getMessage_detail());
			pstmt.setDate(4, forummessageVO.getMessage_time());
			pstmt.setInt(5, forummessageVO.getMessage_display_status());

			pstmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());

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
	public void update(ForumMessageVO forummessageVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, forummessageVO.getSq_theme_id());
			pstmt.setString(2, forummessageVO.getSq_member_id());
			pstmt.setString(3, forummessageVO.getMessage_detail());
			pstmt.setDate(4, forummessageVO.getMessage_time());
			pstmt.setInt(5, forummessageVO.getMessage_display_status());
			pstmt.setString(6, forummessageVO.getSq_forum_message_id());

			pstmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
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
	public void delete(String sq_forum_message_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_forum_message_id);
			pstmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());

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
	public ForumMessageVO findByPrimaryKey(String sq_forum_message_id) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ForumMessageVO forummessageVO = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_forum_message_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				forummessageVO = new ForumMessageVO();

				forummessageVO.setSq_forum_message_id(rs.getString("sq_forum_message_id"));
				forummessageVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forummessageVO.setSq_member_id(rs.getString("sq_member_id"));
				forummessageVO.setMessage_detail(rs.getString("message_detail"));
				forummessageVO.setMessage_time(rs.getDate("message_time"));
				forummessageVO.setMessage_display_status(rs.getInt("message_display_status"));

			}
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());

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
		return forummessageVO;
	}

	@Override
	public List<ForumMessageVO> getAll() {

		List<ForumMessageVO> list = new ArrayList<ForumMessageVO>();
		ForumMessageVO forummessageVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				forummessageVO = new ForumMessageVO();

				forummessageVO.setSq_forum_message_id(rs.getString("sq_forum_message_id"));
				forummessageVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forummessageVO.setSq_member_id(rs.getString("sq_member_id"));
				forummessageVO.setMessage_detail(rs.getString("message_detail"));
				forummessageVO.setMessage_time(rs.getDate("message_time"));
				forummessageVO.setMessage_display_status(rs.getInt("message_display_status"));

				list.add(forummessageVO);
			}

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());

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

	@Override
	public List<ForumMessageVO> getMessageBySq_theme_id(String Sq_theme_id) {

		List<ForumMessageVO> list = new ArrayList<ForumMessageVO>();
		ForumMessageVO forummessageVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_THEME_MESSAGE);
			
			pstmt.setString(1, Sq_theme_id);
			pstmt.executeUpdate();
			
			rs = pstmt.executeQuery();
			while (rs.next()) {

				forummessageVO = new ForumMessageVO();
				
				forummessageVO.setSq_forum_message_id(rs.getString("sq_forum_message_id"));
				forummessageVO.setSq_theme_id(rs.getString("sq_theme_id"));
				forummessageVO.setSq_member_id(rs.getString("sq_member_id"));
				forummessageVO.setMessage_detail(rs.getString("message_detail"));
				forummessageVO.setMessage_time(rs.getDate("message_time"));
				forummessageVO.setMessage_display_status(rs.getInt("message_display_status"));

				list.add(forummessageVO);
			}

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());

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

	public static void main(String[] args) {
		ForumMessageJDBCDAO dao = new ForumMessageJDBCDAO();
//		ForumMessageVO forumMessageVO1 = new ForumMessageVO();
//	
//		forumMessageVO1.setSq_theme_id("sfafsafas");
//		forumMessageVO1.setSq_member_id("910002");
//		forumMessageVO1.setMessage_detail("message_detail");
//		forumMessageVO1.setMessage_time(java.sql.Date.valueOf("2000-01-01"));
//		forumMessageVO1.setMessage_display_status(0);
//		dao.insert(forumMessageVO1);

		// 查詢
//		ForumMessageVO forumMessageVO2 = dao.findByPrimaryKey("FM-420001");
//		System.out.println(forumMessageVO2.getSq_forum_message_id() + ",");
//		System.out.println(forumMessageVO2.getSq_theme_id() + ",");
//		System.out.println(forumMessageVO2.getSq_member_id() + ",");
//		System.out.println(forumMessageVO2.getMessage_detail() + ",");
//		System.out.println(forumMessageVO2.getMessage_time() + ",");
//		System.out.println(forumMessageVO2.getMessage_display_status() + ",");
//		System.out.println("---------------------");

		List<ForumMessageVO> list = dao.getAll();
		for (ForumMessageVO allMessage : list) {
			System.out.print(allMessage.getSq_forum_message_id() + ",");
			System.out.print(allMessage.getSq_theme_id() + ",");
			System.out.print(allMessage.getSq_member_id() + ",");
			System.out.print(allMessage.getMessage_detail() + ",");
			System.out.print(allMessage.getMessage_time() + ",");
			System.out.print(allMessage.getMessage_display_status() + ",");

			System.out.println();
		}

		List<ForumMessageVO> list2 = dao.getMessageBySq_theme_id("TM-400001");
		for (ForumMessageVO ThemeMessage : list2) {
			System.out.print(ThemeMessage.getSq_forum_message_id() + ",");
			System.out.print(ThemeMessage.getSq_theme_id() + ",");
			System.out.print(ThemeMessage.getSq_member_id() + ",");
			System.out.print(ThemeMessage.getMessage_detail() + ",");
			System.out.print(ThemeMessage.getMessage_time() + ",");
			System.out.print(ThemeMessage.getMessage_display_status() + ",");

			System.out.println();
		}
	}

}
