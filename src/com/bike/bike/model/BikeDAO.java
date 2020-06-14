package com.bike.bike.model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class BikeDAO implements BikeDAO_interface {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "EA101_G4";
	String passwd = "EA101_G4";
	
	//INSERT STMT
	private static final String INSERT_STMT = "INSERT INTO bike (sq_bike_id,sq_bike_type_id,sq_bike_store_id,bike_status) VALUES (sq_bike_id.NEXTVAL,?,?,?)";
	//UPDATE STMT
	private static final String UPDATE_STMT = "UPDATE bike SET  sq_bike_type_id= ?,sq_bike_store_id= ? ,bike_status = ? where sq_bike_id=?";
	//DELETE STMT
	private static final String DELETE_STMT = "DELETE FROM bike WHERE sq_bike_id = ?";
	//GET ONE STMT
	private static final String GET_ONE_STMT = "SELECT * FROM bike WHERE sq_bike_id = ?";
	//GET ALL STMT
	private static final String GET_ALL_STMT = "SELECT * FROM bike ORDER BY sq_bike_id";
	
	
	@Override
	public void insert(BikeVO BikeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);
			
			System.out.println(BikeVO.getSq_bike_type_id());
			System.out.println(BikeVO.getSq_bike_store_id());
			System.out.println(BikeVO.getBike_status());
	
			pstmt.setString(1,BikeVO.getSq_bike_type_id());
			pstmt.setString(2,BikeVO.getSq_bike_store_id());
			pstmt.setInt(3, BikeVO.getBike_status());
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
	public void update(BikeVO BikeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(UPDATE_STMT);
			
			pstmt.setString(1,BikeVO.getSq_bike_type_id());
			pstmt.setString(2,BikeVO.getSq_bike_store_id());
			pstmt.setInt(3, BikeVO.getBike_status());
			pstmt.setString(4, BikeVO.getSq_bike_id());
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
	public void delete(String sq_bike_id) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, sq_bike_id);
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
	public BikeVO findByPrimaryKey(String sq_bike_id) {
		BikeVO BikeVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_bike_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BikeVO = new BikeVO();
				BikeVO.setSq_bike_id(rs.getString(1));
				BikeVO.setSq_bike_type_id(rs.getString(2));
				BikeVO.setSq_bike_store_id(rs.getString(3));
				BikeVO.setPublication_date(rs.getTimestamp(4));
				BikeVO.setBike_status(rs.getInt(5));
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

		return BikeVO;

	}
	

	@Override
	public List<BikeVO> getAll() {
		
		List<BikeVO> list = new ArrayList<>();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,userId,passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeVO bikeVo = new BikeVO(); 
				bikeVo.setSq_bike_id(rs.getString(1));
				bikeVo.setSq_bike_type_id(rs.getString(2));
				bikeVo.setSq_bike_store_id(rs.getString(3));
				bikeVo.setPublication_date(rs.getTimestamp(4));
				bikeVo.setBike_status(rs.getInt(5));
				list.add(bikeVo);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
}
