package com.bike.type.model;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BikeTypeDAO implements BikeTypeDAO_interface {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userId = "EA101_G4";
	String passwd = "EA101_G4";

	// INSERT
	private static final String INSERT_STMT = "INSERT INTO bike_type(sq_bike_type_id,bike_type_name,bike_title ,bike_description,bike_photo,bike_price)"
			+ "VALUES(sq_bike_type_id.NEXTVAL,?,?,?,?,?)";
	// UPDATE
	private static final String UPDATE_STMT = "UPDATE bike_type SET bike_type_name=?,bike_title=?,bike_description=?,bike_photo=?,bike_price=? WHERE sq_bike_type_id=?";
	// DELETE
	private static final String DELETE_STMT = "DELETE FROM bike_type WHERE sq_bike_type_id=?";
	// GETONE
	private static final String GET_ONE_STMT = "SELECT * FROM bike_type WHERE SQ_bike_type_id=?";
	// GETALL
	private static final String GET_ALL_STMT = "SELECT * FROM bike_type ORDER BY sq_bike_type_id";

	@Override
	public void insert(BikeTypeVO BikeTypeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);
			// set typeName
			pstmt.setString(1, BikeTypeVO.getBikeTypeName());
			// set title
			pstmt.setString(2, BikeTypeVO.getBikeTitle());
			// set bikeDescription CLOB
			Clob clob = con.createClob();
			clob.setString(1, BikeTypeVO.getBikeDescription());
			pstmt.setClob(3, clob);
			// set bikePhoto BLOB
			Blob blob = con.createBlob();
			blob.setBytes(1, BikeTypeVO.getBikePhoto());
			pstmt.setBlob(4, blob);
			// set price
			pstmt.setDouble(5, BikeTypeVO.getPrice());
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
	public void update(BikeTypeVO BikeTypeVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
//			System.out.println(BikeTypeVO.getBikeTypeName());
//			System.out.println(BikeTypeVO.getBikeTitle());
//			System.out.println(BikeTypeVO.getBikeDescription());
//			System.out.println(BikeTypeVO.getBikePhoto());
//			System.out.println(BikeTypeVO.getPrice());
//			System.out.println(BikeTypeVO.getSqBikeTypeId());

			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(UPDATE_STMT);

			// set bikeTypeName
			pstmt.setString(1, BikeTypeVO.getBikeTypeName());
			// set bikeTitle
			pstmt.setString(2, BikeTypeVO.getBikeTitle());
			// set bikeDescription CLOB
			Clob clob = con.createClob();
			clob.setString(1, BikeTypeVO.getBikeDescription());
			pstmt.setClob(3, clob);
			// set bikePhoto BLOB
			Blob blob = con.createBlob();
			blob.setBytes(1, BikeTypeVO.getBikePhoto());
			pstmt.setBlob(4, blob);
			// set price
			pstmt.setDouble(5, BikeTypeVO.getPrice());
			// set sqBiketypeId
			pstmt.setString(6, BikeTypeVO.getSqBikeTypeId());

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
	public void delete(String SqBikeTypeId) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, SqBikeTypeId);
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
	public BikeTypeVO findByPrimaryKey(String sqBikeTypeId) {

		BikeTypeVO BikeTypeVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userId, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, sqBikeTypeId);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BikeTypeVo = new BikeTypeVO();
				BikeTypeVo.setSqBikeTypeId(rs.getString(1));
				BikeTypeVo.setBikeTypeName(rs.getString(2));
				BikeTypeVo.setBikeTitle(rs.getString(3));
				// get CLOB
				Clob clob = rs.getClob(4);
				BikeTypeVo.setBikeDescription(clobToString(clob));
				// get Blob
				Blob blob = rs.getBlob(5);
				BikeTypeVo.setBikePhoto(blobToByteArr(blob));
				BikeTypeVo.setPrice(rs.getInt(6));
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

		return BikeTypeVo;

	}

	@Override
	public List<BikeTypeVO> getAll() {
		List<BikeTypeVO> list = new ArrayList<>();


		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,userId,passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BikeTypeVO BikeTypeVO = new BikeTypeVO();
				BikeTypeVO.setSqBikeTypeId(rs.getString(1));
				BikeTypeVO.setBikeTypeName(rs.getString(2));
				BikeTypeVO.setBikeTitle(rs.getString(3));
				//Clob 
				Clob clob = rs.getClob(4);
				BikeTypeVO.setBikeDescription(clobToString(clob));
				//blob 
				Blob blob = rs.getBlob(5);
				BikeTypeVO.setBikePhoto(blobToByteArr(blob));
				BikeTypeVO.setPrice(rs.getInt(6));
				list.add(BikeTypeVO);//ADD　list
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	// function

	public static String clobToString(Clob clob) {
		StringBuilder sb = new StringBuilder();
		BufferedReader br = null;
		String str;
		try {
			br = new BufferedReader(clob.getCharacterStream());
			while ((str = br.readLine()) != null) {
				sb.append(str);
				sb.append("\n");
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return sb.toString();
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
