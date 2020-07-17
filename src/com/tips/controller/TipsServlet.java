package com.tips.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.tips.model.*;

@MultipartConfig
public class TipsServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		
		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String str = req.getParameter("sq_tips_id");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入內容編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/tips/select_pageTips.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
					
				/***************************2.開始查詢資料*****************************************/
				TipsService tipsSvc = new TipsService();
				TipsVO tipsVo = tipsSvc.getOneTips("sq_tips_id");
				if (tipsVo == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/tips/select_pageTips.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************3.查詢完成,準備轉交(Send the Success view)*************/
				req.setAttribute("tipsVo", tipsVo); // 資料庫取出的empVO物件,存入req
				String url = "/back-end/tips/listOneTips.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/tips/select_pageTips.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("getOne_For_Update_back".equals(action)) { // 來自listAllEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				/***************************1.接收請求參數****************************************/
				String sq_tips_id = new String(req.getParameter("sq_tips_id"));
				
				/***************************2.開始查詢資料****************************************/
				TipsService tipsSvc = new TipsService();
				TipsVO tipsVo = tipsSvc.getOneTips(sq_tips_id);
								
				/***************************3.查詢完成,準備轉交(Send the Success view)************/
				req.setAttribute("tipsVo", tipsVo);         // 資料庫取出的empVO物件,存入req
				String url = "/back-end/tips/update_tips_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/tips/listAllTips.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("update".equals(action)) { // 來自update_emp_input.jsp的請求
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String sq_tips_id = new String(req.getParameter("sq_tips_id").trim());
				
				String tips_description = req.getParameter("tips_description").trim();
				if (tips_description == null || tips_description.trim().length() == 0) {
					errorMsgs.add("內容請勿空白");
				}	
				
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/tips/update_tips_input.jsp");
					failureView.forward(req, res);
					return; //程式中斷
				}
				TipsService TipsSvc = new TipsService();
				TipsVO tipsVo = TipsSvc.getOneTips(sq_tips_id);
				tipsVo.setTips_description(tips_description);
				TipsSvc.updateTips(tipsVo);
				/***************************2.開始修改資料*****************************************/
				
				/***************************3.修改完成,準備轉交(Send the Success view)*************/
				String url = "/back-end/tips/listAllTips.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/tips/update_tips_input.jsp");
				failureView.forward(req, res);
			}
		}
        if ("insert".equals(action)) { // 來自addEmp.jsp的請求  
			Map<String,String> errorMsgs = new HashMap<>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
				
				String tips_description = req.getParameter("tips_description").trim();
				if (tips_description == null || tips_description.trim().length() == 0) {
					errorMsgs.put("tips_description","內容請勿空白");
				}	
				
				Integer tips_title = new Integer(req.getParameter("tips_title"));
				

				TipsVO tipsVo = new TipsVO();
				
				tipsVo.setTips_description(tips_description);
				tipsVo.setTips_title(tips_title);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("tipsVo", tipsVo); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/tips/addTips.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				TipsService tipsSvc = new TipsService();
				tipsSvc.addTips(tipsVo);
				
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String url = "/back-end/tips/listAllTips.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);				
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/tips/addTips.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("delete".equals(action)) { // 來自listAllEmp.jsp

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
	
			try {
				/***************************1.接收請求參數***************************************/
				String sq_tips_id = new String(req.getParameter("sq_tips_id"));
				
				/***************************2.開始刪除資料***************************************/
				TipsService tipsSvc = new TipsService();
				tipsSvc.deleteTips(sq_tips_id);
				
				/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
				String url = "/back-end/tips/listAllTips.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/tips/listAllTips.jsp");
				failureView.forward(req, res);
			}
		}
	}
}
