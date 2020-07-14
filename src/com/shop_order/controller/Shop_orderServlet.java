package com.shop_order.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.shop_order.model.*;
import com.shop_order_detail.model.Shop_order_detailVO;

@MultipartConfig
public class Shop_orderServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		doPost(req,res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		System.out.println(action);
		if("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_order_id = new String(req.getParameter("sq_order_id"));
				Shop_orderService orderSvc = new Shop_orderService();
				orderSvc.delete(sq_order_id);
				
				String url = "/back-end/shop_order/allOrder.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/shop_order/allOrder.jsp");
				failureView.forward(req, res);
			}
		}
		
		if("getOne".equals(action)) {
			try {
				String sq_order_id = req.getParameter("sq_order_id");				
				System.out.println(sq_order_id);
				session.setAttribute("order_id", sq_order_id);
				String url = "/back-end/Shop_order/updateOrder.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/Shop_order/allOrder.jsp");
				failureView.forward(req, res);
			}
		}
	
		if("update".equals(action)) {
			try {
				String orderID = req.getParameter("orderID");
				String orderStatus = req.getParameter("orderStatus");
				int status = Integer.parseInt(orderStatus);
				String[] id = req.getParameterValues("productID"); 			
				String[] number = req.getParameterValues("number");
				int len = Integer.parseInt(req.getParameter("len"));
				
				Shop_orderVO orderVO = new Shop_orderVO();
				orderVO.setSq_order_id(orderID);
				orderVO.setOrder_status(status);
				
				List<Shop_order_detailVO> list = new ArrayList<Shop_order_detailVO>();
				for(int i=0 ; i<len ;i++) {
					Shop_order_detailVO vo = new Shop_order_detailVO();
					vo.setSq_order_id(orderID);
					vo.setSq_product_id(id[i]);
					Integer num = Integer.parseInt(number[i]);
					vo.setOrder_sum(num);
					list.add(vo);
				}
				Shop_orderService orderSvc = new Shop_orderService();
				orderSvc.updateWithDetail(orderVO, list);				
				
				String url = "/back-end/Shop_order/allOrder.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e) {
				RequestDispatcher fail = req
						.getRequestDispatcher("/back-end/Shop_order/updateOrder.jsp");
				fail.forward(req, res);
			}
		}
	}
}
