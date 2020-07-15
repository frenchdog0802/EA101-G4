package com.question.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.question.model.*;

public class QuestionServlet extends HttpServlet {

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
				
				String sq_question_id = req.getParameter("sq_question_id");
				if (sq_question_id == null || (sq_question_id.trim()).length() == 0) {
					errorMsgs.add("輸入問題編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/question/select_pageQus.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始查詢資料*****************************************/
				QuestionService qusSvc = new QuestionService();
				QuestionVO questionVo = qusSvc.getOneQus(sq_question_id);
				if (questionVo == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/question/select_pageQus.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************3.查詢完成,準備轉交(Send the Success view)*************/
				req.setAttribute("questionVo", questionVo); // 資料庫取出的empVO物件,存入req
				String url = "/question/listOneQus.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/question/select_pageQus.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("getOne_For_Update".equals(action)) { // 來自listAllEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				/***************************1.接收請求參數****************************************/
				String sq_question_id = new String(req.getParameter("sq_question_id"));
				
				/***************************2.開始查詢資料****************************************/
				QuestionService qusSvc = new QuestionService();
				QuestionVO questionVo = qusSvc.getOneQus(sq_question_id);
								
				/***************************3.查詢完成,準備轉交(Send the Success view)************/
				req.setAttribute("questionVo", questionVo);         // 資料庫取出的empVO物件,存入req
				String url = "/question/update_qus_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/question/listAllQus.jsp");
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
				String sq_question_id = new String(req.getParameter("sq_question_id").trim());
				
				String question_title = req.getParameter("question_title");
				
				if (question_title == null || question_title.trim().length() == 0) {
					errorMsgs.add("問題標題: 請勿空白");
				} ;
	            
				
				String question_desciption = req.getParameter("question_desciption").trim();
				if (question_desciption == null || question_desciption.trim().length() == 0) {
					errorMsgs.add("內容請勿空白");
				}	
			
				

				QuestionVO questionVo = new QuestionVO();
				
				questionVo.setSq_question_id(sq_question_id);
				questionVo.setQuestion_title(question_title);
				questionVo.setQuestion_description(question_desciption);
				

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("questionVo", questionVo); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/question/update_qus_input.jsp");
					failureView.forward(req, res);
					return; //程式中斷
				}
				
				/***************************2.開始修改資料*****************************************/
				QuestionService qusSvc = new QuestionService();
				questionVo = qusSvc.updateQus(question_title, question_desciption, sq_question_id);
				
				/***************************3.修改完成,準備轉交(Send the Success view)*************/
				req.setAttribute("questionVo", questionVo); // 資料庫update成功後,正確的的empVO物件,存入req
				String url = "/question/listOneQus.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/question/update_qus_input.jsp");
				failureView.forward(req, res);
			}
		}

        if ("insert".equals(action)) { // 來自addEmp.jsp的請求  
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
				String question_title = req.getParameter("question_title");
				
				if (question_title == null || question_title.trim().length() == 0) {
					errorMsgs.add("問題標題: 請勿空白");
				} ;
				
				String question_desciption = req.getParameter("question_desciption").trim();
				if (question_desciption == null || question_desciption.trim().length() == 0) {
					errorMsgs.add("內容請勿空白");
				}
				
				

				QuestionVO questionVo = new QuestionVO();
				
				
				questionVo.setQuestion_title(question_title);
				questionVo.setQuestion_description(question_desciption);
				
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("questionVo", questionVo); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/question/addQus.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				QuestionService qusSvc = new QuestionService();
				questionVo = qusSvc.addQus(question_title, question_desciption);
				
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String url = "/question/listAllQus.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);				
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/question/addQus.jsp");
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
				String sq_question_id = new String(req.getParameter("sq_question_id"));
				
				/***************************2.開始刪除資料***************************************/
				QuestionService qusSvc = new QuestionService();
				qusSvc.deleteQus(sq_question_id);
				
				/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
				String url = "/question/listAllQus.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/question/listAllQus.jsp");
				failureView.forward(req, res);
			}
		}
	}
}
