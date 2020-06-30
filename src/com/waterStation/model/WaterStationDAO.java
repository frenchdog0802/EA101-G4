//package com.waterStation.model;
//
//import java.sql.Blob;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.activation.DataSource;
//import javax.naming.Context;
//import javax.naming.NamingException;
//
//public class WaterStationDAO {
//	static {
//		try {
//			Context ctx = new javax.naming.InitialContext();
//			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/testDB3");
//		} catch (NamingException e) {
//			e.printStackTrace();
//		}
//	}
//	String driver = "oracle.jdbc.driver.OracleDriver";
//	String url = "jdbc:oracle:thin:@localhost:1521:XE";
//	String userid = "test1";
//	String passwd = "test1";
//
//	private static final String INSERT_STMT = "INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE,  COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS, MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION)  values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?)";
//	private static final String GET_ALL_STMT = "SELECT * FROM WATER_STATION";
//	private static final String GET_ONE_STMT = "SELECT SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE,  COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS, INSERT_TIMESTAMP, UPDATE_TIMESTAMP, MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION FROM WATER_STATION WHERE SQ_STATION_ID = ?";
//	private static final String DELETE = "DELETE FROM WATER_STATION WHERE SQ_STATION_ID = ?";
//	private static final String UPDATE = "UPDATE WATER_STATION set STATION_NAME=?, STATION_ADDRESS=?, LONGITUDE=?, LATITUDE=?,  COUNTRY=?, AREA=?, STATION_IMAGE=?, BUSINESS_HOURS=?, INSERT_TIMESTAMP=?, UPDATE_TIMESTAMP=?, MODIFY_ID=?, INSERT_BY=?, CHECK_FLAG=?, ADD_STATION=? WHERE SQ_STATION_ID = ?";
//
//	@Override
//	public void insert(WaterStationVO wsVO) {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//
//		try {
//			con = DriverManager.getConnection(url, userid, passwd);
//			pstmt = con.prepareStatement(INSERT_STMT);
//
//			pstmt.setString(1, wsVO.getStationName());
//			pstmt.setString(2, wsVO.getStationAddress());
//			pstmt.setDouble(3, wsVO.getLongitude());
//			pstmt.setDouble(4, wsVO.getLatitude());
//			pstmt.setString(5, wsVO.getCountry());
//			pstmt.setString(6, wsVO.getArea());
//			Blob blob = con.createBlob();
//			blob.setBytes(1, wsVO.getStationImage());
//			pstmt.setBlob(7, blob);
//			pstmt.setString(8, wsVO.getBusinessHours());
//			pstmt.setString(9, wsVO.getModifyId());
//			pstmt.setString(10, wsVO.getInsertBy());
//			pstmt.setInt(11, wsVO.getCheckFlag());
//			pstmt.setInt(12, wsVO.getAddStation());
//
//			pstmt.executeUpdate();
//			// 捕獲例外
//		} catch (ClassNotFoundException e) {
//			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
//		} catch (SQLException se) {
//			throw new RuntimeException("A database error occured. " + se.getMessage());
//		} finally {
//			if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException se) {
//					// TODO Auto-generated catch block
//					se.printStackTrace(System.err);
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace(System.err);
//				}
//			}
//		}
//
//	}
//
//	@Override
//	public void update(WaterStationVO wsVO) {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//
//		try {
//
//			Class.forName(driver);
//			con = DriverManager.getConnection(url, userid, passwd);
//			pstmt = con.prepareStatement(UPDATE);
//
//			pstmt.setString(1, wsVO.getStationName());
//			pstmt.setString(2, wsVO.getStationAddress());
//			pstmt.setDouble(3, wsVO.getLongitude());
//			pstmt.setDouble(4, wsVO.getLatitude());
//			pstmt.setString(5, wsVO.getCountry());
//			pstmt.setString(6, wsVO.getArea());
//			pstmt.setBytes(7, wsVO.getStationImage());
//			pstmt.setString(8, wsVO.getBusinessHours());
//			pstmt.setTimestamp(9, wsVO.getInsertTimestamp());
//			pstmt.setTimestamp(10, wsVO.getUpdateTimestamp());
//			pstmt.setString(11, wsVO.getModifyId());
//			pstmt.setString(12, wsVO.getInsertBy());
//			pstmt.setInt(13, wsVO.getCheckFlag());
//			pstmt.setInt(14, wsVO.getAddStation());
//			pstmt.setString(15, wsVO.getSqStationId());
//			;
//
//			pstmt.executeUpdate();
//		} catch (ClassNotFoundException e) {
//			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
//			// Handle any SQL errors
//		} catch (SQLException se) {
//			throw new RuntimeException("A database error occured. " + se.getMessage());
//			// Clean up JDBC resources
//		} finally {
//			if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				} catch (Exception e) {
//					e.printStackTrace(System.err);
//				}
//			}
//		}
//
//	}
//
//	@Override
//	public void delete(String sqStationId) {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//
//		try {
//
//			Class.forName(driver);
//			con = DriverManager.getConnection(url, userid, passwd);
//			pstmt = con.prepareStatement(DELETE);
//
//			pstmt.setString(1, sqStationId);
//			System.out.println(sqStationId);
//			pstmt.executeUpdate();
//		} catch (ClassNotFoundException e) {
//			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
//			// Handle any SQL errors
//		} catch (SQLException se) {
//			throw new RuntimeException("A database error occured. " + se.getMessage());
//			// Clean up JDBC resources
//		} finally {
//			if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				} catch (Exception e) {
//					e.printStackTrace(System.err);
//				}
//			}
//		}
//
//	}
//
//	@Override
//	public WaterStationVO findByPrimaryKey(String sqStationId) {
//		WaterStationVO wsVO = null;
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//
//			Class.forName(driver);
//			con = DriverManager.getConnection(url, userid, passwd);
//			pstmt = con.prepareStatement(GET_ONE_STMT);
//
//			pstmt.setString(1, sqStationId);
//
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				wsVO = new WaterStationVO();
//
//				wsVO.setSqStationId(rs.getString("SQ_STATION_ID"));
//				wsVO.setStationName(rs.getString("STATION_NAME"));
//				wsVO.setStationAddress(rs.getString("STATION_ADDRESS"));
//				wsVO.setLongitude(rs.getDouble("LONGITUDE"));
//				wsVO.setLatitude(rs.getDouble("LATITUDE"));
//				wsVO.setCountry(rs.getString("COUNTRY"));
//				wsVO.setArea(rs.getString("AREA"));
//				wsVO.setStationImage(rs.getBytes("STATION_IMAGE"));
//				wsVO.setBusinessHours(rs.getString("BUSINESS_HOURS"));
//				wsVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
//				wsVO.setUpdateTimestamp(rs.getTimestamp("UPDATE_TIMESTAMP"));
//				wsVO.setModifyId(rs.getString("MODIFY_ID"));
//				wsVO.setInsertBy(rs.getString("INSERT_BY"));
//				wsVO.setCheckFlag(rs.getInt("CHECK_FLAG"));
//				wsVO.setAddStation(rs.getInt("ADD_STATION"));
//			}
//
//			// Handle any driver errors
//		} catch (ClassNotFoundException e) {
//			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
//			// Handle any SQL errors
//		} catch (SQLException se) {
//			throw new RuntimeException("A database error occured. " + se.getMessage());
//			// Clean up JDBC resources
//		} finally {
//			if (rs != null) {
//				try {
//					rs.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				} catch (Exception e) {
//					e.printStackTrace(System.err);
//				}
//			}
//		}
//		return wsVO;
//
//	}
//
//	@Override
//	public List<WaterStationVO> getAll() {
//		List<WaterStationVO> list = new ArrayList<WaterStationVO>();
//		WaterStationVO wsVO = null;
//
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//
//			Class.forName(driver);
//			con = DriverManager.getConnection(url, userid, passwd);
//			pstmt = con.prepareStatement(GET_ALL_STMT);
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				wsVO = new WaterStationVO();
//				wsVO.setSqStationId(rs.getString("SQ_STATION_ID"));
//				wsVO.setStationName(rs.getString("STATION_NAME"));
//				wsVO.setStationAddress(rs.getString("STATION_ADDRESS"));
//				wsVO.setLongitude(rs.getDouble("LONGITUDE"));
//				wsVO.setLatitude(rs.getDouble("LATITUDE"));
//				wsVO.setCountry(rs.getString("COUNTRY"));
//				wsVO.setArea(rs.getString("AREA"));
//				
//				Blob blob = rs.getBlob("STATION_IMAGE");
//				wsVO.setStationImage(blobToByteArr(blob));
//				wsVO.setBusinessHours(rs.getString("BUSINESS_HOURS"));
//				wsVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
//				wsVO.setUpdateTimestamp(rs.getTimestamp("UPDATE_TIMESTAMP"));
//				wsVO.setModifyId(rs.getString("MODIFY_ID"));
//				wsVO.setInsertBy(rs.getString("INSERT_BY"));
//				wsVO.setCheckFlag(rs.getInt("CHECK_FLAG"));
//				wsVO.setAddStation(rs.getInt("ADD_STATION"));
//				list.add(wsVO);
//
//			}
//		} catch (ClassNotFoundException e) {
//			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
//			// Handle any SQL errors
//		} catch (SQLException se) {
//			throw new RuntimeException("A database error occured. " + se.getMessage());
//		} finally {
//			if (rs != null) {
//				try {
//					rs.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				} catch (Exception e) {
//					e.printStackTrace(System.err);
//				}
//			}
//		}
//
//		return list;
//	}
//}