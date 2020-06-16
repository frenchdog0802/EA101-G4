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

		BufferedInputStream in = new BufferedInputStream(failInsertImg);
		byte[] buf = new byte[4 * 1024]; // 4K buffer
		int len;
		while ((len = in.read(buf)) != -1) {
			out.write(buf, 0, len);
		}
		in.close();
	}
}
