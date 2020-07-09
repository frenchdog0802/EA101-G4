package com.shop_order.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.shop_order.model.*;

@MultipartConfig
public class Shop_orderServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		doPost(req,res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		
		if("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_order_id = new String(req.getParameter("sq_order_id"));
				Shop_orderService orderSvc = new Shop_orderService();
				orderSvc.delete(sq_order_id);
				
				String url = "/back_end/shop_order/allOrder.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back_end/shop_order/allOrder.jsp");
				failureView.forward(req, res);
			}
		}
		
		if("getOne".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_order_id = req.getParameter("sq_order_id");

				Shop_orderService orderSvc = new Shop_orderService();
				Shop_orderVO orderVO = orderSvc.getOneOrder(sq_order_id);
				if(orderVO == null) {
					errorMsgs.add("查無資料");
				}			
				
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("sq_order_id", sq_order_id); 
					RequestDispatcher fail = req
							.getRequestDispatcher("/back_end/BrandBack/noData.jsp");
					fail.forward(req, res);
					return;
				}
				
				req.setAttribute("orderVO", orderVO);
				String url = "/back_end/Shop_order/getOrder.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("查詢失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back_end/Shop_order/allOrder.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("getOneForUpdate".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String sq_order_id = req.getParameter("sq_order_id");				
				Shop_orderService orderSvc = new Shop_orderService();
				Shop_orderVO orderVO = orderSvc.getOneOrder(sq_order_id);
				req.setAttribute("orderVO", orderVO);
				String url = "/back_end/Shop_order/getOneOrder.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);

			} catch (Exception e) {
				errorMsgs.add("查詢失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back_end/Shop_order/allOrder.jsp");
				failureView.forward(req, res);
			}
		}
		if("update".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_order_id = req.getParameter("sq_order_id");
				
				String name = req.getParameter("name");
				
				String phone = req.getParameter("phone");
				
				String address = req.getParameter("address");
				
				String brand_detail = req.getParameter("detail");
				
				Shop_orderVO orderVO = new Shop_orderVO();
				
				
				if (!errorMsgs.isEmpty()) {			
					req.setAttribute("orderVO", orderVO); 
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back_end/BrandBack/update.jsp");
					failureView.forward(req, res);
					return;
				}
							
//				BrandService brandservice = new BrandService();
//				brandservice.updateBrand(sq_brand_id, name, phone, address, pic, brand_detail);
//				session.removeAttribute("pic");
				
				String url = "/back_end/BrandBack/BrandBack.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher fail = req
						.getRequestDispatcher("/back_end/BrandBack/BrandBack.jsp");
				fail.forward(req, res);
			}
		}
	}
}
