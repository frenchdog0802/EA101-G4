package com.question.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionJDBCDAO implements QuestionDAO_interface{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO QUESTION (SQ_QUESTION_ID,QUESTION_TITLE,QUESTION_DESCRIPTION) VALUES (sq_QUESTION.NEXTVAL, ?, ?)";
	private static final String GET_ALL_STMT = "SELECT SQ_QUESTION_ID  , QUESTION_TITLE, QUESTION_DESCRIPTION  FROM QUESTION";
	private static final String GET_ONE_STMT = "SELECT SQ_QUESTION_ID  , QUESTION_TITLE, QUESTION_DESCRIPTION  FROM QUESTION where SQ_QUESTION_ID = ?";
	
	
	//private static final String DELETE_EMPs = "DELETE FROM TIPS where TIPS_description = ?";
	private static final String DELETE_QUESTION = "DELETE FROM QUESTION where SQ_QUESTION_ID = ?";	
	
	private static final String UPDATE = "UPDATE QUESTION set QUESTION_TITLE=?, QUESTION_DESCRIPTION=? where SQ_QUESTION_ID = ?";

	public void insert(QuestionVO questionVo) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			
			pstmt.setString(1, questionVo.getQuestion_title());
			pstmt.setString(2, questionVo.getQuestion_description());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
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

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);

			
			pstmt.setString(1, questionVo.getQuestion_title());
			pstmt.setString(2, questionVo.getQuestion_description());
			pstmt.setString(3, questionVo.getSq_question_id());
			
			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
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

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);

			
			con.setAutoCommit(false);


			pstmt = con.prepareStatement(DELETE_QUESTION);
			pstmt.setString(1, sq_question_id);
			pstmt.executeUpdate();

			
			con.commit();
			con.setAutoCommit(true);
			System.out.println("問卷調查編號" + sq_question_id);
			
			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
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



	public static void main(String[] args) {
		QuestionJDBCDAO dao = new QuestionJDBCDAO();

//		QuestionVO questionVo1 = new QuestionVO();
//		questionVo1.setSq_question_id("310011");
//		questionVo1.setQuestion_title("為什麼每踏一下，車座傳來聲響?");
//		questionVo1.setQuestion_description("車座可能鬆了，上緊就好。");
//		dao.insert(questionVo1);


//		QuestionVO questionVo2 = new QuestionVO();
//		
//		questionVo2.setQuestion_title("腳踏車在道路上如何通行？ 可以逆向嗎?2");
//		questionVo2.setQuestion_description("有自行車專用道的路段，就必須在專用道內行駛；沒有專用道的時候應靠右側路邊行駛，不可以進入快車道，左轉需兩段式，當然也不可以逆向。違規罰300-600元_2");
//		questionVo2.setSq_question_id("310011");
//		dao.update(questionVo2);

//		dao.delete("310011");


		QuestionVO questionVo3 = dao.findByPrimaryKey("310010");
		System.out.print(questionVo3.getSq_question_id() + ",");
		System.out.print(questionVo3.getQuestion_title() + ",");
		System.out.println(questionVo3.getQuestion_description());
		System.out.println("---------------------");

		// 查詢部門
		
//		List<QuestionVO> list = dao.getAll();
//		for (QuestionVO aDept : list) {
//			System.out.print(aDept.getSq_question_id () + ",");
//			System.out.print(aDept.getQuestion_title() + ",");
//			System.out.print(aDept.getQuestion_description());
//			System.out.println();
//			
//		}
		
		
	}


	@Override
	public QuestionVO findByPrimaryKey(String sq_question_id) {
		QuestionVO questionVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_question_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				questionVo = new QuestionVO();
				questionVo.setSq_question_id(rs.getString("sq_question_id"));
				questionVo.setQuestion_title(rs.getString("question_title"));
				questionVo.setQuestion_description(rs.getString("question_description"));
			}

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
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

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				questionVo = new QuestionVO();
				questionVo.setSq_question_id(rs.getString("sq_question_id"));
				questionVo.setQuestion_title(rs.getString("question_title"));
				questionVo.setQuestion_description(rs.getString("question_description"));
				list.add(questionVo); // Store the row in the list
			}

			
			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
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
