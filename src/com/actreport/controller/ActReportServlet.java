package com.actreport.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.actreport.model.ActReportService;
import com.actreport.model.ActReportVO;
import com.member.model.MemVO;
import com.staff.model.StaffVO;

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
		HttpSession session = req.getSession();
		MemVO memVO = null;
		String sq_member_id = null;
		try {
			memVO = (MemVO)session.getAttribute("MemVO");
			sq_member_id = memVO.getSq_member_id();
			session.setAttribute("sq_member_id", sq_member_id);
		} catch (Exception e){
			StaffVO staffVO = (StaffVO)session.getAttribute("StaffVO");
			sq_member_id = staffVO.getSq_staff_id();
			session.setAttribute("sq_member_id", sq_member_id);
		}

		
		
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
				String sq_activity_id = new String(req.getParameter("sq_activity_id"));
				String report_reason = new String(req.getParameter("report_reason"));
				Integer report_status = null;
				String report_response = req.getParameter("report_response").trim();
				String report_responseReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{1,65}$";
				if(!report_response.trim().matches(report_responseReg)) { //以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("檢舉回應: 只能是中、英文字母、數字和_ , 且長度必需在1到65之間");
	            } else if(report_response.matches("null") || report_response.trim().length() == 0) {
	            	errorMsgs.add("檢舉回應請勿空白");
	            }
				String report_statusReg = "^[(0-2)]{1,1}$";
				try {
					report_status = new Integer(req.getParameter("report_status").trim());
				} catch (NumberFormatException e) {
					report_status = 0;
					errorMsgs.add("檢舉處理狀態請填0到2.");
				}
				if (!report_status.toString().matches(report_statusReg)) {
					errorMsgs.add("檢舉處理狀態請填0到2.");
				} 

				ActReportVO actreportVO = new ActReportVO();
				actreportVO.setSq_activityreport_id(sq_activityreport_id);
				actreportVO.setSq_activity_id(sq_activity_id);
				actreportVO.setSq_member_id(sq_member_id);
				actreportVO.setReport_reason(report_reason);
				actreportVO.setReport_response(report_response);
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
				actreportVO = actreportSvc.updateActReport(sq_activityreport_id, report_response, report_status);
				
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
				String sq_activity_id = req.getParameter("sq_activity_id");
				String report_reason = new String(req.getParameter("report_reason").trim());
				String report_reasonReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{1,65}$";
				if (report_reason == null || report_reason.trim().length() == 0) {
					errorMsgs.add("檢舉理由: 請勿空白");
				} else if(!report_reason.trim().matches(report_reasonReg)) { //以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("檢舉理由: 只能是中、英文字母、數字和_ , 且長度必需在1到65之間");
	            } else if(report_reason.trim().matches("請填入檢舉理由")) {
	            	errorMsgs.add("檢舉理由: 請勿空白");
	            }
				
				ActReportVO actreportVO = new ActReportVO();
				actreportVO.setSq_activity_id(sq_activity_id);
				actreportVO.setSq_member_id(sq_member_id);
				actreportVO.setReport_reason(report_reason);
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("actreportVO", actreportVO); // 含有輸入格式錯誤的actVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id="+sq_activity_id); //錯誤時轉交原本頁面
					failureView.forward(req, res);
					return;
				}
				
				/***************************2.開始新增資料***************************************/
				ActReportService actreportSvc = new ActReportService();
				actreportVO = actreportSvc.addActReport(
						sq_activity_id, sq_member_id, report_reason);
				
				/***************************3.新增完成,準備轉交(Send the Success view)***********/
				String  url=req.getParameter("requestURL");   
				res.sendRedirect(url);				
				
				/***************************其他可能的錯誤處理**********************************/
			
		}
	}
}
