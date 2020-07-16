 package com.tips.model;

import java.util.*;

import com.tips.model.TipsJDBCDAO;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;

public class TipsJDBCDAO implements TipsDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = 
		"INSERT INTO TIPS (SQ_TIPS_ID,TIPS_PICTURE,TIPS_TITLE ,TIPS_DESCRIPTION) VALUES (sq_TIPS.NEXTVAL, ?, ?,?)";
	private static final String GET_ALL_STMT = 
		"SELECT SQ_TIPS_ID,TIPS_PICTURE,TIPS_TITLE ,TIPS_DESCRIPTION FROM TIPS";
	private static final String GET_ONE_STMT = 
		"SELECT SQ_TIPS_ID,TIPS_PICTURE,TIPS_TITLE ,TIPS_DESCRIPTION FROM TIPS where SQ_TIPS_ID = ?";
	private static final String DELETE = 
		"DELETE FROM TIPS where TIPS_DESCRIPTION = ?";
	private static final String UPDATE = 
		"UPDATE TIPS set TIPS_PICTURE=?, TIPS_TITLE=?, TIPS_DESCRIPTION=? where SQ_TIPS_ID = ?";


	@Override
	public void insert(TipsVO tipsVo) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setBytes(1, tipsVo.getTips_picture());
			pstmt.setString(2, tipsVo.getTips_title());
			pstmt.setString(3, tipsVo.getTips_description());
						

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
	public void update(TipsVO tipsVo) {
		
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setBytes(1, tipsVo.getTips_picture());
			pstmt.setString(2, tipsVo.getTips_title());
			pstmt.setString(3, tipsVo.getTips_description());

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
	public void delete(String sq_tips_id) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_tips_id);

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
	public TipsVO findByPrimaryKey(String sq_tips_id) {
		
		TipsVO tipsVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_tips_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				tipsVo = new TipsVO();
				tipsVo.setSq_tips_id(rs.getString("SQ_TIPS_ID"));
				tipsVo.setTips_picture(rs.getBytes("TIPS_PICTURE"));
				tipsVo.setTips_title(rs.getString("TIPS_TITLE"));
				tipsVo.setTips_description(rs.getString("TIPS_DESCRIPTION"));
				
				byte[] pic = rs.getBytes("tips_picture");
				readPicture(pic);
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
		} catch (IOException e) {
			e.printStackTrace();
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

	public static void main(String[] args) throws IOException {

		TipsJDBCDAO dao = new TipsJDBCDAO();

		
		// 新增
//		byte[] pic = getPictureByteArray("C://DB_photos//tip1.jpg");
//		TipsVO tipsVo1 = new TipsVO();
//		tipsVo1.setSq_tips_id("320007");
//		tipsVo1.setTips_picture(pic);
//		tipsVo1.setTips_title("道路救援");
//		tipsVo1.setTips_description("腳踏車在路上故障可撥打道路救援電話。");
//		dao.insert(tipsVo1);
		
		
		
		
		
//		// 修改
//		TipsVO tipsVo2 = new TipsVO();
//		tipsVo2.setSq_tips_id("320007");
//		tipsVo2.setTips_picture(null);
//		tipsVo2.setTips_title("道路救援2?");
//		tipsVo2.setTips_description("腳踏車在路上故障可撥打道路救援電話。2");
//		dao.update(tipsVo2);
//
//		// 刪除
//		dao.delete(320007);
//
//		// 查詢
//		TipsVO tipsVo3 = dao.findByPrimaryKey("320001");
//		System.out.print(tipsVo3.getSq_tips_id() + ",");
//		System.out.print(tipsVo3.getTips_picture() + ",");
//		System.out.print(tipsVo3.getTips_title() + ",");
//		System.out.println(tipsVo3.getTips_description());
//		System.out.println("---------------------");
//
//		// 查詢
		List<TipsVO> list = dao.getAll();
		for (TipsVO aEmp : list) {
			System.out.print(aEmp.getSq_tips_id() + ",");
			System.out.print(aEmp.getTips_picture() + ",");
			System.out.print(aEmp.getTips_title() + ",");
			System.out.print(aEmp.getTips_description() + ",");
			System.out.println();
		}
	}
	


	@Override
	public List<TipsVO> getAll() {
		List<TipsVO> list = new ArrayList<TipsVO>();
		TipsVO tipsVo = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				tipsVo = new TipsVO();
				tipsVo.setSq_tips_id(rs.getString("SQ_TIPS_ID"));
				tipsVo.setTips_picture(rs.getBytes("TIPS_PICTURE"));
				tipsVo.setTips_title(rs.getString("TIPS_TITLE"));
				tipsVo.setTips_description(rs.getString("TIPS_DESCRIPTION"));
				
//				byte[] pic = rs.getBytes("tips_picture");
//				readPicture2(pic);
				
				list.add(tipsVo); // Store the row in the list
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
		} 
//		catch (IOException e) {
//			e.printStackTrace();
//		}
		finally {
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
	
	public static byte[] getPictureByteArray(String path) throws IOException {
		File file = new File(path);
		FileInputStream fis = new FileInputStream(file);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] buffer = new byte[8192];
		int i;
		while ((i = fis.read(buffer)) != -1) {
			baos.write(buffer, 0, i);
		}
		baos.close();
		fis.close();

		return baos.toByteArray();
	}
	
	static int i = 1;
	
	public static void readPicture(byte[] bytes) throws IOException {
		File folder = new File("Output");
		if (!folder.exists()) {
			folder.mkdir(); // 建立資料夾
		}
		FileOutputStream fos = new FileOutputStream("Output/2.jpg");
		fos.write(bytes);
		fos.flush();
		fos.close();
	}
	
	public static void readPicture2(byte[] bytes) throws IOException {
		File folder = new File("Output");
		if (!folder.exists()) {
			folder.mkdir(); // 建立資料夾
		}
		StringBuilder sb = new StringBuilder();
		sb.append("Output/image");
		sb.append(i);
		sb.append(".jpg");
		String str = sb.toString();
		FileOutputStream fos = new FileOutputStream(str);
		fos.write(bytes);
		fos.flush();
		fos.close();
		i++;

	}
}
