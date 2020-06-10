package com.bike.store.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BikeStoreDAO implements BikeStoreDAO_interface {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "EA101_G4";
	String userPwd = "EA101_G4";

	// Insert
	public static String INSERT_STMT = "INSERT INTO bike_store"
			+ "(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_longitude,store_latitude,store_opentime,store_status)"
			+ "VALUES(sq_bike_store_id.NEXTVAL,?,?,?,?,?,?,?)";

	// Update
	public static String UPDATE_STMT = "UPDATE bike_store SET  bike_store_name = ?,bike_store_location = ?,bike_store_phone = ?,store_longitude = ?,store_latitude= ?,store_opentime = ?,store_status = ? WHERE sq_bike_store_id = ?";

	// delete
	public static String DELETE_STMT = "DELETE FROM bike_store WHERE sq_bike_store_id = ?";
	// get_one
	public static String GET_ONE_STMT = "SELECT * FROM bike_store WHERE sq_bike_store_id = ?";
	// getAll
	public static String GET_ALL_STMT = "SELECT * FROM bike_store";

	@Override
	public void insert(BikeStoreVO BikeStoreVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, userPwd);
			pstmt = con.prepareStatement(INSERT_STMT);
			pstmt.setString(1, BikeStoreVO.getBikeStoreName());
			pstmt.setString(2, BikeStoreVO.getLocation());
			pstmt.setString(3, BikeStoreVO.getPhone());
			pstmt.setDouble(4, BikeStoreVO.getStoreLongitute());
			pstmt.setDouble(5, BikeStoreVO.getStoreLatitute());
			pstmt.setString(6, BikeStoreVO.getStoreOpentime());
			pstmt.setInt(7, BikeStoreVO.getStoreStatus());

			pstmt.executeUpdate();

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

	}

	@Override
	public void update(BikeStoreVO BikeStoreVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, userPwd);
			pstmt = con.prepareStatement(UPDATE_STMT);

			pstmt.setString(1, BikeStoreVO.getBikeStoreName());
			pstmt.setString(2, BikeStoreVO.getLocation());
			pstmt.setString(3, BikeStoreVO.getPhone());
			pstmt.setDouble(4, BikeStoreVO.getStoreLongitute());
			pstmt.setDouble(5, BikeStoreVO.getStoreLongitute());

			pstmt.setString(6, BikeStoreVO.getStoreOpentime());
			pstmt.setInt(7, BikeStoreVO.getStoreStatus());
			pstmt.setString(8, BikeStoreVO.getSqBikeStoreId());

			pstmt.executeUpdate();
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
	}

	@Override
	public void delete(String sqBikeStoreId) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, userPwd);
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, sqBikeStoreId);
			pstmt.executeUpdate();
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

	}

	@Override
	public BikeStoreVO findByPrimaryKey(String sqBikeStoreId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BikeStoreVO BikeStoreVO = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, userPwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);
			pstmt.setString(1, sqBikeStoreId);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				BikeStoreVO = new BikeStoreVO();
				BikeStoreVO.setSqBikeStoreId(rs.getString(1));
				BikeStoreVO.setBikeStoreName(rs.getString(2));
				BikeStoreVO.setLocation(rs.getString(3));
				BikeStoreVO.setPhone(rs.getString(4));
				BikeStoreVO.setStoreLongitute(rs.getDouble(5));
				BikeStoreVO.setStoreLatitute(rs.getDouble(6));
				BikeStoreVO.setStoreOpentime(rs.getString(7));
				BikeStoreVO.setStoreStatus(rs.getInt(8));
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
		return BikeStoreVO;
	}

	@Override
	public List<BikeStoreVO> getAll() {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BikeStoreVO> list = new ArrayList<>();

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, userPwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeStoreVO bikeVo = new BikeStoreVO();
				bikeVo.setSqBikeStoreId(rs.getString(1));
				bikeVo.setBikeStoreName(rs.getString(2));
				bikeVo.setLocation(rs.getString(3));
				bikeVo.setPhone(rs.getString(4));
				bikeVo.setStoreLongitute(rs.getDouble(5));
				bikeVo.setStoreLatitute(rs.getDouble(6));
				bikeVo.setStoreOpentime(rs.getString(7));
				bikeVo.setStoreStatus(rs.getInt(8));
				list.add(bikeVo);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
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

		return list;
	}

}
