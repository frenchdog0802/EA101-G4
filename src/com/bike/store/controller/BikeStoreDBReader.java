package com.bike.store.controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.store.model.BikeStoreService;
import com.member.model.*;


public class BikeStoreDBReader extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
//		HttpSession session = req.getSession();
		try {
			String sq_bike_store_id = req.getParameter("sq_bike_store_id");
			BikeStoreService BikeStoreService = new BikeStoreService();
			byte[] baos = BikeStoreService.findByPrimaryKey(sq_bike_store_id).getStore_photo();
			out.write(baos);
			System.out.println(baos);

		} catch (Exception e) {
			System.out.println("沒圖片");
		}finally {
			out.close();
		}
	}

}