package com.shop_report.model;
import java.util.*;
import java.sql.*;

public class Shop_reportDAO implements Shop_reportDAO_interface {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "KAINONG";
	String passwd = "123456";

	private static final String INSERT = "INSERT INTO SHOP_REPORT (SQ_MEMBER_ID, SQ_PRODUCT_ID, SHOP_REPORT_DETAIL, SHOP_REPORT_TIME, SHOP_REPORT_STATUS) VALUES (('PRR-'||LPAD(to_char(SQ_SHOP_REPORT_ID.NEXTVAL),6,0)), ?, ?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE SHOP_REPORT SET SQ_MEMBER_ID=?, SQ_PRODUCT_ID=?, SHOP_REPORT_DETAIL=?, SHOP_REPORT_TIME=?, SHOP_REPORT_STATUS=? WHERE SQ_SHOP_REPORT_ID = ?";
	private static final String DELETE = "DELETE FROM SHOP_REPORT WHERE SQ_SHOP_REPORT_ID = ?";	
	private static final String GET_ONE = "SELECT SQ_SHOP_REPORT_ID, SQ_MEMBER_ID, SQ_PRODUCT_ID, SHOP_REPORT_DETAIL, SHOP_REPORT_TIME, SHOP_REPORT_STATUS FROM SHOP_REPORT WHERE SQ_SHOP_REPORT_ID = ?";
	private static final String GET_ALL = "SELECT SQ_SHOP_REPORT_ID, SQ_MEMBER_ID, SQ_PRODUCT_ID, SHOP_REPORT_DETAIL, SHOP_REPORT_TIME, SHOP_REPORT_STATUS FROM SHOP_REPORT ORDER BY SQ_SHOP_REPORT_ID";
	
	@Override
	public void insert(Shop_reportVO shop_reportVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT);

			pstmt.setString(1, shop_reportVO.getSq_member_id());
			pstmt.setString(2, shop_reportVO.getSq_product_id());
			pstmt.setString(3, shop_reportVO.getShop_report_detial());
			pstmt.setTimestamp(4, shop_reportVO.getShop_report_time());
			pstmt.setInt(5, shop_reportVO.getShop_report_status());

			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
	public void update(Shop_reportVO shop_reportVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, shop_reportVO.getSq_member_id());
			pstmt.setString(2, shop_reportVO.getSq_product_id());
			pstmt.setString(3, shop_reportVO.getShop_report_detial());
			pstmt.setTimestamp(4, shop_reportVO.getShop_report_time());
			pstmt.setInt(5, shop_reportVO.getShop_report_status());
			pstmt.setString(6, shop_reportVO.getSq_shop_report_id());
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
	public void delete(String sq_shop_report_id) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE);

			pstmt.setString(1, sq_shop_report_id);

			pstmt.executeUpdate();
			pstmt.clearParameters();

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
	public Shop_reportVO findByPrimaryKey(String sq_shop_report_id) {

		Shop_reportVO shop_reportVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE);

			pstmt.setString(1, sq_shop_report_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				shop_reportVO = new Shop_reportVO();
				shop_reportVO.setSq_product_id(rs.getString("sq_shop_report_id"));
				shop_reportVO.setSq_member_id(rs.getString("sq_member_id"));
				shop_reportVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_reportVO.setShop_report_detial(rs.getString("shop_report_detial"));
				shop_reportVO.setShop_report_time(rs.getTimestamp("shop_report_time"));
				shop_reportVO.setShop_report_status(rs.getInt("shop_report_status"));
			}

		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
		return shop_reportVO;
	}

	@Override
	public List<Shop_reportVO> getAll() {
		List<Shop_reportVO> list = new ArrayList<Shop_reportVO>();
		Shop_reportVO shop_reportVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				shop_reportVO = new Shop_reportVO();
				shop_reportVO.setSq_product_id(rs.getString("sq_shop_report_id"));
				shop_reportVO.setSq_member_id(rs.getString("sq_member_id"));
				shop_reportVO.setSq_product_id(rs.getString("sq_product_id"));
				shop_reportVO.setShop_report_detial(rs.getString("shop_report_detial"));
				shop_reportVO.setShop_report_time(rs.getTimestamp("shop_report_time"));
				shop_reportVO.setShop_report_status(rs.getInt("shop_report_status"));
				list.add(shop_reportVO);
			}
			
			
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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

}