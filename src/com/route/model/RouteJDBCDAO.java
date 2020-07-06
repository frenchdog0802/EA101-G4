package com.route.model;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class RouteJDBCDAO implements RouteDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "EA101_G4";
	String passwd = "EA101_G4";

	private static final String INSERT_STMT = "INSERT INTO ROUTE_PLAN(SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY, START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE) VALUES (('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0')),?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final String GET_ALL_STMT = "SELECT * FROM ROUTE_PLAN  ORDER BY SQ_ROUTE_ID";
	private static final String GET_ONE_STMT = "SELECT SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY, START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, INSERT_TIMESTAMP, UPDATE_TIMESTAMP, MODIFY_ID, CHECK_FLAG, ADD_ROUTE FROM ROUTE_PLAN WHERE SQ_ROUTE_ID =?";
	private static final String GET_Area_ByStartArea_STMT = "SELECT SQ_ROUTE_ID, ROUTE_NAME, DISTANCE, COUNTRY, START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION FROM ROUTE_PLAN WHERE START_AREA IN ";
	private static final String GET_Route_ByMemId = "SELECT SQ_ROUTE_ID, ROUTE_NAME, DISTANCE, COUNTRY, START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION FROM ROUTE_PLAN WHERE SQ_MEMBER_ID=?";

	private static final String DELETE_ROUTE = "DELETE FROM ROUTE_PLAN WHERE SQ_ROUTE_ID=?";
	private static final String DELETE_ROUTE_DETAIL = "DELETE FROM ROUTE_PLAN_DETAIL WHERE SQ_ROUTE_ID=?";

	private static final String UPDATE_ByMemId = "UPDATE ROUTE_PLAN SET ROUTE_NAME=?, DISTANCE=?, COUNTRY=?, START_AREA=?, END_AREA=?, ROUTE_IMAGE=?, ROUTE_INTRODUCTION=? WHERE SQ_ROUTE_ID = ?";
	private static final String UPDATE_ByStafId = "UPDATE ROUTE_PLAN SET CHECK_FLAG=?, ADD_ROUTE=? WHERE SQ_ROUTE_ID = ?";

	@Override
	public void insert(RouteVO routeVO) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, routeVO.getSqMemberId());
			pstmt.setString(2, routeVO.getSqStaffId());
			pstmt.setString(3, routeVO.getRouteName());
			pstmt.setDouble(4, routeVO.getDistance());
			pstmt.setString(5, routeVO.getCountry());
			pstmt.setString(6, routeVO.getStartArea());
			pstmt.setString(7, routeVO.getEndArea());
			pstmt.setBytes(8, routeVO.getRouteImage());
			pstmt.setString(9, routeVO.getRouteIntroduction());
			pstmt.setString(10, routeVO.getModifyId());
			pstmt.setInt(11, routeVO.getCheckFlag());
			pstmt.setInt(12, routeVO.getAddRoute());

			pstmt.executeUpdate();
			// ��靘��
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
	public void updateByMem(RouteVO routeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE_ByMemId);

			pstmt.setString(1, routeVO.getRouteName());
			pstmt.setDouble(2, routeVO.getDistance());
			pstmt.setString(3, routeVO.getCountry());
			pstmt.setString(4, routeVO.getStartArea());
			pstmt.setString(5, routeVO.getEndArea());
			pstmt.setBytes(6, routeVO.getRouteImage());
			pstmt.setString(7, routeVO.getRouteIntroduction());
			pstmt.setString(8, routeVO.getSqMemberId());
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
	public void updateByStaf(RouteVO routeVO) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE_ByStafId);
			System.out.println(UPDATE_ByStafId);
			pstmt.setInt(1, routeVO.getCheckFlag());
			pstmt.setInt(2, routeVO.getAddRoute());
			pstmt.setString(3, routeVO.getSqRouteId());
			System.out.println(routeVO.getCheckFlag());
			System.out.println(routeVO.getAddRoute());
			System.out.println(routeVO.getSqRouteId());
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
	public void delete(String sqRouteId) {
		int updateCount_ROUDEs = 0;

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);

			// 1��身摰 pstm.executeUpdate()銋��
			con.setAutoCommit(false);

			// ���頝舐�敦蝭�
			pstmt = con.prepareStatement(DELETE_ROUTE_DETAIL);
			pstmt.setString(1, sqRouteId);
			updateCount_ROUDEs = pstmt.executeUpdate();
			// ���頝舐��
			pstmt = con.prepareStatement(DELETE_ROUTE);
			pstmt.setString(1, sqRouteId);
			pstmt.executeUpdate();

			// 2��身摰 pstm.executeUpdate()銋��
			con.commit();
			con.setAutoCommit(true);
			System.out.println("��頝舐�D" + sqRouteId + "���������" + updateCount_ROUDEs + "������◤��");

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. " + e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			if (con != null) {
				try {
					// 3��身摰���xception�����atch��憛
					con.rollback();
				} catch (SQLException excep) {
					throw new RuntimeException("rollback error occured. " + excep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. " + se.getMessage());
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
	public RouteVO findByPrimaryKey(String sqRouteId) {
		RouteVO routeVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);
			pstmt.setString(1, sqRouteId);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				routeVO = new RouteVO();

				routeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				routeVO.setSqMemberId(rs.getString("SQ_MEMBER_ID"));
				routeVO.setSqStaffId(rs.getString("SQ_STAFF_ID"));
				routeVO.setRouteName(rs.getString("ROUTE_NAME"));
				routeVO.setDistance(rs.getDouble("DISTANCE"));
				routeVO.setCountry(rs.getString("COUNTRY"));
				routeVO.setStartArea(rs.getString("START_AREA"));
				routeVO.setEndArea(rs.getString("END_AREA"));
				routeVO.setRouteImage(rs.getBytes("ROUTE_IMAGE"));
				routeVO.setRouteIntroduction(rs.getString("ROUTE_INTRODUCTION"));
				routeVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				routeVO.setUpdateTimestamp(rs.getTimestamp("UPDATE_TIMESTAMP"));
				routeVO.setModifyId(rs.getString("MODIFY_ID"));
				routeVO.setCheckFlag(rs.getInt("CHECK_FLAG"));
				routeVO.setAddRoute(rs.getInt("ADD_ROUTE"));
			}

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
		return routeVO;
	}

	@Override
	public List<RouteVO> getAll() {
		List<RouteVO> list = new ArrayList<RouteVO>();
		RouteVO routeVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				routeVO = new RouteVO();
				routeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				routeVO.setSqMemberId(rs.getString("SQ_MEMBER_ID"));
				routeVO.setSqStaffId(rs.getString("SQ_STAFF_ID"));
				routeVO.setRouteName(rs.getString("ROUTE_NAME"));
				routeVO.setDistance(rs.getDouble("DISTANCE"));
				routeVO.setCountry(rs.getString("COUNTRY"));
				routeVO.setStartArea(rs.getString("START_AREA"));
				routeVO.setEndArea(rs.getString("END_AREA"));
				Blob blob = rs.getBlob("ROUTE_IMAGE");
				routeVO.setRouteImage(blobToByteArr(blob));
				routeVO.setRouteIntroduction(rs.getString("ROUTE_INTRODUCTION"));
				routeVO.setInsertTimestamp(rs.getTimestamp("INSERT_TIMESTAMP"));
				routeVO.setUpdateTimestamp(rs.getTimestamp("UPDATE_TIMESTAMP"));
				routeVO.setModifyId(rs.getString("MODIFY_ID"));
				routeVO.setCheckFlag(rs.getInt("CHECK_FLAG"));
				routeVO.setAddRoute(rs.getInt("ADD_ROUTE"));
				list.add(routeVO);
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

	@Override
	public List<RouteVO> getAreaByStartArea(String startArea) {
		List<RouteVO> list = new LinkedList<RouteVO>();
		RouteVO routeVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_Area_ByStartArea_STMT + startArea);
			System.out.println("SQL:" + GET_Area_ByStartArea_STMT + startArea);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				routeVO = new RouteVO();
				routeVO.setRouteName(rs.getString("ROUTE_NAME"));
				routeVO.setDistance(rs.getDouble("DISTANCE"));
				routeVO.setCountry(rs.getString("COUNTRY"));
				routeVO.setStartArea(rs.getString("START_AREA"));
				routeVO.setEndArea(rs.getString("END_AREA"));
//				Blob blob = rs.getBlob("ROUTE_IMAGE");
//				routeVO.setRouteImage(blobToByteArr(blob));
				routeVO.setRouteIntroduction(rs.getString("ROUTE_INTRODUCTION"));
				routeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				list.add(routeVO);
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

	@Override
	public Set<RouteVO> getRouteByMemId(String sqMemberId) {
		Set<RouteVO> set = new LinkedHashSet<RouteVO>();
		RouteVO routeVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_Route_ByMemId);
			pstmt.setString(1, sqMemberId);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				routeVO = new RouteVO();
				routeVO.setSqRouteId(rs.getString("SQ_ROUTE_ID"));
				routeVO.setRouteName(rs.getString("ROUTE_NAME"));
				routeVO.setDistance(rs.getDouble("DISTANCE"));
				routeVO.setCountry(rs.getString("COUNTRY"));
				routeVO.setStartArea(rs.getString("START_AREA"));
				routeVO.setEndArea(rs.getString("END_AREA"));
				routeVO.setRouteImage(rs.getBytes("ROUTE_IMAGE"));
				routeVO.setRouteIntroduction(rs.getString("ROUTE_INTRODUCTION"));
				set.add(routeVO);
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

		return set;

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
