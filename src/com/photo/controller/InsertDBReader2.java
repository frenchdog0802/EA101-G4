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
		InputStream failInsertImg = (InputStream) session.getAttribute("failInsertImg");
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		System.out.println(failInsertImg);
		//取不到直
		try {
			BufferedInputStream in = new BufferedInputStream(failInsertImg);
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = in.read(buffer)) != -1) {
				out.write(buffer, 0, len);
		    }  
			in.close();
		}catch(Exception e) {
			InputStream inErr = getServletContext().getResourceAsStream("/BrandBack/image/default.png");
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = inErr.read(buffer)) != -1) {
				out.write(buffer, 0, len);
		    }  
			inErr.close();
		}finally {
			out.close();
		}
		
	}
}
