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
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
}
	
	private static final String INSERT_STMT = "INSERT INTO staff (sq_staff_id,sf_status,sf_name,sf_email,sf_address,sf_phone,sf_password,sf_account,sf_photo) VALUES (('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')), ?, ?, ?, ?,?,?,?,?)";
	private static final String GET_ALL_STMT = "SELECT * FROM staff order by sq_staff_id";
	private static final String GET_ONE_STMT = "SELECT * FROM staff where sq_staff_id = ?";
	private static final String DELETE = "DELETE FROM staff where sq_staff_id = ?";
	private static final String UPDATE = "UPDATE staff set sf_statu=?,sf_name=?,sf_email=?,sf_address=?,sf_phone=?,sf_password=?,sf_account=? , sf_photo =? where sq_staff_id = ?";
	private static final String GET_ONE_STMT_FORM_ACCOUNT = "SELECT * FROM staff where sf_account = ?";
	
	
	@Override
	public StaffVO findByAccount(String SF_ACCOUNT) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StaffVO staffVO = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT_FORM_ACCOUNT);
			pstmt.setString(1, SF_ACCOUNT);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				staffVO = new StaffVO();
				staffVO.setSq_staff_id(rs.getString("sq_staff_id"));
				staffVO.setSf_status(rs.getInt("sf_status"));
				staffVO.setSf_account(rs.getString("sf_account"));
				staffVO.setSf_password(rs.getString("sf_password"));
				staffVO.setSf_name(rs.getString("sf_name"));
				staffVO.setSf_email(rs.getString("sf_email"));
				staffVO.setSf_phone(rs.getString("sf_phone"));
				staffVO.setSf_address(rs.getString("sf_address"));
				staffVO.setSf_photo(rs.getBytes("sf_photo"));
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
					se.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return staffVO;
	}
	
	@Override
	public void insert(StaffVO staffVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);
			pstmt.setInt(1, staffVO.getSf_status());
			pstmt.setString(2, staffVO.getSf_name());
			pstmt.setString(3, staffVO.getSf_email());
			pstmt.setString(4, staffVO.getSf_address());
			pstmt.setString(5, staffVO.getSf_phone());
			pstmt.setString(6, staffVO.getSf_password());
			pstmt.setString(7, staffVO.getSf_account());
			pstmt.setBytes(8, staffVO.getSf_photo());
			pstmt.executeUpdate();
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred. " + se.getMessage());

		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
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
			pstmt.setInt(1, staffVO.getSf_status());
			pstmt.setString(2, staffVO.getSf_name());
			pstmt.setString(3, staffVO.getSf_email());
			pstmt.setString(4, staffVO.getSf_address());
			pstmt.setString(5, staffVO.getSf_phone());
			pstmt.setString(6, staffVO.getSf_password());
			pstmt.setString(7, staffVO.getSf_account());
			pstmt.setBytes(8, staffVO.getSf_photo());
			pstmt.setString(9, staffVO.getSq_staff_id());

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
					se.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
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
					se.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	@Override
	public StaffVO findByPrimaryKey(String sq_staff_id) {
		System.out.println(sq_staff_id);
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
				staffVO = new StaffVO();
				staffVO.setSq_staff_id(rs.getString("sq_staff_id"));
				staffVO.setSf_status(rs.getInt("sf_status"));
				staffVO.setSf_account(rs.getString("sf_account"));
				staffVO.setSf_password(rs.getString("sf_password"));
				staffVO.setSf_name(rs.getString("sf_name"));
				staffVO.setSf_email(rs.getString("sf_email"));
				staffVO.setSf_phone(rs.getString("sf_phone"));
				staffVO.setSf_address(rs.getString("sf_address"));
				staffVO.setSf_photo(rs.getBytes("sf_photo"));
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
					se.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
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
				staffVO.setSf_email(rs.getString("sf_email"));
				staffVO.setSf_phone(rs.getString("sf_phone"));
				staffVO.setSf_address(rs.getString("sf_address"));
				staffVO.setSf_photo(rs.getBytes("sf_photo"));
				list.add(staffVO);
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
					se.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
}
