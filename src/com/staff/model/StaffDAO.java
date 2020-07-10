package com.staff.model;

import java.util.*;
import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.staff.model.StaffVO;

public class StaffDAO implements StaffDAO_interface {

	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static final String INSERT_STMT = "INSERT INTO staff (sq_staff_id,sf_status,sf_account,sf_password,sf_name) VALUES (('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = "SELECT sq_staff_id,sf_status,sf_account,sf_password,sf_name FROM staff order by sq_staff_id";
	private static final String GET_ONE_STMT = "SELECT sq_staff_id,sf_status,sf_account,sf_password,sf_name FROM staff where sq_staff_id = ?";
	private static final String DELETE = "DELETE FROM staff where sq_staff_id = ?";
	private static final String UPDATE = "UPDATE staff set sf_status=?, sf_account=?, sf_password=?, sf_name=? where sq_staff_id = ?";

	@Override
	public void insert(StaffVO staffVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, staffVO.getSq_staff_id());
			pstmt.setInt(2, staffVO.getSf_status());
			pstmt.setString(3, staffVO.getSf_account());
			pstmt.setString(4, staffVO.getSf_password());
			pstmt.setString(5, staffVO.getSf_name());

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
	public void update(StaffVO staffVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, staffVO.getSq_staff_id());
			pstmt.setInt(2, staffVO.getSf_status());
			pstmt.setString(3, staffVO.getSf_account());
			pstmt.setString(4, staffVO.getSf_password());
			pstmt.setString(5, staffVO.getSf_name());
			pstmt.setString(5, staffVO.getSq_staff_id());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());
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
	public void delete(String sq_staff_id) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_staff_id);

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());
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
	public StaffVO findByPrimaryKey(String sq_staff_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StaffVO staffVO = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_staff_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVo �]�٬� Domain objects
				staffVO = new StaffVO();
				staffVO.setSq_staff_id(rs.getString("sq_staff_id"));
				staffVO.setSf_status(rs.getInt("sf_status"));
				staffVO.setSf_account(rs.getString("sf_account"));
				staffVO.setSf_password(rs.getString("sf_password"));
				staffVO.setSf_name(rs.getString("sf_name"));

			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());
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
		return staffVO;
	}

	@Override
	public List<StaffVO> getAll() {
		List<StaffVO> list = new ArrayList<StaffVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StaffVO staffVO = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO �]�٬� Domain objects
				staffVO = new StaffVO();
				staffVO.setSq_staff_id(rs.getString("sq_staff_id"));
				staffVO.setSf_status(rs.getInt("sf_status"));
				staffVO.setSf_account(rs.getString("sf_account"));
				staffVO.setSf_password(rs.getString("sf_password"));
				staffVO.setSf_name(rs.getString("sf_name"));
				list.add(staffVO); // Store the row in the list
			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());
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
}
