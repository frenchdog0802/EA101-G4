package com.shop_order.model;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.shop_order_detail.model.Shop_order_detailDAO;
import com.shop_order_detail.model.Shop_order_detailVO;
import com.shop_product.model.Shop_productVO;

public class Shop_orderDAO implements Shop_orderDAO_interface{
//	String driver = "oracle.jdbc.driver.OracleDriver";
//	String url = "jdbc:oracle:thin:@localhost:1521:XE";
//	String user = "EA101_G4";
//	String password = "EA101_G4";
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public static final String INSERT = "INSERT INTO SHOP_ORDER(SQ_ORDER_ID, SQ_MEMBER_ID, SQ_STORE_ADDRESS_ID, ORDER_ADDRESS, ORDER_DATE, PAY_DEADLINE, SHOP_ORDER_PRICE, PAY_MODE, ORDER_STATUS)"
			+ "VALUES (?, ?, ?, ?, to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), to_date(to_char(sysdate+7,'yyyy-mm-dd'),'yyyy-mm-dd'), ?, ?, ?)";
	public static final String UPDATE = "UPDATE SHOP_ORDER SET ORDER_STATUS=? WHERE SQ_ORDER_ID=?";
	public static final String DELETE = "DELETE FROM SHOP_ORDER WHERE SQ_ORDER_ID=?";
	public static final String GET_ONE = "SELECT SQ_ORDER_ID, SQ_MEMBER_ID, SQ_STORE_ADDRESS_ID, ORDER_ADDRESS, ORDER_DATE, PAY_DEADLINE, SHOP_ORDER_PRICE, PAY_MODE, ORDER_STATUS FROM SHOP_ORDER WHERE SQ_ORDER_ID=?";
	public static final String GET_ALL = "SELECT SQ_ORDER_ID, SQ_MEMBER_ID, SQ_STORE_ADDRESS_ID, ORDER_ADDRESS, ORDER_DATE, PAY_DEADLINE, SHOP_ORDER_PRICE, PAY_MODE, ORDER_STATUS FROM SHOP_ORDER ORDER BY SQ_ORDER_ID";
	private static final String GET_CURRENTKEY = "select sq_product_id from (select * from shop_prder order by order_date desc ) where rownum=1";
	
	public void insert(Shop_orderVO shop_orderVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, shop_orderVO.getSq_member_id());
			pstmt.setString(2, shop_orderVO.getSq_store_address_id());
			pstmt.setString(3, shop_orderVO.getOrder_address());
			pstmt.setInt(4, shop_orderVO.getShop_order_price());
			pstmt.setInt(5, shop_orderVO.getPay_mode());
			pstmt.setInt(6, shop_orderVO.getOrder_status());	
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured. "
			+ se.getMessage());
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
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
	}
	
//	'OD-'||LPAD(to_char(SQ_ORDER_ID.NEXTVAL),6,0)
	@Override
	public void insertWithDetail(Shop_orderVO orderVO, List<Shop_order_detailVO> list) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT);
			
			pstmt.setString(1, orderVO.getSq_order_id());
			pstmt.setString(2, orderVO.getSq_member_id());
			pstmt.setString(3, orderVO.getSq_store_address_id());
			pstmt.setString(4, orderVO.getOrder_address());
			pstmt.setInt(5, orderVO.getShop_order_price());
			pstmt.setInt(6, orderVO.getPay_mode());
			pstmt.setInt(7, orderVO.getOrder_status());
			
			pstmt.executeUpdate();

			Shop_order_detailDAO detailDAO = new Shop_order_detailDAO();
			for(Shop_order_detailVO vo : list) {
				Shop_order_detailVO detailVO = new Shop_order_detailVO();
				detailVO.setSq_order_id(vo.getSq_order_id());
				detailVO.setSq_product_id(vo.getSq_product_id());
				detailVO.setProduct_price(vo.getProduct_price());
				detailVO.setOrder_sum(vo.getOrder_sum());
				detailDAO.insert(detailVO, con);
			}
			con.commit();
			con.setAutoCommit(true);
			
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured."
					+ se.getMessage());
		}finally {
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
	}

	@Override
	public void updateWithDetail(Shop_orderVO orderVO, List<Shop_order_detailVO> list) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(UPDATE);
			
			
			
			pstmt.setInt(1, orderVO.getOrder_status());
			pstmt.setString(2, orderVO.getSq_order_id());
			//-------------------------------------------------------------------------------------			
			pstmt.executeUpdate();//---------------------------------------------------------------
			//-------------------------------------------------------------------------------------			
			Shop_order_detailDAO detailDAO = new Shop_order_detailDAO();
			
			for(Shop_order_detailVO vo : list) {
				System.out.println("3");
				detailDAO.update(vo, con);
				System.out.println("4");
			}
			con.commit();
			
			
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured."
					+ se.getMessage());
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					con.setAutoCommit(true);
					con.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}	
	}
	
	@Override
	public void update(Shop_orderVO sorderVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setString(1, sorderVO.getSq_member_id());
			pstmt.setString(2, sorderVO.getSq_store_address_id());
			pstmt.setString(3, sorderVO.getOrder_address());
			pstmt.setTimestamp(4, sorderVO.getOrder_date());
			pstmt.setDate(5, sorderVO.getPay_deadline());
			pstmt.setInt(6, sorderVO.getShop_order_price());
			pstmt.setInt(7, sorderVO.getPay_mode());
			pstmt.setInt(8, sorderVO.getOrder_status());
			pstmt.setString(9, sorderVO.getSq_order_id());
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(SQLException se) {
			throw new RuntimeException("A database error occured." +se.getMessage());
		}finally {
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
	}

	@Override
	public void delete(String sq_order_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);
			
			pstmt.setString(1, sq_order_id);
			
			pstmt.executeUpdate();
			pstmt.clearParameters();
			
		}catch(SQLException e){
			throw new RuntimeException("A database error occured." + e.getMessage());
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if(con != null) {
				try {
					pstmt.close();
				}catch(Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public Shop_orderVO findByPrimaryKey(String sq_order_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_orderVO shop_orderVO = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE);
			pstmt.setString(1, sq_order_id);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				shop_orderVO = new Shop_orderVO();
				shop_orderVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_orderVO.setSq_member_id(rs.getString("sq_member_id"));
				shop_orderVO.setSq_store_address_id(rs.getString("sq_store_address_id"));
				shop_orderVO.setOrder_address(rs.getString("order_address"));
				shop_orderVO.setOrder_date(rs.getTimestamp("order_date"));
				shop_orderVO.setPay_deadline(rs.getDate("pay_deadline"));
				shop_orderVO.setShop_order_price(rs.getInt("shop_order_price"));
				shop_orderVO.setPay_mode(rs.getInt("pay_mode"));
				shop_orderVO.setOrder_status(rs.getInt("order_status"));
			}
			pstmt.clearParameters();
		}catch(SQLException e) {
			throw new RuntimeException("A database error occured." + e.getMessage());
		}finally {
			if(rs != null) {
				try	{
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
		return shop_orderVO;
	}

	@Override
	public List<Shop_orderVO> getAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shop_orderVO shop_orderVO = null;
		List<Shop_orderVO> list = new ArrayList<Shop_orderVO>();
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL);		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				shop_orderVO = new Shop_orderVO();
				shop_orderVO.setSq_order_id(rs.getString("sq_order_id"));
				shop_orderVO.setSq_member_id(rs.getString("sq_member_id"));
				shop_orderVO.setSq_store_address_id(rs.getString("sq_store_address_id"));
				shop_orderVO.setOrder_address(rs.getString("order_address"));
				shop_orderVO.setOrder_date(rs.getTimestamp("order_date"));
				shop_orderVO.setPay_deadline(rs.getDate("pay_deadline"));
				shop_orderVO.setShop_order_price(rs.getInt("shop_order_price"));
				shop_orderVO.setPay_mode(rs.getInt("pay_mode"));
				shop_orderVO.setOrder_status(rs.getInt("order_status"));
				
				list.add(shop_orderVO);
			}
			pstmt.clearParameters();
		}catch(SQLException e) {
			throw new RuntimeException("A database error occured." + e.getMessage());
		}finally {
			if(rs != null) {
				try	{
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
	public String getCurrentKey() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String shopOrder_id = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_CURRENTKEY);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				shopOrder_id= rs.getString(1);
			}

		}catch (SQLException e) {
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
		return shopOrder_id;
	}

	
	
//	public static void main(String args[]) {
//		Shop_orderDAO dao = new Shop_orderDAO();
//		Shop_orderVO vo = new Shop_orderVO();
//		vo.setSq_member_id("910001");
//		vo.setSq_store_address_id("550001");
//		vo.setOrder_address("中央大學");
//		vo.setShop_order_price(1200);
//		vo.setPay_mode(1);
//		vo.setOrder_status(0);
//		
//		List<Shop_order_detailVO> list = new ArrayList();
//		Shop_order_detailVO detailVO = new Shop_order_detailVO();
//		detailVO.setSq_order_id("OD-500002");
//		detailVO.setSq_product_id("510001");
//		detailVO.setProduct_price(499);
//		detailVO.setOrder_sum(2);
//		list.add(detailVO);
//		
//		dao.insertWithDetail(vo, list);
//	}
}
