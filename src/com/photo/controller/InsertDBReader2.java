package com.photo.controller;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InsertDBReader2 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		byte[] failInsertImg = (byte[]) session.getAttribute("bike_photo_array");
		
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		
		try {
			out.write(failInsertImg);
		}catch(Exception e) {
			InputStream in = getServletContext().getResourceAsStream("/BrandBack/image/default.png");
			byte[] buffer = new byte[in.available()];
			out.write(buffer);
			in.close();
		   
		}finally {
			out.close();
		}
		
	}
}
