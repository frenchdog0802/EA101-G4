package com.route.controller;
	import java.io.*;
	import java.sql.*;
	import javax.servlet.*;
	import javax.servlet.http.*;
public class RouteImgServlet extends HttpServlet {


		Connection con;

		public void doGet(HttpServletRequest req, HttpServletResponse res)
				throws ServletException, IOException {

			res.setContentType("image/gif");
			ServletOutputStream out = res.getOutputStream();

			try {
				Statement stmt = con.createStatement();
				String SQ_ROUTE_ID =req.getParameter("SQ_ROUTE_ID");
				ResultSet rs = stmt.executeQuery(
				"SELECT ROUTE_IMAGE FROM ROUTE_PLAN WHERE SQ_ROUTE_ID='"+SQ_ROUTE_ID+"'");
				


				if (rs.next()) {
					BufferedInputStream in = new BufferedInputStream(rs.getBinaryStream("ROUTE_IMAGE"));
					byte[] buf = new byte[4 * 1024]; // 4K buffer
					int len;
					while ((len = in.read(buf)) != -1) {
						out.write(buf, 0, len);
					}
					in.close();
				} else {
					InputStream in = getServletContext().getResourceAsStream("/NoData/none.jpg");
					byte[] buf = new byte[in.available()];
					in.read(buf);
					out.write(buf);
					in.close();
				}
				rs.close();
				stmt.close();
			} catch (Exception e) {
				//System.out.println(e);
				InputStream in = getServletContext().getResourceAsStream("/NoData/null.jpg");
				byte[] buf = new byte[in.available()];
				in.read(buf);
				out.write(buf);
				in.close();
			}
		}

		public void init() throws ServletException {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "EA101_G4", "EA101_G4");
			} catch (ClassNotFoundException e) {
				throw new UnavailableException("Couldn't load JdbcOdbcDriver");
			} catch (SQLException e) {
				throw new UnavailableException("Couldn't get db connection");
			}
		}

		public void destroy() {
			try {
				if (con != null) con.close();
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
}
