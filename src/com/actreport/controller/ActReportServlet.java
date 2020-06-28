package com.actreport.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.act.model.*;
import com.actreport.model.ActReportService;
import com.actreport.model.ActReportVO;

public class ActReportServlet extends HttpServlet {

	private static final long serialVersionUID = -9031569748342578773L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		
		if ("getOne_For_Display".equals(action)) { // 來自前台會員頁面select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String sq_activityreport_id = req.getParameter("sq_activityreport_id");
				if (sq_activityreport_id == null || (sq_activityreport_id.trim()).length() == 0) {
					errorMsgs.add("請輸入活動檢舉編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/reportActivity/select_ActReportpage.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				
				/***************************2.開始查詢資料*****************************************/
				ActReportService actreportSvc = new ActReportService();
				ActReportVO actreportVO = actreportSvc.getOneActReport(sq_activityreport_id);
				if (actreportVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/reportActivity/select_ActReportpage.jsp");
					failureView.forward(req, res);
					return;//程式中斷
				}
				
				/***************************3.查詢完成,準備轉交(Send the Success view)*************/
				req.setAttribute("actreportVO", actreportVO); // 資料庫取出的actVO物件,存入req
				String url = "/back-end/reportActivity/listOneActReport.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneAct.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/reportActivity/select_ActReportpage.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("getOne_For_Update".equals(action)) { // 來自listAllAct.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				/***************************1.接收請求參數****************************************/
				String sq_activityreport_id = new String(req.getParameter("sq_activityreport_id"));
				
				/***************************2.開始查詢資料****************************************/
				ActReportService actreportSvc = new ActReportService();
				ActReportVO actreportVO = actreportSvc.getOneActReport(sq_activityreport_id);
								
				/***************************3.查詢完成,準備轉交(Send the Success view)************/
				req.setAttribute("actreportVO", actreportVO);         // 資料庫取出的actVO物件,存入req
				String url = "/back-end/reportActivity/update_actreport_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_act_input.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/reportActivity/listAllActReport.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("update".equals(action)) { // 來自update_act_input.jsp的請求
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
		
			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String sq_activityreport_id = new String(req.getParameter("sq_activityreport_id"));
				Integer report_status = null;
				String report_statusReg = "^[(0-1)]{1,1}$";
				try {
					report_status = new Integer(req.getParameter("report_status").trim());
				} catch (NumberFormatException e) {
					report_status = 0;
					errorMsgs.add("檢舉處理狀態請填0或1.");
				}
				if (!report_status.toString().matches(report_statusReg)) {
					errorMsgs.add("檢舉處理狀態請填0或1.");
				} 

				ActReportVO actreportVO = new ActReportVO();
				actreportVO.setSq_activityreport_id(sq_activityreport_id);
				actreportVO.setReport_status(report_status);				

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("actreportVO", actreportVO); // 含有輸入格式錯誤的actVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/reportActivity/update_actreport_input.jsp");
					failureView.forward(req, res);
					return; //程式中斷
				}
				
				/***************************2.開始修改資料*****************************************/
				ActReportService actreportSvc = new ActReportService();
				actreportVO = actreportSvc.updateActReport(sq_activityreport_id, report_status);
				
				/***************************3.修改完成,準備轉交(Send the Success view)*************/
				req.setAttribute("actreportVO", actreportVO); // 資料庫update成功後,正確的的actVO物件,存入req
				String url = "/back-end/reportActivity/listAllActReport.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneAct.jsp
				successView.forward(req, res);

				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/reportActivity/update_actreport_input.jsp");
				failureView.forward(req, res);
			}
		}

        if ("insert".equals(action)) { // 來自addAct.jsp的請求  
			
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			
				/***********************1.接收請求參數 - 輸入格式的錯誤處理*************************/
				String act_title = new String(req.getParameter("act_title").trim());
				String sq_route_id = req.getParameter("sq_route_id").trim();
				String sq_member_id = req.getParameter("sq_member_id").trim();
				String act_titleReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{5,50}$";
				if (act_title == null || act_title.trim().length() == 0) {
					errorMsgs.add("活動標題: 請勿空白");
				} else if(!act_title.trim().matches(act_titleReg)) { //以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("活動標題: 只能是中、英文字母、數字和_ , 且長度必需在5到50之間");
	            } else if(act_title.trim().matches("請填入標題")) {
	            	errorMsgs.add("活動標題: 請勿空白");
	            }
				
				Integer max_population = new Integer(req.getParameter("max_population").trim());
				try {
					max_population = new Integer(req.getParameter("max_population").trim());
				} catch (NumberFormatException e) {
					max_population = 1;
					errorMsgs.add("上限人數請填數字.");
				}
				
				Integer min_population = new Integer(req.getParameter("min_population").trim());
				try {
					min_population = new Integer(req.getParameter("min_population").trim());
				} catch (NumberFormatException e) {
					min_population = 1;
					errorMsgs.add("下限人數請填數字.");
				}
				
				Integer population = new Integer(req.getParameter("population").trim());
				try {
					population = new Integer(req.getParameter("population").trim());
				} catch (NumberFormatException e) {
					population = 1;
					errorMsgs.add("參加人數請填數字.");
				}
				
				java.sql.Date start_time = null;
				try {
					start_time = java.sql.Date.valueOf(req.getParameter("start_time").trim());
				} catch (IllegalArgumentException e) {
					start_time=new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入報名開始時間!");
				}
				
				java.sql.Date end_time = null;
				try {
					end_time = java.sql.Date.valueOf(req.getParameter("end_time").trim());
				} catch (IllegalArgumentException e) {
					end_time=new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入報名結束時間!");
				}
				
				java.sql.Date act_start_time = null;
				try {
					act_start_time = java.sql.Date.valueOf(req.getParameter("act_start_time").trim());
				} catch (IllegalArgumentException e) {
					act_start_time=new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入活動開始時間!");
				}
				
				java.sql.Date act_end_time = null;
				try {
					act_end_time = java.sql.Date.valueOf(req.getParameter("act_end_time").trim());
				} catch (IllegalArgumentException e) {
					act_end_time=new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入活動結束時間!");
				}
				
				
				String act_description = req.getParameter("act_description").trim();
				if (act_description == null || act_description.trim().length() == 0) {
					errorMsgs.add("活動描述請勿空白");
				}
				
				Part part = req.getPart("act_picture");
				InputStream in = part.getInputStream();
				byte[] act_picture = new byte[in.available()];
				in.read(act_picture);
				in.close();
				if(part.getSize()==0) {
					errorMsgs.add("請上傳圖片");
				}
				

				ActVO actVO = new ActVO();
				actVO.setSq_route_id(sq_route_id);
				actVO.setSq_member_id(sq_member_id);
				actVO.setAct_title(act_title);
				actVO.setMax_population(max_population);
				actVO.setMin_population(min_population);
				actVO.setPopulation(population);
				actVO.setStart_time(start_time);
				actVO.setEnd_time(end_time);
				actVO.setAct_start_time(act_start_time);
				actVO.setAct_end_time(act_end_time);
				actVO.setAct_description(act_description);
				actVO.setAct_picture(act_picture);
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("actVO", actVO); // 含有輸入格式錯誤的actVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/activity/addAct.jsp");
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				ActService actSvc = new ActService();
				actVO = actSvc.addAct(
						sq_route_id, sq_member_id, act_title, max_population, min_population, 
						start_time, end_time, act_start_time, act_end_time, act_description,
						act_picture);
				
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String url = "/front-end/reportActivity/listAllAct.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllAct.jsp
				successView.forward(req, res);				
				
				/***************************其他可能的錯誤處理**********************************/
			
		}
		
	}
}