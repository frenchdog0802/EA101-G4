package com.actfavor.controller;

import java.io.*;
import java.sql.Timestamp;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.actfavor.model.ActFavorService;
import com.actfavor.model.ActFavorVO;
import com.member.model.MemVO;

public class ActFavorServlet extends HttpServlet {
 
	private static final long serialVersionUID = 3027103789727563063L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		MemVO memVO = (MemVO)session.getAttribute("MemVO");
		String sq_member_id = memVO.getSq_member_id();
		session.setAttribute("sq_member_id", sq_member_id);
		if(sq_member_id==null) {
			session.setAttribute("sq_member_id", "910003");
		}

        if ("insert".equals(action)) { // 來自ActivityOne.jsp的請求  
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			
			
				/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
				String sq_activity_id = req.getParameter("sq_activity_id").trim();
				
				Timestamp favorite_time = new java.sql.Timestamp(System.currentTimeMillis());
				ActFavorVO actfavorVO = new ActFavorVO();
				actfavorVO.setSq_activity_id(sq_activity_id);
				actfavorVO.setSq_member_id(sq_member_id);
				actfavorVO.setFavorite_time(favorite_time);
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("actfavorVO", actfavorVO); // 含有輸入格式錯誤的actVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/activity/addAct.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				ActFavorService actfavorSvc = new ActFavorService();
				actfavorVO = actfavorSvc.addActFavor(
						sq_activity_id, sq_member_id , favorite_time);
				
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String  url=req.getParameter("requestURL");   
				res.sendRedirect(url);			
				
				/***************************其他可能的錯誤處理**********************************/
			
		}
		
		if ("delete".equals(action)) { // 來自ActivityOne.jsp的請求 

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			String requestURL = req.getParameter("requestURL");
	
			try {
				/***************************1.接收請求參數***************************************/
				String sq_activity_id =req.getParameter("sq_activity_id");
		
				
				/***************************2.開始刪除資料***************************************/
				ActFavorService actfavorSvc = new ActFavorService();
				actfavorSvc.deleteActFavor(sq_activity_id, sq_member_id);
				
				/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
				String url = requestURL;
				RequestDispatcher successView = req.getRequestDispatcher(url); // 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/activity/listAllAct.jsp");
				failureView.forward(req, res);
			}
		}
	}
}
