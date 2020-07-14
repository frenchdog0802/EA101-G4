package com.actjoin.controller;

import java.io.*;
import java.sql.Timestamp;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.act.model.ActService;
import com.act.model.ActVO;
import com.actjoin.model.ActJoinService;
import com.actjoin.model.ActJoinVO;
import com.member.model.MemVO;


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
		HttpSession session = req.getSession();
		MemVO memVO = (MemVO)session.getAttribute("MemVO");
		String sq_member_id = memVO.getSq_member_id();
		if(sq_member_id==null) {
			session.setAttribute("sq_member_id", "910003");
		}
		
		
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
				/***************************2.開始刪除資料***************************************/
				ActJoinService actjoinSvc = new ActJoinService();
				
				actjoinSvc.deleteActJoin(sq_activity_id, sq_member_id);
				/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
				String url = "/front-end/activity/Actmanagement.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneAct.jsp
				successView.forward(req, res);
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/joinActivity/listAllActJoin.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("insert".equals(action)) { // 來自addAct.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
			String sq_activity_id = new String(req.getParameter("sq_activity_id").trim());
			Timestamp join_time = new java.sql.Timestamp(System.currentTimeMillis());
			

			ActJoinVO actjoinVO = new ActJoinVO();
			ActJoinService actjoinSvc = new ActJoinService();
			actjoinVO.setSq_activity_id(sq_activity_id);
			actjoinVO.setSq_member_id(sq_member_id);
			actjoinVO.setJoin_time(join_time);
			
			
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				req.setAttribute("actjoinVO", actjoinVO); // 含有輸入格式錯誤的actVO物件,也存入req
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/activity/ActivityOne.jsp");
				failureView.forward(req, res);
				return;
			}
			ActService actSvc = new ActService();
			ActVO actVO = actSvc.getOneAct(sq_activity_id);
			
			
			
			req.setAttribute("actVO", actVO);// 資料庫取出的actVO物件,存入req
			/*************************** 2.開始新增資料 ***************************************/
			actjoinVO = actjoinSvc.addActJoin(sq_activity_id, sq_member_id, join_time);
			int i = actjoinSvc.getOneJoinPeople(sq_activity_id);
			actVO.setPopulation(i);
			/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
			String  url=req.getParameter("requestURL");   
			res.sendRedirect(url);

			/*************************** 其他可能的錯誤處理 **********************************/

		}
		
	}
}
