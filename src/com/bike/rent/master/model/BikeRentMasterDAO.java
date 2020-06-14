package com.bike.rent.master.model;


import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bike.type.model.BikeTypeVO;



public class BikeRentMasterDAO implements BikeRentMasterDAO_interface {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "EA101_G4";
	String passwd = "EA101_G4";
	
	//insert 
	private static final String INSERT_STMT="INSERT INTO " + 
			"bike_rent_master(sq_rent_id,sq_member_id,sq_bike_store_id,rent_payment,rsved_rent_date,real_rent_date,ex_return_date,real_return_date,od_total_price,od_price,rent_name,rent_phone,rent_od_status,pick_up_status)"+
			"VALUES('RT'||'-'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0'),?,?,?,?,?,?,?,?,?,?,?,?,?)";
	//update
	private static final String UPDATE_STMT = "UPDATE bike_rent_master SET sq_member_id=?,sq_bike_store_id=?,rent_payment=?,rsved_rent_date=?,real_rent_date=?,ex_return_date=?,real_return_date=?,od_total_price=?,od_price=?,rent_name=?,rent_phone=?,rent_od_status=?,pick_up_status=?" + 
			"WHERE sq_rent_id = ?";
	//delete
	private static final String DELETE_STMT = "DELETE FROM bike_rent_master WHERE sq_rent_id = ?";
	//get one
	private static final String GET_ONE_STMT = "SELECT * FROM bike_rent_master WHERE sq_rent_id = ?";
	//get all
	private static final String GET_ALL_STMT = "SELECT * FROM bike_rent_master";

	@Override
	public void insert(BikeRentMasterVO BikeRentMasterVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);
	
			//set sq_member_id
			pstmt.setString(1,BikeRentMasterVO.getSq_member_id());
			//set sq_bike_store_id
			pstmt.setString(2,BikeRentMasterVO.getSq_bike_store_id());
			//set rent_payment
			pstmt.setInt(3, BikeRentMasterVO.getRent_payment());
			//set rsved_rent_date
			pstmt.setDate(4, BikeRentMasterVO.getRsved_rent_date());
			//set real_rent_date
			pstmt.setDate(5, BikeRentMasterVO.getReal_rent_date());
			//set ex_return_date
			pstmt.setDate(6, BikeRentMasterVO.getEx_return_date());
			//set real_return_date
			pstmt.setDate(7, BikeRentMasterVO.getReal_return_date());
			//set od_total_price
			pstmt.setInt(8, BikeRentMasterVO.getOd_total_price());
			//set od_price
			pstmt.setInt(9, BikeRentMasterVO.getOd_price());
			//set rent_name
			pstmt.setString(10, BikeRentMasterVO.getRent_name());
			//set rent_phone
			pstmt.setString(11, BikeRentMasterVO.getRent_phone());
			//set rent_od_status
			pstmt.setInt(12, BikeRentMasterVO.getRent_od_status());
			//set pick_up_status
			pstmt.setInt(13, BikeRentMasterVO.getPick_up_status());
			
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
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
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
		


	@Override
	public void update(BikeRentMasterVO BikeRentMasterVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(UPDATE_STMT);
			
			//set sq_member_id
			pstmt.setString(1,BikeRentMasterVO.getSq_member_id());
			//set sq_bike_store_id
			pstmt.setString(2,BikeRentMasterVO.getSq_bike_store_id());
			//set rent_payment
			pstmt.setInt(3, BikeRentMasterVO.getRent_payment());
			//set rsved_rent_date
			pstmt.setDate(4, BikeRentMasterVO.getRsved_rent_date());
			//set real_rent_date
			pstmt.setDate(5, BikeRentMasterVO.getReal_rent_date());
			//set ex_return_date
			pstmt.setDate(6, BikeRentMasterVO.getEx_return_date());
			//set real_return_date
			pstmt.setDate(7, BikeRentMasterVO.getReal_return_date());
			//set od_total_price
			pstmt.setInt(8, BikeRentMasterVO.getOd_total_price());
			//set od_price
			pstmt.setInt(9, BikeRentMasterVO.getOd_price());
			//set rent_name
			pstmt.setString(10, BikeRentMasterVO.getRent_name());
			//set rent_phone
			pstmt.setString(11, BikeRentMasterVO.getRent_phone());
			//set rent_od_status
			pstmt.setInt(12, BikeRentMasterVO.getRent_od_status());
			//set pick_up_status
			pstmt.setInt(13, BikeRentMasterVO.getPick_up_status());
			//set sq_rent_id
			pstmt.setString(14, BikeRentMasterVO.getSq_rent_id());
			
			pstmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
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
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}

	@Override
	public void delete(String sq_rent_id) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, sq_rent_id);
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}
		
	

	@Override
	public BikeRentMasterVO findByPrimaryKey(String sq_rent_id) {
		BikeRentMasterVO BikeRentMasterVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_rent_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BikeRentMasterVO = new BikeRentMasterVO();
				BikeRentMasterVO.setSq_rent_id(rs.getString(1));
				BikeRentMasterVO.setSq_member_id(rs.getString(2));
				BikeRentMasterVO.setSq_bike_store_id(rs.getString(3));
				BikeRentMasterVO.setRent_payment(rs.getInt(4));
				BikeRentMasterVO.setRsved_rent_date(rs.getDate(5));
				BikeRentMasterVO.setReal_rent_date(rs.getDate(6));
				BikeRentMasterVO.setEx_return_date(rs.getDate(7));
				BikeRentMasterVO.setReal_return_date(rs.getDate(8));
				BikeRentMasterVO.setOd_total_price(rs.getInt(9));
				BikeRentMasterVO.setOd_price(rs.getInt(10));
				BikeRentMasterVO.setRent_name(rs.getString(11));
				BikeRentMasterVO.setRent_phone(rs.getString(12));
				BikeRentMasterVO.setRent_od_status(rs.getInt(13));
				BikeRentMasterVO.setPick_up_status(rs.getInt(14));
				BikeRentMasterVO.setOrder_date(rs.getTimestamp(15));
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return BikeRentMasterVO;
	}

	@Override
	public List<BikeRentMasterVO> getAll() {
		List<BikeRentMasterVO> list = new ArrayList<>();


		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,userId,passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
				BikeRentMasterVO = new BikeRentMasterVO();
				BikeRentMasterVO.setSq_rent_id(rs.getString(1));
				BikeRentMasterVO.setSq_member_id(rs.getString(2));
				BikeRentMasterVO.setSq_bike_store_id(rs.getString(3));
				BikeRentMasterVO.setRent_payment(rs.getInt(4));
				BikeRentMasterVO.setRsved_rent_date(rs.getDate(5));
				BikeRentMasterVO.setReal_rent_date(rs.getDate(6));
				BikeRentMasterVO.setEx_return_date(rs.getDate(7));
				BikeRentMasterVO.setReal_return_date(rs.getDate(8));
				BikeRentMasterVO.setOd_total_price(rs.getInt(9));
				BikeRentMasterVO.setOd_price(rs.getInt(10));
				BikeRentMasterVO.setRent_name(rs.getString(11));
				BikeRentMasterVO.setRent_phone(rs.getString(12));
				BikeRentMasterVO.setRent_od_status(rs.getInt(13));
				BikeRentMasterVO.setPick_up_status(rs.getInt(14));
				BikeRentMasterVO.setOrder_date(rs.getTimestamp(15));
				list.add(BikeRentMasterVO);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
}
