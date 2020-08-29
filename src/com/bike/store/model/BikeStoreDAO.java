package com.bike.store.model;

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

public class BikeStoreDAO implements BikeStoreDAO_interface {

//	String driver = "oracle.jdbc.driver.OracleDriver";
//	String url = "jdbc:oracle:thin:@localhost:1521:XE";
//	String userId = "EA101_G4";
//	String userPwd = "EA101_G4";
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	// Insert
	public static String INSERT_STMT = "INSERT INTO bike_store"
			+ "(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_longitude,store_latitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)"
			+ "VALUES(sq_bike_store_id.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,?)";

	// Update
	public static String UPDATE_STMT = "UPDATE bike_store SET  bike_store_name = ?,bike_store_location = ?,bike_store_phone = ?,store_longitude = ?,store_latitude= ?,store_opentime = ?,store_status = ?,area= ? ,store_email=?,store_account=?,store_password=? ,store_photo=? WHERE sq_bike_store_id = ?";

	// delete
	public static String DELETE_STMT = "DELETE FROM bike_store WHERE sq_bike_store_id = ?";
	// get_one
	public static String GET_ONE_STMT = "SELECT * FROM bike_store WHERE sq_bike_store_id = ?";
	public static String GET_ONE_STMT_ACCOUNT = "SELECT * FROM bike_store WHERE store_account = ?";
	// getAll
	public static String GET_ALL_STMT = "SELECT * FROM bike_store";
	
	
	@Override
	public BikeStoreVO findByAccount(String store_account) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BikeStoreVO BikeStoreVO = null;
		try {
			con = ds.getConnection();
			
			pstmt = con.prepareStatement(GET_ONE_STMT_ACCOUNT);
			pstmt.setString(1, store_account);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				BikeStoreVO = new BikeStoreVO();
				BikeStoreVO.setSq_bike_store_id(rs.getString(1));
				BikeStoreVO.setBike_store_name(rs.getString(2));
				BikeStoreVO.setLocation(rs.getString(3));
				BikeStoreVO.setPhone(rs.getString(4));
				BikeStoreVO.setStore_longitute(rs.getDouble(5));
				BikeStoreVO.setStore_latitute(rs.getDouble(6));
				BikeStoreVO.setStore_opentime(rs.getString(7));
				BikeStoreVO.setStore_status(rs.getInt(8));
				BikeStoreVO.setArea(rs.getString(9));
				BikeStoreVO.setStore_email(rs.getString(10));
				BikeStoreVO.setStore_account(rs.getString(11));
				BikeStoreVO.setStore_password(rs.getString(12));
				BikeStoreVO.setStore_photo(rs.getBytes(13));
			}

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
		return BikeStoreVO;
		
	}

	@Override
	public void insert(BikeStoreVO BikeStoreVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);
			pstmt.setString(1, BikeStoreVO.getBike_store_name());
			pstmt.setString(2, BikeStoreVO.getLocation());
			pstmt.setString(3, BikeStoreVO.getPhone());
			pstmt.setDouble(4, BikeStoreVO.getStore_longitute());
			pstmt.setDouble(5, BikeStoreVO.getStore_latitute());
			pstmt.setString(6, BikeStoreVO.getStore_opentime());
			pstmt.setInt(7, BikeStoreVO.getStore_status());
			pstmt.setString(8, BikeStoreVO.getArea());
			pstmt.setString(9, BikeStoreVO.getStore_email());
			pstmt.setString(10, BikeStoreVO.getStore_account());
			pstmt.setString(11, BikeStoreVO.getStore_password());
			pstmt.setBytes(12, BikeStoreVO.getStore_photo());

			pstmt.executeUpdate();

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

	}

	@Override
	public void update(BikeStoreVO BikeStoreVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			
			pstmt = con.prepareStatement(UPDATE_STMT);
			
			pstmt.setString(1, BikeStoreVO.getBike_store_name());
			pstmt.setString(2, BikeStoreVO.getLocation());
			pstmt.setString(3, BikeStoreVO.getPhone());
			pstmt.setDouble(4, BikeStoreVO.getStore_longitute());
			pstmt.setDouble(5, BikeStoreVO.getStore_latitute());
			pstmt.setString(6, BikeStoreVO.getStore_opentime());
			pstmt.setInt(7, BikeStoreVO.getStore_status());
			pstmt.setString(8, BikeStoreVO.getArea());
			pstmt.setString(9, BikeStoreVO.getStore_email());
			pstmt.setString(10, BikeStoreVO.getStore_account());
			pstmt.setString(11, BikeStoreVO.getStore_password());
			pstmt.setBytes(12, BikeStoreVO.getStore_photo());
			pstmt.setString(13, BikeStoreVO.getSq_bike_store_id());

			pstmt.executeUpdate();
			
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
	}

	@Override
	public void delete(String sqBikeStoreId) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, sqBikeStoreId);
			pstmt.executeUpdate();
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

	}

	@Override
	public BikeStoreVO findByPrimaryKey(String sqBikeStoreId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BikeStoreVO BikeStoreVO = null;

		try {
			con = ds.getConnection();
			
			pstmt = con.prepareStatement(GET_ONE_STMT);
			pstmt.setString(1, sqBikeStoreId);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				BikeStoreVO = new BikeStoreVO();
				BikeStoreVO.setSq_bike_store_id(rs.getString(1));
				BikeStoreVO.setBike_store_name(rs.getString(2));
				BikeStoreVO.setLocation(rs.getString(3));
				BikeStoreVO.setPhone(rs.getString(4));
				BikeStoreVO.setStore_longitute(rs.getDouble(5));
				BikeStoreVO.setStore_latitute(rs.getDouble(6));
				BikeStoreVO.setStore_opentime(rs.getString(7));
				BikeStoreVO.setStore_status(rs.getInt(8));
				BikeStoreVO.setArea(rs.getString(9));
				BikeStoreVO.setStore_email(rs.getString(10));
				BikeStoreVO.setStore_account(rs.getString(11));
				BikeStoreVO.setStore_password(rs.getString(12));
				BikeStoreVO.setStore_photo(rs.getBytes(13));
			}

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
		return BikeStoreVO;
	}

	@Override
	public List<BikeStoreVO> getAll() {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BikeStoreVO> list = new ArrayList<>();

		try {
			con = ds.getConnection();
			
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeStoreVO bikeVo = new BikeStoreVO();
				bikeVo.setSq_bike_store_id(rs.getString(1));
				bikeVo.setBike_store_name(rs.getString(2));
				bikeVo.setLocation(rs.getString(3));
				bikeVo.setPhone(rs.getString(4));
				bikeVo.setStore_longitute(rs.getDouble(5));
				bikeVo.setStore_latitute(rs.getDouble(6));
				bikeVo.setStore_opentime(rs.getString(7));
				bikeVo.setStore_status(rs.getInt(8));
				bikeVo.setArea(rs.getString(9));
				bikeVo.setStore_email(rs.getString(10));
				bikeVo.setStore_account(rs.getString(11));
				bikeVo.setStore_password(rs.getString(12));
				bikeVo.setStore_photo(rs.getBytes(13));
				list.add(bikeVo);
			}
			
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
