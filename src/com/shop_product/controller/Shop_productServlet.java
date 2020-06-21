package com.shop_product.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@MultipartConfig
public class Shop_productServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
	}
}
