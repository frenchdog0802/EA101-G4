package com.act.model;

import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.actjoin.model.ActJoinJDBCDAO;
import com.actjoin.model.ActJoinVO;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;

public class ActJNDIDAO implements ActDAO_interface {
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/EA101_G4");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = "INSERT INTO ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) VALUES ( 'ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)";
	private static final String UPDATE = "UPDATE ACTIVITY set SQ_ROUTE_ID=?, SQ_MEMBER_ID=?,ACT_TITLE=?, MAX_POPULATION=?, MIN_POPULATION=?, ACT_DESCRIPTION=?, START_TIME=?, END_TIME=?, ACT_START_TIME=?, ACT_END_TIME=?, ACT_PICTURE=?, GP_STATUS=? where SQ_ACTIVITY_ID = ?";
	private static final String CANCEL = "UPDATE ACTIVITY set GP_STATUS=2 where SQ_ACTIVITY_ID = ?";
	private static final String JOINEXCEED = "UPDATE ACTIVITY set GP_STATUS=0 where SQ_ACTIVITY_ID = ?";
	private static final String JOINBELOW = "UPDATE ACTIVITY set GP_STATUS=1 where SQ_ACTIVITY_ID = ?";
	private static final String DELETE = "UPDATE ACTIVITY set GP_STATUS=3 where SQ_ACTIVITY_ID = ?";
	private static final String GET_ONE_STMT = "SELECT SQ_ACTIVITY_ID, SQ_ROUTE_ID, SQ_MEMBER_ID, ACT_TITLE, MAX_POPULATION, MIN_POPULATION, ACT_DESCRIPTION, to_char(START_TIME,'yyyy-mm-dd') START_TIME, to_char(END_TIME,'yyyy-mm-dd') END_TIME, to_char(ACT_START_TIME,'yyyy-mm-dd') ACT_START_TIME, to_char(ACT_END_TIME,'yyyy-mm-dd') ACT_END_TIME, ACT_PICTURE, GP_STATUS FROM ACTIVITY where SQ_ACTIVITY_ID = ?";
	private static final String GET_ALL_STMT = "SELECT SQ_ACTIVITY_ID, SQ_ROUTE_ID, SQ_MEMBER_ID, ACT_TITLE, MAX_POPULATION, MIN_POPULATION, ACT_DESCRIPTION, to_char(START_TIME,'yyyy-mm-dd') START_TIME, to_char(END_TIME,'yyyy-mm-dd') END_TIME, to_char(ACT_START_TIME,'yyyy-mm-dd') ACT_START_TIME, to_char(ACT_END_TIME,'yyyy-mm-dd') ACT_END_TIME, ACT_PICTURE, GP_STATUS FROM ACTIVITY order by SQ_ACTIVITY_ID";

	@Override
	public void insert(ActVO actVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, actVO.getSq_route_id());
			pstmt.setString(2, actVO.getSq_member_id());
			pstmt.setString(3, actVO.getAct_title());
			pstmt.setInt(4, actVO.getMax_population());
			pstmt.setInt(5, actVO.getMin_population());
			pstmt.setString(6, actVO.getAct_description());
			pstmt.setDate(7, actVO.getStart_time());
			pstmt.setDate(8, actVO.getEnd_time());
			pstmt.setDate(9, actVO.getAct_start_time());
			pstmt.setDate(10, actVO.getAct_end_time());
			pstmt.setBytes(11, actVO.getAct_picture());
		
			pstmt.executeUpdate();

			// Handle any driver errors
		}  catch (SQLException se) {
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
	public void update(ActVO actVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);
	
			pstmt.setString(1, actVO.getSq_route_id());
			pstmt.setString(2, actVO.getSq_member_id());
			pstmt.setString(3, actVO.getAct_title());
			pstmt.setInt(4, actVO.getMax_population());
			pstmt.setInt(5, actVO.getMin_population());
			pstmt.setString(6, actVO.getAct_description());
			pstmt.setDate(7, actVO.getStart_time());
			pstmt.setDate(8, actVO.getEnd_time());
			pstmt.setDate(9, actVO.getAct_start_time());
			pstmt.setDate(10, actVO.getAct_end_time());
			pstmt.setBytes(11, actVO.getAct_picture());
			pstmt.setInt(12, actVO.getGp_status());
			pstmt.setString(13, actVO.getSq_activity_id());

			pstmt.executeUpdate();

			// Handle any driver errors
		}  catch (SQLException se) {
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


	// 此方法只是把活動狀態改成2(取消活動)
	@Override
	public void cancel(String SQ_ACTIVITY_ID) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(CANCEL);

			pstmt.setString(1, SQ_ACTIVITY_ID);

			pstmt.executeUpdate();

			// Handle any driver errors
		}  catch (SQLException se) {
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
	public void joinExceed(String SQ_ACTIVITY_ID) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(JOINEXCEED);

			pstmt.setString(1, SQ_ACTIVITY_ID);

			pstmt.executeUpdate();

			// Handle any driver errors
		}  catch (SQLException se) {
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
	public void joinBelow(String SQ_ACTIVITY_ID) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(JOINBELOW);

			pstmt.setString(1, SQ_ACTIVITY_ID);

			pstmt.executeUpdate();

			// Handle any driver errors
		}  catch (SQLException se) {
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
	
	// 此方法只是把活動狀態改成4(下架活動)
		@Override
		public void delete(String SQ_ACTIVITY_ID) {

			Connection con = null;
			PreparedStatement pstmt = null;

			try {

				con = ds.getConnection();
				pstmt = con.prepareStatement(DELETE);

				pstmt.setString(1, SQ_ACTIVITY_ID);

				pstmt.executeUpdate();

				// Handle any driver errors
			}  catch (SQLException se) {
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
	public ActVO findByPrimaryKey(String SQ_ACTIVITY_ID) {

		ActVO actVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, SQ_ACTIVITY_ID);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				// empVo 也稱為 Domain01 objects
				actVO = new ActVO();
				actVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actVO.setSq_route_id(rs.getString("SQ_ROUTE_ID"));
				actVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actVO.setAct_title(rs.getString("ACT_TITLE"));
				actVO.setMax_population(rs.getInt("MAX_POPULATION"));
				actVO.setMin_population(rs.getInt("MIN_POPULATION"));
				actVO.setAct_description(rs.getString("ACT_DESCRIPTION"));
				actVO.setStart_time(rs.getDate("START_TIME"));
				actVO.setEnd_time(rs.getDate("END_TIME"));
				actVO.setAct_start_time(rs.getDate("ACT_START_TIME"));
				actVO.setAct_end_time(rs.getDate("ACT_END_TIME"));
				actVO.setAct_picture(rs.getBytes("ACT_PICTURE"));
				actVO.setGp_status(rs.getInt("GP_STATUS"));
				
				byte[] pic = rs.getBytes("ACT_PICTURE");
				readPicture(pic);
			}

			// Handle any driver errors
		}  catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} catch (IOException e) {
			e.printStackTrace();
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
		return actVO;
	}

	@Override
	public List<ActVO> getAll() {
		List<ActVO> list = new ArrayList<ActVO>();
		ActVO actVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO 也稱為 Domain objects
				actVO = new ActVO();
				actVO.setSq_activity_id(rs.getString("SQ_ACTIVITY_ID"));
				actVO.setSq_route_id(rs.getString("SQ_ROUTE_ID"));
				actVO.setSq_member_id(rs.getString("SQ_MEMBER_ID"));
				actVO.setAct_title(rs.getString("ACT_TITLE"));
				actVO.setMax_population(rs.getInt("MAX_POPULATION"));
				actVO.setMin_population(rs.getInt("MIN_POPULATION"));
				actVO.setAct_description(rs.getString("ACT_DESCRIPTION"));
				actVO.setStart_time(rs.getDate("START_TIME"));
				actVO.setEnd_time(rs.getDate("END_TIME"));
				actVO.setAct_start_time(rs.getDate("ACT_START_TIME"));
				actVO.setAct_end_time(rs.getDate("ACT_END_TIME"));
				actVO.setAct_picture(rs.getBytes("ACT_PICTURE"));
				actVO.setGp_status(rs.getInt("GP_STATUS"));

				byte[] pic = rs.getBytes("ACT_PICTURE");
				readPicture2(pic);

				list.add(actVO); // Store the row in the list
			}

			// Handle any driver errors
		}  catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
		} catch (IOException e) {
			e.printStackTrace();
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
	public void insertWithActJoin(ActVO actVO , List<ActJoinVO> list) { //活動綁參加活動明細的方法

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			
			// 1●設定於 pstm.executeUpdate()之前
    		con.setAutoCommit(false);
			
    		// 先新增活動
			String cols[] = {"SQ_ACTIVITY_ID"}; //joined_act_detail綁定這兩個欄位(複合主鍵)
			pstmt = con.prepareStatement(INSERT_STMT , cols);			
			pstmt.setString(1, actVO.getSq_route_id());
			pstmt.setString(2, actVO.getSq_member_id());
			pstmt.setString(3, actVO.getAct_title());
			pstmt.setInt(4, actVO.getMax_population());
			pstmt.setInt(5, actVO.getMin_population());
			pstmt.setString(6, actVO.getAct_description());
			pstmt.setDate(7, actVO.getStart_time());
			pstmt.setDate(8, actVO.getEnd_time());
			pstmt.setDate(9, actVO.getAct_start_time());
			pstmt.setDate(10, actVO.getAct_end_time());
			pstmt.setBytes(11, actVO.getAct_picture());
			pstmt.executeUpdate();
			//掘取對應的自增主鍵值
			String next_sq_activity_id = null;
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				next_sq_activity_id = rs.getString(1);
				System.out.println("自增主鍵值= " + next_sq_activity_id +"(剛新增成功的活動編號)");
			} else {
				System.out.println("未取得自增主鍵值");
			}
			rs.close();
			// 再同時新增參加活動明細
			ActJoinJDBCDAO dao = new ActJoinJDBCDAO();
			System.out.println("list.size()-A="+list.size());
			for (ActJoinVO aActJoin : list) {
				aActJoin.setSq_activity_id(new String(next_sq_activity_id)) ;
				dao.insert2(aActJoin,con);
			}

			// 2●設定於 pstm.executeUpdate()之後
			con.commit();
			con.setAutoCommit(true);
			System.out.println("list.size()-B="+list.size());
			
			// Handle any driver errors
		}  catch (SQLException se) {
			if (con != null) {
				try {
					// 3●設定於當有exception發生時之catch區塊內
					System.err.print("Transaction is being ");
					System.err.println("rolled back-由-act");
					con.rollback();
				} catch (SQLException excep) {
					throw new RuntimeException("rollback error occured. "
							+ excep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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


	public static void main(String[] args) throws IOException {

		ActJNDIDAO dao = new ActJNDIDAO();

		byte[] pic = getPictureByteArray("C://DB_photos//NankanPark.jpg");
		// 新增
		ActVO actVO1 = new ActVO();
		actVO1.setSq_route_id("RP110001");
		actVO1.setSq_member_id("910009");
		actVO1.setAct_title("南崁河濱公園");
		actVO1.setMax_population(new Integer(20));
		actVO1.setMin_population(new Integer(5));
		actVO1.setAct_description("老人小孩皆可娛樂的場所");
		actVO1.setStart_time(java.sql.Date.valueOf("2020-06-01"));
		actVO1.setEnd_time(java.sql.Date.valueOf("2020-06-05"));
		actVO1.setAct_start_time(java.sql.Date.valueOf("2020-06-06"));
		actVO1.setAct_end_time(java.sql.Date.valueOf("2020-06-08"));
		actVO1.setAct_picture(pic);
		dao.insert(actVO1);

		// 修改
//		byte[] pic2 = getPictureByteArray("C://DB_photos//green.jpg");
//		ActVO actVO2 = new ActVO();
//		
//		actVO2.setSq_route_id("RP110001");
//		actVO2.setSq_member_id("910009");
//		actVO2.setAct_title("大鶯綠野景觀自行車道");
//		actVO2.setMax_population(new Integer(30));
//		actVO2.setMin_population(new Integer(10));
//		actVO2.setAct_description("騎車踏青好去處");
//		actVO2.setStart_time(java.sql.Date.valueOf("2020-06-05"));
//		actVO2.setEnd_time(java.sql.Date.valueOf("2020-06-09"));
//		actVO2.setAct_start_time(java.sql.Date.valueOf("2020-06-10"));
//		actVO2.setAct_end_time(java.sql.Date.valueOf("2020-06-12"));
//		actVO2.setAct_picture(pic2);
//		actVO2.setGp_status(new Integer(1));
//		actVO2.setSq_activity_id("ACT-700011");
//		dao.update(actVO2);
//
//	    // 取消活動(前台)
//		dao.cancel("ACT-700011");
//		
//		// 下架活動(後台)
//		dao.delete("ACT-700011");
//
//		// 查詢
//		ActVO actVO3 = dao.findByPrimaryKey("ACT-700011");
//		System.out.print(actVO3.getSq_activity_id() + ",");
//		System.out.print(actVO3.getSq_route_id() + ",");
//		System.out.print(actVO3.getSq_member_id() + ",");
//		System.out.print(actVO3.getAct_title() + ",");
//		System.out.print(actVO3.getMax_population() + ",");
//		System.out.print(actVO3.getMin_population() + ",");
//		System.out.print(actVO3.getAct_description() + ",");
//		System.out.print(actVO3.getStart_time() + ",");
//		System.out.print(actVO3.getEnd_time() + ",");
//		System.out.print(actVO3.getAct_start_time() + ",");
//		System.out.print(actVO3.getAct_end_time() + ",");
//		System.out.print(actVO3.getAct_picture()+ ",");
//		System.out.print(actVO3.getGp_status());
//		System.out.println("---------------------");
//
//		// 查詢
//		List<ActVO> list = dao.getAll();
//		for (ActVO aAct : list) {
//			System.out.print(aAct.getSq_activity_id() + ",");
//			System.out.print(aAct.getSq_route_id() + ",");
//			System.out.print(aAct.getSq_member_id() + ",");
//			System.out.print(aAct.getAct_title() + ",");
//			System.out.print(aAct.getMax_population() + ",");
//			System.out.print(aAct.getMin_population() + ",");
//			System.out.print(aAct.getAct_description() + ",");
//			System.out.print(aAct.getStart_time() + ",");
//			System.out.print(aAct.getEnd_time() + ",");
//			System.out.print(aAct.getAct_start_time() + ",");
//			System.out.print(aAct.getAct_end_time() + ",");
//			System.out.print(aAct.getAct_picture() + ",");
//			System.out.print(aAct.getGp_status());
//			System.out.println();
//		}
		
		//新增活動,參加活動明細及主辦者也會跟著產生
//		ActVO actVO4 = new ActVO();
//		byte[] pic3 = getPictureByteArray("C://DB_photos//NankanPark.jpg");
//		actVO4.setSq_route_id("RP110001");
//		actVO4.setSq_member_id("910009");
//		actVO4.setAct_title("南崁河濱公園");
//		actVO4.setMax_population(new Integer(20));
//		actVO4.setMin_population(new Integer(5));
//		actVO4.setAct_description("老人小孩皆可娛樂的場所");
//		actVO4.setStart_time(java.sql.Date.valueOf("2020-06-01"));
//		actVO4.setEnd_time(java.sql.Date.valueOf("2020-06-05"));
//		actVO4.setAct_start_time(java.sql.Date.valueOf("2020-06-06"));
//		actVO4.setAct_end_time(java.sql.Date.valueOf("2020-06-08"));
//		actVO4.setAct_picture(pic3);
//		
//		List<ActJoinVO> testList = new ArrayList<ActJoinVO>(); // 準備置入員工數人
//		ActJoinVO actjoinVO = new ActJoinVO();   // 員工POJO1
//		
//		actjoinVO.setSq_member_id("910009");
//		actjoinVO.setJoin_time(java.sql.Timestamp.valueOf("2020-05-20 10:11:12"));
//
//		testList.add(actjoinVO);
//	
//		dao.insertWithActJoin(actVO4 , testList);

	}

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

	// Handle with byte array data
	public static void readPicture(byte[] bytes) throws IOException {
		File folder = new File("Output");
		if (!folder.exists()) {
			folder.mkdir(); // 建立資料夾
		}
		FileOutputStream fos = new FileOutputStream("Output/NankanPark.jpg");
		fos.write(bytes);
		fos.flush();
		fos.close();
	}

	static int i = 1;

	public static void readPicture2(byte[] bytes) throws IOException {
		File folder = new File("Output");
		if (!folder.exists()) {
			folder.mkdir(); // 建立資料夾
		}
		StringBuilder sb = new StringBuilder();
		sb.append("Output/image");
		sb.append(i);
		sb.append(".jpg");
		String str = sb.toString();
		FileOutputStream fos = new FileOutputStream(str);
		fos.write(bytes);
		fos.flush();
		fos.close();
		i++;

	}
	
}
