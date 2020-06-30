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

import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.type.model.BikeTypeVO;

public class BikeRentMasterDAO implements BikeRentMasterDAO_interface {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "EA101_G4";
	String passwd = "EA101_G4";

	// insert
	private static final String INSERT_STMT = "INSERT INTO "
			+ "bike_rent_master(sq_rent_id, sq_member_id,sq_bike_store_id,rent_payment,od_total_price,rent_name,rent_phone ,rent_od_status,tradeno)"
			+ "VALUES(?,?,?,?,?,?,?,?,?)";

	// update
	private static final String UPDATE_STMT = "UPDATE bike_rent_master SET sq_member_id=?,sq_bike_store_id=?,rent_payment=?,od_total_price=?,rent_name=?,rent_phone=?,rent_od_status=?,tradeno=?"
			+ "WHERE sq_rent_id = ?";
	// delete
	private static final String DELETE_STMT = "DELETE FROM bike_rent_master WHERE sq_rent_id = ?";
	// get one
	private static final String GET_ONE_STMT = "SELECT * FROM bike_rent_master WHERE sq_rent_id = ?";
	// get all
	private static final String GET_ALL_STMT = "SELECT * FROM bike_rent_master";
	
	//get MASTERID
	private static final String GET_ALL_MASTERID_FORM_STORE = "select sq_rent_id from bike_rent_master where SQ_BIKE_STORE_ID= ?";
	
	//get getCurrentKeys
	private static final String GET_CURRENTKEY = "select sq_rent_id from (select * from bike_rent_master order by order_date desc ) where rownum=1";
	
	
	public String getCurrentKeys() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String sq_rent_id = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_CURRENTKEY);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				sq_rent_id= rs.getString(1);
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (con != null) {
				try {
					rs.close();
					pstmt.close();
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return sq_rent_id;
	}
	@Override
	public List<String> getRentMasterId(String sq_bike_store_id){
		Connection con = null;
		PreparedStatement pstmt = null;
		List<String> list= new ArrayList<>();
		ResultSet rs = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ALL_MASTERID_FORM_STORE);
			pstmt.setString(1, sq_bike_store_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String masterId = rs.getString(1);
				list.add(masterId);
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (con != null) {
				try {
					rs.close();
					pstmt.close();
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}
	
	
	@Override
	public void  insertWithDetail(BikeRentMasterVO BikeRentMasterVO,List<BikeRentDetailVO>list ) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			
			// 1●設定於 pstm.executeUpdate()之前
    		con.setAutoCommit(false);
    		
			pstmt = con.prepareStatement(INSERT_STMT);
			
			pstmt.setString(1, BikeRentMasterVO.getSq_rent_id());
			// set sq_member_id
			pstmt.setString(2, BikeRentMasterVO.getSq_member_id());
			// set sq_bike_store_id
			pstmt.setString(3, BikeRentMasterVO.getSq_bike_store_id());
			// set rent_payment
			pstmt.setInt(4, BikeRentMasterVO.getRent_payment());
			// set od_total_price
			pstmt.setInt(5, BikeRentMasterVO.getOd_total_price());
			// set rent_name
			pstmt.setString(6, BikeRentMasterVO.getRent_name());
			// set rent_phone
			pstmt.setString(7, BikeRentMasterVO.getRent_phone());
			// set rent_od_status
			pstmt.setInt(8, BikeRentMasterVO.getRent_od_status());
			// set pick_up_status
			pstmt.setString(9,BikeRentMasterVO.getTradeno());
			pstmt.executeUpdate();
			
			//在同時新增明細
			
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
			// set sq_member_id
			pstmt.setString(1, BikeRentMasterVO.getSq_member_id());
			// set sq_bike_store_id
			pstmt.setString(2, BikeRentMasterVO.getSq_bike_store_id());
			// set rent_payment
			pstmt.setInt(3, BikeRentMasterVO.getRent_payment());
			// set od_total_price
			pstmt.setInt(4, BikeRentMasterVO.getOd_total_price());
			// set rent_name
			pstmt.setString(5, BikeRentMasterVO.getRent_name());
			// set rent_phone
			pstmt.setString(6, BikeRentMasterVO.getRent_phone());
			// set rent_od_status
			pstmt.setInt(7, BikeRentMasterVO.getRent_od_status());
			
			pstmt.setString(8, BikeRentMasterVO.getTradeno());
			// set sq_rent_id
			pstmt.setString(9, BikeRentMasterVO.getSq_rent_id());

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
				BikeRentMasterVO.setOd_total_price(rs.getInt(5));
				BikeRentMasterVO.setRent_name(rs.getString(6));
				BikeRentMasterVO.setRent_phone(rs.getString(7));
				BikeRentMasterVO.setRent_od_status(rs.getInt(8));
				BikeRentMasterVO.setOrder_date(rs.getTimestamp(9));
				BikeRentMasterVO.setTradeno(rs.getString(10));
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					rs.close();
					pstmt.close();
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
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
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BikeRentMasterVO BikeRentMasterVO = new BikeRentMasterVO();
				BikeRentMasterVO = new BikeRentMasterVO();
				BikeRentMasterVO.setSq_rent_id(rs.getString(1));
				BikeRentMasterVO.setSq_member_id(rs.getString(2));
				BikeRentMasterVO.setSq_bike_store_id(rs.getString(3));
				BikeRentMasterVO.setRent_payment(rs.getInt(4));
				BikeRentMasterVO.setOd_total_price(rs.getInt(5));
				BikeRentMasterVO.setRent_name(rs.getString(6));
				BikeRentMasterVO.setRent_phone(rs.getString(7));
				BikeRentMasterVO.setRent_od_status(rs.getInt(8));
				BikeRentMasterVO.setOrder_date(rs.getTimestamp(9));
				BikeRentMasterVO.setTradeno(rs.getString(10));
				list.add(BikeRentMasterVO);
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (con != null) {
				try {
					rs.close();
					pstmt.close();
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

		return list;
	}

}
