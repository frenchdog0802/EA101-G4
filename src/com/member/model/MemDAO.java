package com.member.model;

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

public class MemDAO implements MemDAO_interface {

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
			"INSERT INTO member (sq_member_id,member_account,password,m_name,gender,birthday,cellphone,m_email,validation,registered,m_photo,back_img,nick_name,address) VALUES (member_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
			"SELECT * FROM member order by sq_member_id";
	private static final String GET_ONE_STMT = 
			"SELECT * FROM member where sq_member_id = ?"; // sq_member_id?
	private static final String DELETE = 
			"DELETE FROM member where sq_member_id = ?";
	private static final String UPDATE = 
			"UPDATE member set  member_account=?, password=?, m_name=?, gender=?, birthday=?, cellphone=?, m_email=?, registered=?, m_photo=?, back_img=?, nick_name=?, address=? ,validation=? where sq_member_id = ?";
	private static final String GET_ONE_STMT_ACCOUNT = 
			"SELECT * FROM member where member_account = ?"; // sq_member_id?
	
	
	
	@Override
	public MemVO getOneMemfromAccount(String member_account) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemVO memVO = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT_ACCOUNT);

			pstmt.setString(1, member_account);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				memVO = new MemVO();

				memVO.setSq_member_id(member_account);
				memVO.setMember_account(rs.getString("member_account"));
				memVO.setPassword(rs.getString("password"));
				memVO.setM_name(rs.getString("m_name"));
				memVO.setGender(rs.getInt("gender"));
				memVO.setBirthday(rs.getDate("birthday"));
				memVO.setCellphone(rs.getString("cellphone"));
				memVO.setM_email(rs.getString("m_email"));
				memVO.setValidation(rs.getInt("validation"));
				memVO.setRegistered(rs.getDate("registered"));
				memVO.setM_photo(rs.getBytes("m_photo"));
				memVO.setBack_img(rs.getBytes("back_img"));
				memVO.setNick_name(rs.getString("nick_name"));
				memVO.setAddress(rs.getString("address"));
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
		return memVO;
	}
	
	@Override
	public void insert(MemVO memVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, memVO.getMember_account());
			pstmt.setString(2, memVO.getPassword());
			pstmt.setString(3, memVO.getM_name());
			pstmt.setInt(4, memVO.getGender());
			pstmt.setDate(5, memVO.getBirthday());
			pstmt.setString(6, memVO.getCellphone());
			pstmt.setString(7, memVO.getM_email());
			pstmt.setInt(8, memVO.getValidation());
			pstmt.setDate(9, memVO.getRegistered());
			pstmt.setBytes(10, memVO.getM_photo());
			pstmt.setBytes(11, memVO.getBack_img());
			pstmt.setString(12, memVO.getNick_name());
			pstmt.setString(13, memVO.getAddress());

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
	public void update(MemVO memVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setString(1, memVO.getMember_account());
			pstmt.setString(2, memVO.getPassword());
			pstmt.setString(3, memVO.getM_name());
			pstmt.setInt(4, memVO.getGender());
			pstmt.setDate(5, memVO.getBirthday());
			pstmt.setString(6, memVO.getCellphone());
			pstmt.setString(7, memVO.getM_email());
			pstmt.setDate(8, memVO.getRegistered());
			pstmt.setBytes(9, memVO.getM_photo());
			pstmt.setBytes(10, memVO.getBack_img());
			pstmt.setString(11, memVO.getNick_name());
			pstmt.setString(12, memVO.getAddress());
			pstmt.setInt(13, memVO.getValidation());
			pstmt.setString(14, memVO.getSq_member_id());

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
	public void delete(String sq_member_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_member_id);
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
	public MemVO findByPrimaryKey(String sq_member_id) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemVO memVO = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_member_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				memVO = new MemVO();

				memVO.setSq_member_id(sq_member_id);
				memVO.setMember_account(rs.getString("member_account"));
				memVO.setPassword(rs.getString("password"));
				memVO.setM_name(rs.getString("m_name"));
				memVO.setGender(rs.getInt("gender"));
				memVO.setBirthday(rs.getDate("birthday"));
				memVO.setCellphone(rs.getString("cellphone"));
				memVO.setM_email(rs.getString("m_email"));
				memVO.setValidation(rs.getInt("validation"));
				memVO.setRegistered(rs.getDate("registered"));
				memVO.setM_photo(rs.getBytes("m_photo"));
				memVO.setBack_img(rs.getBytes("back_img"));
				memVO.setNick_name(rs.getString("nick_name"));
				memVO.setAddress(rs.getString("address"));
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
		return memVO;
	}

	

	@Override
	public List<MemVO> getAll() {

		List<MemVO> list = new ArrayList<MemVO>();
		MemVO memVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				memVO = new MemVO();

				memVO.setSq_member_id(rs.getNString("sq_member_id"));
				memVO.setMember_account(rs.getString("member_account"));
				memVO.setPassword(rs.getString("password"));
				memVO.setM_name(rs.getString("m_name"));
				memVO.setGender(rs.getInt("gender"));
				memVO.setBirthday(rs.getDate("birthday"));
				memVO.setCellphone(rs.getString("cellphone"));
				memVO.setM_email(rs.getString("m_email"));
				memVO.setValidation(rs.getInt("validation"));
				memVO.setRegistered(rs.getDate("registered"));
				memVO.setM_photo(rs.getBytes("m_photo"));
				memVO.setBack_img(rs.getBytes("back_img"));
				memVO.setNick_name(rs.getString("nick_name"));
				memVO.setAddress(rs.getString("address"));
				list.add(memVO);
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
	
	public static void main(String[] args) {
		
		MemDAO dao = new MemDAO();
		MemVO memVO1 = new MemVO();
		
		//新增
		memVO1.setMember_account("asdf123456");
		memVO1.setPassword("password456852");
		memVO1.setM_name("TomHardy");
		memVO1.setGender(1);
		memVO1.setBirthday(java.sql.Date.valueOf("2000-01-01"));
		memVO1.setCellphone("0966542137");
		memVO1.setM_email("tomhardy456852@gmail.com");
		memVO1.setValidation(0);
		memVO1.setRegistered(java.sql.Date.valueOf("2000-01-01"));
		memVO1.setM_photo(null);
		memVO1.setBack_img(null);
		memVO1.setNick_name("Tom");
		memVO1.setAddress("桃園市中壢區中大路300號");
		dao.insert(memVO1);
		
//		修改
		
//		MemVO memVO2 = new MemVO();
//		memVO2.setSq_member_id("910020");
//		memVO2.setMember_account("asdf159753");
//		memVO2.setPassword("password456852");
//		memVO2.setM_name("Tomcat");
//		memVO2.setGender(1);
//		memVO2.setBirthday(java.sql.Date.valueOf("2000-01-01"));
//		memVO2.setCellphone("0966542137");
//		memVO2.setM_email("tom456852@gmail.com");
//		memVO2.setValidation(0);
//		memVO2.setRegistered(java.sql.Date.valueOf("2000-01-01"));
//		memVO2.setM_photo(null);
//		memVO2.setBack_img(null);
//		memVO2.setNick_name("Tommy111");
//		memVO2.setAddress("桃園市中壢區中大路300號");
//		dao.update(memVO2);

		
		
//		//刪除
//		dao.delete("910013");
		
		//查詢
//		MemVO memVO3 = dao.findByPrimaryKey("910010");
//		System.out.print(memVO3.getSq_member_id() + ",");
//		System.out.print(memVO3.getM_photo() + ",");
//		System.out.print(memVO3.getM_name() + ",");
//		System.out.print(memVO3.getBirthday() + ",");
//		System.out.print(memVO3.getM_email() + ",");
//		System.out.print(memVO3.getCellphone() + ",");
//		System.out.print(memVO3.getNick_name() + ",");
//		System.out.println(memVO3.getAddress());
//		System.out.println(memVO3.getM_photo());
//		System.out.println(memVO3.getBack_img());
//		System.out.println("---------------------");
//
//		List<MemVO> list = dao.getAll();
//		for(MemVO allMem : list ) {
//			System.out.print(allMem.getSq_member_id() + ",");
//			System.out.print(allMem.getM_photo() + ",");
//			System.out.print(allMem.getM_name() + ",");
//			System.out.print(allMem.getBirthday() + ",");
//			System.out.print(allMem.getM_email() + ",");
//			System.out.print(allMem.getCellphone() + ",");
//			System.out.print(allMem.getNick_name()+ ",");
//			System.out.println(allMem.getAddress());
//			System.out.println();
//		}
	}	
}
