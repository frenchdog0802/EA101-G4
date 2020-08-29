package com.forum.model;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ForumSessionImg extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		HttpSession session = req.getSession();
		byte[] theme_pic = (byte[])session.getAttribute("theme_pic");
		
		try {
			out.write(theme_pic);
			
		}catch(Exception e) {
			System.out.println("session無theme_pic圖片");
		}
	}
}