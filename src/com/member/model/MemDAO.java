package com.member.model;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
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
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = 
			"INSERT INTO member (sq_member_id,member_account,password,m_name,gender,birthday,cellphone,m_email,validation,registered,m_photo,back_img,nick_name,address) VALUES (member_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
			"SELECT sq_member_id,member_account,password,m_name,gender,to_char(birthday,'yyyy-mm-dd') birthday,cellphone,m_email,validation,registered,m_photo,back_img,nick_name,address FROM member order by sq_member_id";
	private static final String GET_ONE_STMT = 
			"SELECT sq_member_id,member_account,password,m_name,gender,to_char(birthday,'yyyy-mm-dd') birthday,cellphone,m_email,validation,registered,m_photo,back_img,nick_name,address FROM member where sq_member_id = ?";// SELCET *FROM member sq_member_id?
	private static final String DELETE = 
			"DELETE FROM member where sq_member_id = ?";
	private static final String UPDATE =
			"UPDATE member set  member_account=?, password=?, m_name=?, gender=?, birthday=?, cellphone=?, m_email=?, registered=?, m_photo=?, back_img=?, nick_name=?, address=? where sq_member_id = ?";
	
	
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
				} catch (Exception se) {
					se.printStackTrace(System.err);
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
			pstmt.setString(13,memVO.getSq_member_id());
			

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
	public void delete(String sq_member_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_member_id);
			pstmt.executeUpdate();
		} catch (SQLException se) {
			throw new RuntimeException("A database error occurred" + se.getMessage());
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
			throw new RuntimeException("A database error occurred." + se.getMessage());
		} finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
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
			if(con != null) {
				try {
					con.close();
				}catch(Exception e){
					e.printStackTrace(System.err);
				}
			}
		}
		return memVO;
	}

	@Override
	public List<MemVO> getAll() {
		List<MemVO> list = new ArrayList<MemVO>();
		MemVO memVO =null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(GET_ALL_STMT);
			rs =pstmt.executeQuery();
			
			while(rs.next()) {
			
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
				
		}catch(SQLException se){ 
			throw new RuntimeException("A database error occured." +se.getMessage());
			
		}finally {
			if(rs !=null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
				
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		
		return list;
	}

}
