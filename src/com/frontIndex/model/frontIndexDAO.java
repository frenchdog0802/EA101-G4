package com.frontIndex.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.act.model.*;
import com.product_stock.model.Product_stockVO;
import com.route.model.RouteVO;
import com.shop_product.model.Shop_productVO;

public class frontIndexDAO implements FrontIndexDAO_interface{
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static final String GET_ACT = "SELECT ROWNUM, t.* FROM (SELECT * FROM ACTIVITY ORDER BY SQ_ACTIVITY_ID DESC) t WHERE ROWNUM <= 4";
	private static final String GET_PRODUCT = "SELECT ROWNUM, t.* FROM (SELECT * FROM SHOP_PRODUCT ORDER BY SQ_PRODUCT_ID DESC) t WHERE ROWNUM <= 4";
	private static final String GET_ROUTE = "SELECT ROWNUM, t.* FROM (SELECT * FROM ROUTE_PLAN ORDER BY SQ_ROUTE_ID DESC) t WHERE ROWNUM <= 4";

	@Override
	public List<ActVO> getTopFourAct() {
		List<ActVO> list = new ArrayList<ActVO>();
		ActVO actVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ACT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				actVO = new ActVO();
				actVO.setSq_activity_id(rs.getString("sq_activity_id"));
				actVO.setAct_title(rs.getString("act_title"));
				actVO.setAct_start_time(rs.getDate("start_time"));				
				list.add(actVO);
			}

		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." + se.getMessage());
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}		
		return list;
	}

	@Override
	public List<Shop_productVO> getTopFourProduct() {
		List<Shop_productVO> list = new ArrayList<Shop_productVO>();
		Shop_productVO productVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_PRODUCT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				productVO = new Shop_productVO();
				productVO.setSq_product_id(rs.getString("sq_product_id"));
				productVO.setProduct_name(rs.getString("product_name"));
				productVO.setProduct_price(rs.getInt("product_price"));
				list.add(productVO);
			}

		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." + se.getMessage());
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}		
		return list;
	}

	@Override
	public List<RouteVO> getTopFourRoute() {
		List<RouteVO> list = new ArrayList<RouteVO>();
		RouteVO routeVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ROUTE);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				routeVO = new RouteVO();
				routeVO.setSqRouteId(rs.getString("sq_route_id"));
				routeVO.setRouteName(rs.getString("route_name"));
				routeVO.setStartArea(rs.getString("start_area"));
				routeVO.setEndArea(rs.getString("end_area"));
				list.add(routeVO);
			}

		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." + se.getMessage());
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}		
		return list;
	}
}
