package com.staff.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.member.model.MemDAO_interface;
import com.member.model.MemJDBCDAO;
import com.member.model.MemVO;

public class StaffJDBCDAO implements StaffDAO_interface {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = 
			"INSERT INTO staff(sq_staff_id,sf_status,sf_account,sf_password,sf_name) VALUES (('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
			"SELECT * FROM staff order by sq_staff_id";
	private static final String GET_ONE_STMT = 
			"SELECT * FROM staff where sq_staff_id = ?";
	private static final String DELETE = 
			"DELETE FROM staff where sq_staff_id = ?";
	private static final String UPDATE = 
			"UPDATE staff set sf_status=?, sf_account=?, sf_password=?, sf_name=? where sq_staff_id = ?";

	@Override
	public void insert(StaffVO staffVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setInt(1, staffVO.getSf_status());
			pstmt.setString(2, staffVO.getSf_account());
			pstmt.setString(3, staffVO.getSf_password());
			pstmt.setString(4, staffVO.getSf_name());

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
	public void update(StaffVO staffVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setInt(1, staffVO.getSf_status());
			pstmt.setString(2, staffVO.getSf_account());
			pstmt.setString(3, staffVO.getSf_password());
			pstmt.setString(4, staffVO.getSf_name());
			pstmt.setString(5, staffVO.getSq_staff_id());

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
	public void delete(String sq_staff_id) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_staff_id);

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
	public StaffVO findByPrimaryKey(String sq_staff_id) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StaffVO staffVO = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_staff_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				staffVO = new StaffVO();

				staffVO.setSq_staff_id(rs.getString("sq_staff_id"));
				staffVO.setSf_status(rs.getInt("sf_status"));
				staffVO.setSf_account(rs.getString("sf_account"));
				staffVO.setSf_password(rs.getString("sf_password"));
				staffVO.setSf_name(rs.getString("sf_name"));

			}
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
		return staffVO;
	}

	@Override
	public List<StaffVO> getAll() {
		List<StaffVO> list = new ArrayList<StaffVO>();
		StaffVO staffVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			while (rs.next()) {

				staffVO = new StaffVO();
				staffVO.setSq_staff_id(rs.getString("sq_staff_id"));
				staffVO.setSf_status(rs.getInt("sf_status"));
				staffVO.setSf_account(rs.getString("sf_account"));
				staffVO.setSf_password(rs.getString("sf_password"));
				staffVO.setSf_name(rs.getString("sf_name"));
				list.add(staffVO);
			}
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
		return list;
	}

	public static void main(String[] args) {

		StaffJDBCDAO dao = new StaffJDBCDAO();
		StaffVO staffVO1 = new StaffVO();

		// 新增

		staffVO1.setSf_status(0);
		staffVO1.setSf_account("tomcat245466");
		staffVO1.setSf_password("asdf456852");
		staffVO1.setSf_name("batman");

		dao.insert(staffVO1);

//		
//		//修改
//		StaffVO staffVO2 = new StaffVO();
//		staffVO2.setSq_staff_id("STF-810011");
//		staffVO2.setSf_status(0);
//		staffVO2.setSf_account("Peter500666");
//		staffVO2.setSf_password("asdf456852");
//		staffVO2.setSf_name("batman500");
//
//		dao.update(staffVO2);
		
//		//刪除
//		dao.delete("STF-810012");
//		
//		//查詢
		StaffVO staffVO3 = dao.findByPrimaryKey("STF-810010");
		System.out.print(staffVO3.getSq_staff_id() + ",");
		System.out.print(staffVO3.getSf_status() + ",");
		System.out.print(staffVO3.getSf_account() + ",");
		System.out.print(staffVO3.getSf_password() + ",");
		System.out.println(staffVO3.getSf_name() + ",");

		System.out.println("---------------------");

		List<StaffVO> list = dao.getAll();
		for(StaffVO allStaff : list ) {
			System.out.print(allStaff.getSq_staff_id() + ",");
			System.out.print(allStaff.getSf_status() + ",");
			System.out.print(allStaff.getSf_account() + ",");
			System.out.print(allStaff.getSf_password() + ",");
			System.out.println(allStaff.getSf_name() + ",");
			
			System.out.println();
		}
	}

	@Override
	public StaffVO findByAccount(String SF_ACCOUNT) {
		// TODO Auto-generated method stub
		return null;
	}
}