package com.waterStation.model;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class WaterStationJDBCDAO implements WaterStationDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE,  COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS, MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION)  values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?)";
	private static final String GET_ALL_STMT = "SELECT * FROM WATER_STATION ORDER BY SQ_STATION_ID";
	private static final String GET_ONE_STMT = "SELECT SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE,  COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS, INSERT_TIMESTAMP, UPDATE_TIMESTAMP, MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION FROM WATER_STATION WHERE SQ_STATION_ID = ?";
	private static final String DELETE = "DELETE FROM WATER_STATION WHERE SQ_STATION_ID = ?";
	private static final String UPDATE = "UPDATE WATER_STATION SET CHECK_FLAG=?, ADD_STATION=? WHERE SQ_STATION_ID = ?";
	
	//取得圖片的方法
	public static byte[] getPictureByteArray(String path) throws IOException {
		   File file = new File(path);
		   FileInputStream fis = new FileInputStream(file);
		   ByteArrayOutputStream baos = new ByteArrayOutputStream();
		   byte[] buffer = new byte[8192];
		   int i;
		   while ((i = fis.read(buffer)) != -1) {
		    baos.write(buffer, 0, i);
		   }
		   baos.close();
		   fis.close();

		   return baos.toByteArray();
		  }
	
	
	@Override
	public void insert(WaterStationVO wsVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, wsVO.getStationName());
			pstmt.setString(2, wsVO.getStationAddress());
			pstmt.setDouble(3, wsVO.getLongitude());
			pstmt.setDouble(4, wsVO.getLatitude());
			pstmt.setString(5, wsVO.getCountry());
			pstmt.setString(6, wsVO.getArea());
			pstmt.setBytes(7, wsVO.getStationImage());
//			Blob blob = con.createBlob();
//			blob.setBytes(1, wsVO.getStationImage());
//			pstmt.setBlob(7, blob);
			pstmt.setString(8, wsVO.getBusinessHours());
			pstmt.setString(9, wsVO.getModifyId());
			pstmt.setString(10, wsVO.getInsertBy());
			pstmt.setInt(11, wsVO.getCheckFlag());
			pstmt.setInt(12, wsVO.getAddStation());

			pstmt.executeUpdate();
			// 捕獲例外
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					// TODO Auto-generated catch block
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public void update(WaterStationVO wsVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setInt(1, wsVO.getCheckFlag());
			pstmt.setInt(2, wsVO.getAddStation());
			pstmt.setString(3, wsVO.getSqStationId());
			
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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
	public void delete(String sqStationId) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sqStationId);
			System.out.println(sqStationId);
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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
	public WaterStationVO findByPrimaryKey(String sqStationId) {
		WaterStationVO wsVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sqStationId);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				wsVO = new WaterStationVO();

				wsVO.setSqStationId(rs.getString("SQ_STATION_ID"));
				wsVO.setStationName(rs.getString("STATION_NAME"));
				wsVO.setStationAddress(rs.getString("STATION_ADDRESS"));
				wsVO.setLongitude(rs.getDouble("LONGITUDE"));
				wsVO.setLatitude(rs.getDouble("LATITUDE"));
				wsVO.setCountry(rs.getString("COUNTRY"));
				wsVO.setArea(rs.getString("AREA"));
				Blob blob = rs.getBlob("STATION_IMAGE");
				wsVO.setStationImage(blobToByteArr(blob));
				wsVO.setBusinessHours(rs.getString("BUSINESS_HOURS"));
				wsVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				wsVO.setUpdateTimestamp(rs.getTimestamp("UPDATE_TIMESTAMP"));
				wsVO.setModifyId(rs.getString("MODIFY_ID"));
				wsVO.setInsertBy(rs.getString("INSERT_BY"));
				wsVO.setCheckFlag(rs.getInt("CHECK_FLAG"));
				wsVO.setAddStation(rs.getInt("ADD_STATION"));
			}

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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
		return wsVO;

	}

	@Override
	public List<WaterStationVO> getAll() {
		List<WaterStationVO> list = new ArrayList<WaterStationVO>();
		WaterStationVO wsVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				wsVO = new WaterStationVO();
				wsVO.setSqStationId(rs.getString("SQ_STATION_ID"));
				wsVO.setStationName(rs.getString("STATION_NAME"));
				wsVO.setStationAddress(rs.getString("STATION_ADDRESS"));
				wsVO.setLongitude(rs.getDouble("LONGITUDE"));
				wsVO.setLatitude(rs.getDouble("LATITUDE"));
				wsVO.setCountry(rs.getString("COUNTRY"));
				wsVO.setArea(rs.getString("AREA"));
				
				Blob blob = rs.getBlob("STATION_IMAGE");
				wsVO.setStationImage(blobToByteArr(blob));
				wsVO.setBusinessHours(rs.getString("BUSINESS_HOURS"));
				wsVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				wsVO.setUpdateTimestamp(rs.getTimestamp("UPDATE_TIMESTAMP"));
				wsVO.setModifyId(rs.getString("MODIFY_ID"));
				wsVO.setInsertBy(rs.getString("INSERT_BY"));
				wsVO.setCheckFlag(rs.getInt("CHECK_FLAG"));
				wsVO.setAddStation(rs.getInt("ADD_STATION"));
				list.add(wsVO);

			}
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
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

	public static byte[] blobToByteArr(Blob blob) {
		InputStream is = null;
		ByteArrayOutputStream baos = null;
		try {
			is = blob.getBinaryStream();
			baos = new ByteArrayOutputStream();
			byte[] buffer = new byte[8192];
			int i;
			while ((i = is.read(buffer)) != -1) {
				baos.write(buffer, 0, i);
			}
			baos.close();
			is.close();
		} catch (NullPointerException ni) {
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return baos.toByteArray();
	}
}
