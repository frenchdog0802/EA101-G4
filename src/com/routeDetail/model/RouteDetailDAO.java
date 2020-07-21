package com.routeDetail.model;

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
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.route.model.RouteVO;
import com.waterStation.model.WaterStationVO;

public class RouteDetailDAO implements RouteDetailDAO_interface {

//	String driver = "oracle.jdbc.driver.OracleDriver";
//	String url = "jdbc:oracle:thin:@localhost:1521:XE";
//	String userid = "EA101_G4";
//	String passwd = "EA101_G4";
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = "INSERT INTO ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER, SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE, STEP_LATITUDE, STEP_IMAGE, STEP_INTRODUCTION) VALUES ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), ?, ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = "SELECT * FROM ROUTE_PLAN_DETAIL";
	private static final String GET_ONE_STMT = "SELECT SQ_SERIAL_NUMBER, SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE, STEP_LATITUDE, INSERT_TIMESTAMP, STEP_IMAGE, STEP_INTRODUCTION FROM ROUTE_PLAN_DETAIL WHERE SQ_SERIAL_NUMBER = ?";
	private static final String GET_STEP_BYROUID_STMT = "SELECT * FROM ROUTE_PLAN_DETAIL WHERE SQ_ROUTE_ID=? ORDER BY SQ_SERIAL_ID";

	private static final String DELETE = "DELETE FROM ROUTE_PLAN_DETAIL where SQ_SERIAL_NUMBER = ?";

	private static final String UPDATE_BY_SERIALNO = "UPDATE ROUTE_PLAN_DETAIL SET STEP_NAME=?, STEP_LONGITUDE=?, STEP_LATITUDE=?, STEP_IMAGE=?, STEP_INTRODUCTION=? where SQ_SERIAL_NUMBER=?";
	private static final String UPDATE_BY_ROUTEID = "UPDATE ROUTE_PLAN_DETAIL SET STEP_NAME=?, STEP_LONGITUDE=?, STEP_LATITUDE=?, STEP_IMAGE=?, STEP_INTRODUCTION=? where SQ_ROUTE_ID=? ";

	// 上傳圖片
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
	public void insert(RouteDetailVO rouDeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		System.out.println("IN DAO");
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, rouDeVO.getSqRouteId());
			pstmt.setString(2, rouDeVO.getStepName());
			pstmt.setDouble(3, rouDeVO.getStLongitude());
			pstmt.setDouble(4, rouDeVO.getStLatitude());
			pstmt.setBytes(5,  rouDeVO.getStepImage());
			pstmt.setString(6, rouDeVO.getStepIntroduction());

			pstmt.executeUpdate();
			// 捕捉例外
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
	public void updateBySerialNo(RouteDetailVO rouDeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE_BY_SERIALNO);

			pstmt.setString(1, rouDeVO.getStepName());
			pstmt.setDouble(2, rouDeVO.getStLongitude());
			pstmt.setDouble(3, rouDeVO.getStLatitude());
			pstmt.setBytes(4, rouDeVO.getStepImage());
			pstmt.setString(5, rouDeVO.getStepIntroduction());
			pstmt.setString(6, rouDeVO.getSqSerialNo());

			pstmt.executeUpdate();
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
	public void delete(String sqSerialNo) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sqSerialNo);
			pstmt.executeUpdate();

			// Handle any driver errors
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
	public RouteDetailVO findByPrimaryKey(String sqSerialNo) {
		RouteDetailVO rouDeVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sqSerialNo);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				// rouDeVO 也稱為 Domain objects
				rouDeVO = new RouteDetailVO();
				rouDeVO.setSqSerialNo(rs.getString("SQ_SERIAL_NUMBER"));
				rouDeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				rouDeVO.setStepName(rs.getString("STEP_NAME"));
				rouDeVO.setStLongitude(rs.getDouble("STEP_LONGITUDE"));
				rouDeVO.setStLatitude(rs.getDouble("STEP_LATITUDE"));
				rouDeVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				Blob blob = rs.getBlob("STEP_IMAGE");
				rouDeVO.setStepImage(blobToByteArr(blob));
				rouDeVO.setStepIntroduction(rs.getString("STEP_INTRODUCTION"));

			}

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
		return rouDeVO;

	}

	@Override
	public List<RouteDetailVO> getAll() {
		List<RouteDetailVO> list = new ArrayList<RouteDetailVO>();
		RouteDetailVO rouDeVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				rouDeVO = new RouteDetailVO();

				rouDeVO.setSqSerialNo(rs.getString("SQ_SERIAL_NUMBER"));
				rouDeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				rouDeVO.setStepName(rs.getString("STEP_NAME"));
				rouDeVO.setStLongitude(rs.getDouble("STEP_LONGITUDE"));
				rouDeVO.setStLatitude(rs.getDouble("STEP_LATITUDE"));
				rouDeVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				Blob blob = rs.getBlob("STEP_IMAGE");
				rouDeVO.setStepImage(blobToByteArr(blob));
				rouDeVO.setStepIntroduction(rs.getString("STEP_INTRODUCTION"));
				list.add(rouDeVO);

			}
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

	@Override
	public List<RouteDetailVO> getStepsByRouteId(String sqRouteId) {
		List<RouteDetailVO> list = new ArrayList<RouteDetailVO>();
		RouteDetailVO rouDeVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_STEP_BYROUID_STMT);
			pstmt.setString(1, sqRouteId);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				rouDeVO = new RouteDetailVO();
				rouDeVO.setSqSerialNo(rs.getString("SQ_SERIAL_NUMBER"));
				rouDeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				rouDeVO.setStepName(rs.getString("STEP_NAME"));
				rouDeVO.setStLongitude(rs.getDouble("STEP_LONGITUDE"));
				rouDeVO.setStLatitude(rs.getDouble("STEP_LATITUDE"));
				rouDeVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				Blob blob = rs.getBlob("STEP_IMAGE");
				rouDeVO.setStepImage(blobToByteArr(blob));
				rouDeVO.setStepIntroduction(rs.getString("STEP_INTRODUCTION"));
				list.add(rouDeVO);

			}
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

	@Override
	public void updateByRouId(RouteDetailVO rouDeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE_BY_ROUTEID);
			pstmt.setString(1, rouDeVO.getStepName());
			pstmt.setDouble(2, rouDeVO.getStLongitude());
			pstmt.setDouble(3, rouDeVO.getStLatitude());
			pstmt.setBytes(4, rouDeVO.getStepImage());
			pstmt.setString(5, rouDeVO.getStepIntroduction());

			pstmt.executeUpdate();
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



