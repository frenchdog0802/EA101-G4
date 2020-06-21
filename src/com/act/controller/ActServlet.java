package com.act.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import com.act.model.*;

@MultipartConfig
public class ActServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		String sq_member_id = (String) session.getAttribute("sq_member_id");

		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String str = req.getParameter("sq_activity_id");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入活動編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/select_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				String sq_activity_id = null;
				try {
					sq_activity_id = new String(str);
				} catch (Exception e) {
					errorMsgs.add("活動編號格式不正確");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/select_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 2.開始查詢資料 *****************************************/
				ActService actSvc = new ActService();
				ActVO actVO = actSvc.getOneAct(sq_activity_id);
				if (actVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/select_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
				req.setAttribute("actVO", actVO); // 資料庫取出的actVO物件,存入req
				String url = "/back-end/activity/listOneAct.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneAct.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/select_page.jsp");
				failureView.forward(req, res);
			}
		}

		if ("getOne_For_Update".equals(action)) { // 來自listAllAct.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sq_activity_id = new String(req.getParameter("sq_activity_id"));

				/*************************** 2.開始查詢資料 ****************************************/
				ActService actSvc = new ActService();
				ActVO actVO = actSvc.getOneAct(sq_activity_id);

				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("actVO", actVO); // 資料庫取出的actVO物件,存入req
				String url = "/back-end/activity/update_act_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_act_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/listAllAct.jsp");
				failureView.forward(req, res);
			}
		}

		if ("update".equals(action)) { // 來自update_act_input.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_activity_id = req.getParameter("sq_activity_id").trim();
				String sq_route_id = req.getParameter("sq_route_id").trim();
//				String sq_member_id = req.getParameter("sq_member_id").trim();
				if (sq_member_id == null) {
					session.setAttribute("sq_member_id", "910003"); // 此行之後要刪掉 測試用
				}
				String act_title = new String(req.getParameter("act_title").trim());
				String act_titleReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{5,50}$";
				if (act_title == null || act_title.trim().length() == 0) {
					errorMsgs.add("活動標題: 請勿空白");
				} else if (!act_title.trim().matches(act_titleReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("活動標題: 只能是中、英文字母、數字和_ , 且長度必需在5到50之間");
				} else if (act_title.trim().matches("請填入標題")) {
					errorMsgs.add("活動標題: 請勿空白");
				}

				Integer max_population = null;
				try {
					max_population = new Integer(req.getParameter("max_population").trim());
				} catch (NumberFormatException e) {
					max_population = 1;
					errorMsgs.add("上限人數請填數字.");
				}

				Integer min_population = null;
				try {
					min_population = new Integer(req.getParameter("min_population").trim());
				} catch (NumberFormatException e) {
					min_population = 1;
					errorMsgs.add("最低人數請填數字.");
				}

				Integer population = null;
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
					start_time = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入報名開始時間!");
				}

				java.sql.Date end_time = null;
				try {
					end_time = java.sql.Date.valueOf(req.getParameter("end_time").trim());
				} catch (IllegalArgumentException e) {
					end_time = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入報名結束時間!");
				}

				java.sql.Date act_start_time = null;
				try {
					act_start_time = java.sql.Date.valueOf(req.getParameter("act_start_time").trim());
				} catch (IllegalArgumentException e) {
					act_start_time = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入活動開始時間!");
				}

				java.sql.Date act_end_time = null;
				try {
					act_end_time = java.sql.Date.valueOf(req.getParameter("act_end_time").trim());
				} catch (IllegalArgumentException e) {
					act_end_time = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入活動結束時間!");
				}

				String act_description = req.getParameter("act_description").trim();
				if (act_description == null || act_description.trim().length() == 0) {
					errorMsgs.add("活動描述請勿空白");
				}

				byte[] act_picture = null;
				Part part = req.getPart("act_picture");
				InputStream in = part.getInputStream();

				if (in.available() > 0) { //如果有新增圖片就用新增的
					act_picture = new byte[in.available()];
					in.read(act_picture);
					in.close();
				} else {  //如果沒有新增的就保持原本資料庫的圖片
					ActService actSvc = new ActService();
					ActVO actVO = actSvc.getOneAct(sq_activity_id);
					act_picture = actVO.getAct_picture();
				}

				Integer gp_status = null;
				try {
					gp_status = new Integer(req.getParameter("gp_status").trim());
				} catch (NumberFormatException e) {
					gp_status = 1;
					errorMsgs.add("請選擇成團狀態");
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
				actVO.setGp_status(gp_status);
				actVO.setSq_activity_id(sq_activity_id);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("actVO", actVO); // 含有輸入格式錯誤的actVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/update_act_input.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				ActService actSvc = new ActService();
				actVO = actSvc.updateAct(sq_route_id, sq_member_id, act_title, max_population, min_population,
						population, start_time, end_time, act_start_time, act_end_time, act_description, act_picture,
						gp_status, sq_activity_id);

				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("actVO", actVO); // 資料庫update成功後,正確的的actVO物件,存入req
				String url = "/back-end/activity/listOneAct.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneAct.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/update_act_input.jsp");
				failureView.forward(req, res);
			}
		}

		if ("insert".equals(action)) { // 來自addAct.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
			String act_title = new String(req.getParameter("act_title").trim());
			String sq_route_id = req.getParameter("sq_route_id").trim();
//				String sq_member_id = req.getParameter("sq_member_id").trim();		
			if (sq_member_id == null) {
				session.setAttribute("sq_member_id", "910003"); // 此行之後要刪掉 測試用
			}

			String act_titleReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{5,50}$";
			if (act_title == null || act_title.trim().length() == 0) {
				errorMsgs.add("活動標題: 請勿空白");
			} else if (!act_title.trim().matches(act_titleReg)) { // 以下練習正則(規)表示式(regular-expression)
				errorMsgs.add("活動標題: 只能是中、英文字母、數字和_ , 且長度必需在5到50之間");
			} else if (act_title.trim().matches("請填入標題")) {
				errorMsgs.add("活動標題: 請勿空白");
			}

			Integer max_population = null;
			try {
				max_population = new Integer(req.getParameter("max_population").trim());
			} catch (NumberFormatException e) {
				max_population = 1;
				errorMsgs.add("上限人數請填數字.");
			}

			Integer min_population = null;
			try {
				min_population = new Integer(req.getParameter("min_population").trim());
			} catch (NumberFormatException e) {
				min_population = 1;
				errorMsgs.add("下限人數請填數字.");
			}

			Integer population = null;
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
				start_time = new java.sql.Date(System.currentTimeMillis());
				errorMsgs.add("請輸入報名開始時間!");
			}

			java.sql.Date end_time = null;
			try {
				end_time = java.sql.Date.valueOf(req.getParameter("end_time").trim());
			} catch (IllegalArgumentException e) {
				end_time = new java.sql.Date(System.currentTimeMillis());
				errorMsgs.add("請輸入報名結束時間!");
			}

			java.sql.Date act_start_time = null;
			try {
				act_start_time = java.sql.Date.valueOf(req.getParameter("act_start_time").trim());
			} catch (IllegalArgumentException e) {
				act_start_time = new java.sql.Date(System.currentTimeMillis());
				errorMsgs.add("請輸入活動開始時間!");
			}

			java.sql.Date act_end_time = null;
			try {
				act_end_time = java.sql.Date.valueOf(req.getParameter("act_end_time").trim());
			} catch (IllegalArgumentException e) {
				act_end_time = new java.sql.Date(System.currentTimeMillis());
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
			if (part.getSize() == 0) {
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
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/addAct.jsp");
				failureView.forward(req, res);
				return;
			}

			/*************************** 2.開始新增資料 ***************************************/
			ActService actSvc = new ActService();
			actVO = actSvc.addAct(sq_route_id, sq_member_id, act_title, max_population, min_population, population,
					start_time, end_time, act_start_time, act_end_time, act_description, act_picture);

			/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
			String url = "/back-end/activity/listAllAct.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllAct.jsp
			successView.forward(req, res);

			/*************************** 其他可能的錯誤處理 **********************************/

		}

		if ("cancel".equals(action)) { // 來自listAllAct.jsp

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ***************************************/
				String sq_activity_id = req.getParameter("sq_activity_id");

				/*************************** 2.開始刪除資料 ***************************************/
				ActService actSvc = new ActService();
				actSvc.cancelAct(sq_activity_id);

				/*************************** 3.刪除完成,準備轉交(Send the Success view) ***********/
				String url = "/back-end/activity/listAllAct.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/listAllAct.jsp");
				failureView.forward(req, res);
			}
		}

		if ("delete".equals(action)) { // 來自listAllAct.jsp

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ***************************************/
				String sq_activity_id = req.getParameter("sq_activity_id");

				/*************************** 2.開始刪除資料 ***************************************/
				ActService actSvc = new ActService();
				actSvc.deleteAct(sq_activity_id);

				/*************************** 3.刪除完成,準備轉交(Send the Success view) ***********/
				String url = "/back-end/activity/listAllAct.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/activity/listAllAct.jsp");
				failureView.forward(req, res);
			}
		}
	}
}
