package com.staff.model;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.*;


public class StaffDBReader extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
//		HttpSession session = req.getSession();
		try {
			String sq_staff_id = req.getParameter("sq_staff_id");
			StaffService StaffService = new StaffService();
			byte[] baos = StaffService.findByPrimaryKey(sq_staff_id).getSf_photo();
			out.write(baos);
			System.out.println(baos);

		} catch (Exception e) {
			System.out.println("staff沒圖片");
		}finally {
			out.close();
		}
	}

}