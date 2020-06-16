package com.photo.controller;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.bike.type.model.BikeTypeService;

public class DBReader extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		try {
			String sq_bike_type_id = req.getParameter("sq_bike_type_id");
			BikeTypeService BikeTypeService = new BikeTypeService();
			byte[] baos = BikeTypeService.findByPrimaryKey(sq_bike_type_id).getBike_photo();
			BufferedInputStream in = new BufferedInputStream(new ByteArrayInputStream(baos));
			byte[] buf = new byte[4 * 1024]; // 4K buffer
			int len;
			while ((len = in.read(buf)) != -1) {
				out.write(buf, 0, len);
			}
			in.close();

		} catch (Exception e) {
			System.out.println("沒圖片");
		}
	}

}