package com.question.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class QuestionDAO implements QuestionDAO_interface {

	
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = "INSERT INTO QUESTION (QUESTION_TITLE,QUESTION_DESCIPTION) VALUES (?, ?)";
	private static final String GET_ALL_STMT = "SELECT SQ_QUESTION_ID  , QUESTION_TITLE, QUESTION_DESCRIPTION  FROM QUESTION";
	private static final String GET_ONE_STMT = "SELECT SQ_QUESTION_ID  , QUESTION_TITLE, QUESTION_DESCRIPTION  FROM QUESTION where SQ_QUESTION_ID = ?";
	
	private static final String DELETE_QUESTION = "DELETE FROM QUESTION where SQ_QUESTION_ID = ?";	
	
	private static final String UPDATE = "UPDATE QUESTION set QUESTION_TITLE=?, QUESTION_DESCRIPTION=? where SQ_QUESTION_ID = ?";

	@Override
	public void insert(QuestionVO questionVo) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, questionVo.getQuestion_title());
			pstmt.setString(2, questionVo.getQuestion_desciption());

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
	public void update(QuestionVO questionVo) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, questionVo.getQuestion_title());
			pstmt.setString(2, questionVo.getQuestion_desciption());
			pstmt.setString(3, questionVo.getSq_question_id());

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
	public void delete(String sq_question_id) {
		
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();

			
			con.setAutoCommit(false);

		
			pstmt = con.prepareStatement(DELETE_QUESTION);
			pstmt.setString(1, sq_question_id);
			pstmt.executeUpdate();

			
			con.commit();
			con.setAutoCommit(true);
			System.out.println("刪除問卷編號" + sq_question_id);
			
			// Handle any SQL errors
		} catch (SQLException se) {
			if (con != null) {
				try {
					
					con.rollback();
				} catch (SQLException excep) {
					throw new RuntimeException("rollback error occured. "
							+ excep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
	public QuestionVO findByPrimaryKey(String sq_question_id) {

		QuestionVO questionVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_question_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				questionVo = new QuestionVO();
				questionVo.setSq_question_id(rs.getString("sq_question_id"));
				questionVo.setQuestion_title(rs.getString("question_title"));
				questionVo.setQuestion_desciption(rs.getString("question_desciption"));
			}

			// Handle any SQL errors
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
		return questionVo;
	}


	@Override
	public List<QuestionVO> getAll() {
		List<QuestionVO> list = new ArrayList<QuestionVO>();
		QuestionVO questionVo = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				questionVo = new QuestionVO();
				questionVo.setSq_question_id(rs.getString("sq_question_id"));
				questionVo.setQuestion_title(rs.getString("question_title"));
				questionVo.setQuestion_desciption(rs.getString("question_desciption"));
				list.add(questionVo); // Store the row in the list
			}

			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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