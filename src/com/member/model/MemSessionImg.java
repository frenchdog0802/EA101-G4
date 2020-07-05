package com.member.model;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemSessionImg extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		HttpSession session = req.getSession();
		byte[] m_photo = (byte[])session.getAttribute("m_photo");
		
		try {
			out.write(m_photo);
			
		}catch(Exception e) {
			System.out.println("session無m_photo圖片");
		}
	}
}