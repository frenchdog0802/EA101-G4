package com.actjoin.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.actjoin.model.ActJoinService;
import com.actjoin.model.ActJoinVO;

public class ActJoinServlet extends HttpServlet {
 
	private static final long serialVersionUID = -8002468007119659745L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		
		if ("getOne_For_Display".equals(action)) { // 來自select_actjoinpage.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String str = req.getParameter("sq_activity_id");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入活動編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/joinActivity/select_actjoinpage.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				String sq_activity_id = null;
				try {
					sq_activity_id = new String(str);
				} catch (Exception e) {
					errorMsgs.add("活動編號格式不正確");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/joinActivity/select_actjoinpage.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************2.開始查詢資料*****************************************/
				ActJoinService actjoinSvc = new ActJoinService();
				List<ActJoinVO> list = actjoinSvc.getOneActJoin(sq_activity_id);
				
				if (list == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/activity/select_page.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************3.查詢完成,準備轉交(Send the Success view)*************/
				req.setAttribute("list", list); // 資料庫取出的actVO物件,存入req
				String url = "/back-end/joinActivity/listOneActJoin.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneAct.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/joinActivity/select_actjoinpage.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		
		
		if ("delete".equals(action)) { // 來自listAllAct.jsp

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
	
			try {
				/***************************1.接收請求參數***************************************/
				String sq_activity_id =req.getParameter("sq_activity_id");
				String sq_member_id =req.getParameter("sq_member_id");
				/***************************2.開始刪除資料***************************************/
				ActJoinService actjoinSvc = new ActJoinService();
				
				actjoinSvc.deleteActJoin(sq_activity_id, sq_member_id);
				/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
				String url = "/back-end/joinActivity/listAllActJoin.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/joinActivity/listAllActJoin.jsp");
				failureView.forward(req, res);
			}
		}
	}
}
