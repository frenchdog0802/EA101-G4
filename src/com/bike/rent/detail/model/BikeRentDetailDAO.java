package com.bike.rent.detail.model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;





public class BikeRentDetailDAO implements BikeRentDetailDAO_interface {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "EA101_G4";
	String passwd = "EA101_G4";


	// insert
	private static final String INSERT_STMT = "INSERT INTO bike_rent_detail (sq_rent_detail_id,sq_rent_id,sq_bike_type_id,sq_bike_id ,price,rsved_rent_date,ex_return_date,real_return_date,extra_cost )"+
												"VALUES(sq_rent_detail_id.NEXTVAL,?,?,?,?,?,?,?,?)";
	// update
	private static final String UPDATE_STMT = "UPDATE bike_rent_detail SET sq_rent_id=?,sq_bike_type_id=?,sq_bike_id=?,price=? ,rsved_rent_date=?,ex_return_date=?,real_return_date=?,extra_cost=? where sq_rent_detail_id=?";
	// delete
	private static final String DELETE_STMT = "DELETE FROM bike_rent_detail WHERE sq_rent_detail_id=?";
	// get one
	private static final String GET_ONE_STMT = "SELECT * FROM bike_rent_detail WHERE sq_rent_detail_id=?";
	// get all
	private static final String GET_ALL_STMT = "SELECT * FROM bike_rent_detail";
	//找出明細裡面商家擁有的車種
	private static final String GET_ALL_DETAIL = "SELECT * FROM bike_rent_detail WHERE SQ_rent_id= ? and sq_bike_type_id = ?";
	
	
	@Override
	public List<BikeRentDetailVO> getDetail(String sq_rent_id,String sq_bike_type_id){
		List<BikeRentDetailVO> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ALL_DETAIL);
			pstmt.setString(1,sq_rent_id );
			pstmt.setString(2, sq_bike_type_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeRentDetailVO BikeRentDetailVO = new BikeRentDetailVO();
				BikeRentDetailVO.setSq_rent_detail_id(rs.getString(1));
				BikeRentDetailVO.setSq_rent_id(rs.getString(2));
				BikeRentDetailVO.setSq_bike_type_id(rs.getString(3));
				BikeRentDetailVO.setSq_bike_id(rs.getString(4));
				BikeRentDetailVO.setPrice(rs.getInt(5));
				BikeRentDetailVO.setExtra_cost(rs.getInt(6));
				BikeRentDetailVO.setRsved_rent_date(rs.getTimestamp(7));
				BikeRentDetailVO.setEx_return_date(rs.getTimestamp(8));
				BikeRentDetailVO.setReal_return_date(rs.getTimestamp(9));
				list.add(BikeRentDetailVO);
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
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
		
	}

	@Override
	public void insert(BikeRentDetailVO BikeRentDetailVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);
			pstmt.setString(1, BikeRentDetailVO.getSq_rent_id());
			pstmt.setString(2, BikeRentDetailVO.getSq_bike_type_id());
			pstmt.setString(3, BikeRentDetailVO.getSq_bike_id());
			pstmt.setInt(4, BikeRentDetailVO.getPrice());
			pstmt.setInt(5, BikeRentDetailVO.getExtra_cost());
			pstmt.setTimestamp(6, BikeRentDetailVO.getRsved_rent_date());
			//set ex_return_date
			pstmt.setTimestamp(7, BikeRentDetailVO.getEx_return_date());
			//set real_return_date
			pstmt.setTimestamp(8, BikeRentDetailVO.getReal_return_date());
			

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
	public void update(BikeRentDetailVO BikeRentDetailVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(UPDATE_STMT);
			
			pstmt.setString(1, BikeRentDetailVO.getSq_rent_id());
			pstmt.setString(2, BikeRentDetailVO.getSq_bike_type_id());
			pstmt.setString(3, BikeRentDetailVO.getSq_bike_id());
			pstmt.setInt(4, BikeRentDetailVO.getPrice());
			pstmt.setInt(5, BikeRentDetailVO.getExtra_cost());
			pstmt.setTimestamp(6, BikeRentDetailVO.getRsved_rent_date());
			//set ex_return_date
			pstmt.setTimestamp(7, BikeRentDetailVO.getEx_return_date());
			//set real_return_date
			pstmt.setTimestamp(8, BikeRentDetailVO.getReal_return_date());
			
			pstmt.setString(9, BikeRentDetailVO.getSq_rent_detail_id());

			// executeUpdate
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
	public void delete(String sq_rent_detail_id) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, sq_rent_detail_id);

			// executeUpdate
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
	public BikeRentDetailVO findByPrimaryKey(String sq_rent_detail_id) {
		BikeRentDetailVO BikeRentDetailVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sq_rent_detail_id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BikeRentDetailVO = new BikeRentDetailVO();
				BikeRentDetailVO.setSq_rent_detail_id(rs.getString(1));
				BikeRentDetailVO.setSq_rent_id(rs.getString(2));
				BikeRentDetailVO.setSq_bike_type_id(rs.getString(3));
				BikeRentDetailVO.setSq_bike_id(rs.getString(4));
				BikeRentDetailVO.setPrice(rs.getInt(5));
				BikeRentDetailVO.setExtra_cost(rs.getInt(6));
				BikeRentDetailVO.setRsved_rent_date(rs.getTimestamp(7));
				BikeRentDetailVO.setEx_return_date(rs.getTimestamp(8));
				BikeRentDetailVO.setReal_return_date(rs.getTimestamp(9));
				
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

		return BikeRentDetailVO;

	}

	@Override
	public List<BikeRentDetailVO> getAll() {
		List<BikeRentDetailVO> list = new ArrayList<>();


		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,userId,passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeRentDetailVO BikeRentDetailVO = new BikeRentDetailVO();
				BikeRentDetailVO.setSq_rent_detail_id(rs.getString(1));
				BikeRentDetailVO.setSq_rent_id(rs.getString(2));
				BikeRentDetailVO.setSq_bike_type_id(rs.getString(3));
				BikeRentDetailVO.setSq_bike_id(rs.getString(4));
				BikeRentDetailVO.setPrice(rs.getInt(5));
				BikeRentDetailVO.setExtra_cost(rs.getInt(6));
				BikeRentDetailVO.setRsved_rent_date(rs.getTimestamp(7));
				BikeRentDetailVO.setEx_return_date(rs.getTimestamp(8));
				BikeRentDetailVO.setReal_return_date(rs.getTimestamp(9));
				
				list.add(BikeRentDetailVO);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
