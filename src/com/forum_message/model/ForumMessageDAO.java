package com.forum_message.model;

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


public class ForumMessageDAO implements ForumMessage_interface{

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
			"INSERT INTO forum_message (sq_forum_message_id,sq_theme_id,sq_member_id,message_detail,message_time,message_display_status) VALUES (('FM'||'-'||LPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?, ?)";
		private static final String GET_ALL_STMT = 
			"SELECT * FROM forum_message order by sq_forum_message_id";
	private static final String GET_ONE_STMT = 
			"SELECT * FROM forum_message where sq_forum_message_id = ?"; // sq_member_id?
	private static final String DELETE = 
			"DELETE FROM forum_message where sq_forum_message_id = ?";
	private static final String UPDATE = 
			"UPDATE forum_message set sq_theme_id=?, sq_member_id=?, message_detail=?, message_time=?, message_display_status=? where sq_forum_message_id=?";
	private static final String GET_THEME_MESSAGE =
			"SELECT * FROM forum_message where sq_theme_id=?";

	
	@Override
	public void insert(ForumMessageVO forummessageVO) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, forummessageVO.getSq_theme_id());
			pstmt.setString(2, forummessageVO.getSq_member_id());
			pstmt.setString(3, forummessageVO.getMessage_detail());
			pstmt.setDate(4, forummessageVO.getMessage_time());
			pstmt.setInt(5, forummessageVO.getMessage_display_status());
			

			pstmt.executeUpdate();

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
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, forummessageVO.getSq_theme_id());
			pstmt.setString(2, forummessageVO.getSq_member_id());
			pstmt.setString(3, forummessageVO.getMessage_detail());
			pstmt.setDate(4, forummessageVO.getMessage_time());
			pstmt.setInt(5, forummessageVO.getMessage_display_status());
			pstmt.setString(6, forummessageVO.getSq_forum_message_id());

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
	public void delete(String sq_forum_message_id) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_forum_message_id);
			pstmt.executeUpdate();

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
			con = ds.getConnection();
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
			con = ds.getConnection();
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
			con = ds.getConnection();
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

	
}
