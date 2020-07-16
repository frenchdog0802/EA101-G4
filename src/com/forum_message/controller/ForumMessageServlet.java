package com.forum_message.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.forum.model.*;
import com.forum_message.model.*;
import com.forum_message.model.ForumMessageVO;
import com.member_login.model.*;
import com.member.model.MemService;
import com.member.model.MemVO;

public class ForumMessageServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String url = "";
		String action = req.getParameter("action");
		HttpSession session = req.getSession();

		System.out.println(action);

		if ("insert".equals(action)) { // 來自addEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();

			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
				String sq_theme_id = new String(req.getParameter("sq_theme_id").trim());
//				System.out.println("forummessage getsq_theme_id=" + sq_theme_id);

				
				
				ForumService forumSvc = new ForumService();
				ForumVO forumVO = forumSvc.getOneTheme(sq_theme_id);
				req.setAttribute("listOneTheme", forumVO);
				
				/******** 發文者會員資料 ***********/
				String post_sq_member_id = forumVO.getSq_member_id();
				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(post_sq_member_id);

				req.setAttribute("Theme_memVO", memVO); 
				
				System.out.println(forumVO.getSq_theme_id());
				String sq_member_id = req.getParameter("sq_member_id").trim();
				String message_detail = new String(req.getParameter("message_detail").trim());
				System.out.println(sq_member_id);
				System.out.println(message_detail);
//			String theme_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (message_detail == null || message_detail.trim().length() == 0) {
					errorMsgs.add("留言訊息: 請勿空白");
				}
				
				Date message_time = new java.sql.Date(System.currentTimeMillis());
				

				Integer message_display_status = 0;
				

				ForumMessageVO forumMessageVO = new ForumMessageVO();

				forumMessageVO.setSq_theme_id(sq_theme_id);
				forumMessageVO.setSq_member_id(sq_member_id);
				forumMessageVO.setMessage_detail(message_detail);
				forumMessageVO.setMessage_time(message_time);
				forumMessageVO.setMessage_display_status(message_display_status);
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("message_listOne", forumMessageVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listOneTheme.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}
				
				
				/*************************** 2.開始新增資料 ***************************************/
				ForumMessageService messageSvc = new ForumMessageService();
				forumMessageVO = messageSvc.addForumMessage(sq_theme_id, sq_member_id, message_detail, message_time, 
						message_display_status);
				
				/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
				req.setAttribute("message_listOne", forumMessageVO);
				String url2 = "/front-end/forum/listOneTheme.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);
				System.out.println(forumVO.getTheme_name()+"留言新增成功:"+message_detail);
				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listOneTheme.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("update".equals(action)) { // 來自addEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();

			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
				String sq_theme_id = new String(req.getParameter("sq_theme_id").trim());
//				System.out.println("forummessage getsq_theme_id=" + sq_theme_id);
				
				
				ForumService forumSvc = new ForumService();
				ForumVO forumVO = forumSvc.getOneTheme(sq_theme_id);
				req.setAttribute("listOneTheme", forumVO);
				
				/******** 發文者會員資料 ***********/
				String post_sq_member_id = forumVO.getSq_member_id();
				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(post_sq_member_id);

				req.setAttribute("Theme_memVO", memVO); 
				
				System.out.println(forumVO.getSq_theme_id());
				String sq_member_id = req.getParameter("sq_member_id").trim();
				String message_detail = new String(req.getParameter("message_detail").trim());
				System.out.println(sq_member_id);
				System.out.println(message_detail);
//			String theme_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (message_detail == null || message_detail.trim().length() == 0) {
					errorMsgs.add("留言訊息: 請勿空白");
				}
				
				Date message_time = new java.sql.Date(System.currentTimeMillis());
				

				Integer message_display_status = 0;
				

				ForumMessageVO forumMessageVO = new ForumMessageVO();

				forumMessageVO.setSq_theme_id(sq_theme_id);
				forumMessageVO.setSq_member_id(sq_member_id);
				forumMessageVO.setMessage_detail(message_detail);
				forumMessageVO.setMessage_time(message_time);
				forumMessageVO.setMessage_display_status(message_display_status);
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("message_listOne", forumMessageVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listOneTheme.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}
				
				
				/*************************** 2.開始新增資料 ***************************************/
				ForumMessageService messageSvc = new ForumMessageService();
				forumMessageVO = messageSvc.addForumMessage(sq_theme_id, sq_member_id, message_detail, message_time, 
						message_display_status);
				
				/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
				req.setAttribute("message_listOne", forumMessageVO);
				String url2 = "/front-end/forum/listOneTheme.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);
				System.out.println(forumVO.getTheme_name()+"留言新增成功:"+message_detail);
				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listOneTheme.jsp");
				failureView.forward(req, res);
			}
		}
	
	}
}
