package com.bike.bike.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bike.bike.model.BikeService;
import com.bike.bike.model.BikeVO;

public class BikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		
		if ("insert".equals(action)) {

		}
		if ("getOne_For_Display".equals(action)) {
			try {
			//接收參數 
			String sq_bike_id = request.getParameter("sq_bike_id");
			BikeService bikeSvc = new BikeService();
			BikeVO bikeVO = bikeSvc.findByPrimaryKey(sq_bike_id);
			
			request.setAttribute("BikeVO", bikeVO);
			RequestDispatcher successView = request.getRequestDispatcher("/back-end/bike/bikeListAll.jsp");
			successView.forward(request, response);
			}catch(Exception ce) {
				ce.printStackTrace();
			}
		}
		
		
		if ("getOne_For_Update".equals(action)) {

		}
		
		if ("confrim_Update".equals(action)) {
			
		}
		
		
	}

}
