package com.member.model;

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
;

public class MemDBReader extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
//		HttpSession session = req.getSession();
		try {
			String sq_member_id = req.getParameter("sq_member_id");
			MemService MemService = new MemService();
			byte[] baos = MemService.findByPrimaryKey(sq_member_id).getM_photo();
			out.write(baos);
			//System.out.println(baos);
//			BufferedInputStream in = new BufferedInputStream(new ByteArrayInputStream(baos));
//			byte[] buf = new byte[4 * 1024]; 
//			int len;
//			while ((len = in.read(buf)) != -1) {
//				out.write(buf, 0, len);
//			}
//			in.close();

		} catch (Exception e) {
			System.out.println("M_photo沒圖片");
		}finally {
			
			out.close();
		}
	}

}