package com.staff.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.model.MemService;
import com.member.model.MemVO;
import com.staff.model.StaffService;
import com.staff.model.StaffVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)

public class StaffServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		System.out.println(action);
		
		
		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String str = req.getParameter("sq_staff_id");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入員工編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				String sq_staff_id = null;
				try {
					sq_staff_id = new String(str);
				} catch (Exception e) {
					errorMsgs.add("員工編號格式不正確");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 2.開始查詢資料 *****************************************/
				StaffService staffSvc = new StaffService();
				StaffVO staffVO = staffSvc.getOneStaff(sq_staff_id);
				if (staffVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
				req.setAttribute("staffVO", staffVO); // 資料庫取出的staffVO物件,存入req
				String url = "/back-end/staff/listOneStaff.jsp";	
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
				failureView.forward(req, res);
			}
		}

		if ("getOne_For_Update".equals(action)) { // 來自listAllEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sq_staff_id = new String(req.getParameter("sq_staff_id"));

				/*************************** 2.開始查詢資料 ****************************************/
				StaffService staffSvc = new StaffService();
				StaffVO staffVO = staffSvc.getOneStaff(sq_staff_id);

				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("update_staff_input", staffVO); // 資料庫取出的empVO物件,存入req
				String url = "/back-end/staff/update_staff_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/listAllStaff_page.jsp");
				failureView.forward(req, res);
			}
		}

		if ("update".contentEquals(action)) {
			List<String> errorMsgs = new LinkedList<String>();

			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_staff_id = new String(req.getParameter("sq_staff_id").trim());

				String sf_name = req.getParameter("sf_name").trim();
				String sf_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (sf_name == null || sf_name.trim().length() == 0) {
					errorMsgs.add("員工姓名: 請勿空白");
				} else if (!sf_name.trim().matches(sf_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("員工姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
				}

				String sf_account = req.getParameter("sf_account").trim();
				if (sf_account == null || sf_account.trim().length() == 0) {
					errorMsgs.add("帳號請勿空白");
				}

				String sf_password = req.getParameter("sf_password").trim();
				if (sf_password == null || sf_password.trim().length() == 0) {
					errorMsgs.add("密碼請勿空白");
				}
				Integer sf_status =new Integer(req.getParameter("sf_status"));
				
				StaffVO staffVO = new StaffVO();

				staffVO.setSf_account(sf_account);
				staffVO.setSf_password(sf_password);
				staffVO.setSf_name(sf_name);
				staffVO.setSf_status(sf_status);
				staffVO.setSq_staff_id(sq_staff_id);

				if (!errorMsgs.isEmpty()) {
					req.setAttribute("update_staff_input", staffVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("<%=request.getContextPath()%>/back-end/staff/update_staff_input.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				StaffService staffSvc = new StaffService();
				staffVO = staffSvc.updateStaff(sq_staff_id, sf_status, sf_account, sf_password, sf_name);
				System.out.print("go updateStaff");	
				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("update_staff_input", staffVO); // 資料庫update成功後,正確的的empVO物件,存入req
				String url = "/back-end/staff/listAllStaff.jsp";

				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/update_staff_input.jsp");
				failureView.forward(req, res);
			}
		}
		if ("insert".equals(action)) { // 來自addEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();

			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
				String sf_name = req.getParameter("sf_name");
				String sf_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";

				// {2,10} 此程式為UTF-8編碼 中文字長度為3個btye? 若輸入4個字(12byte)則超過10 會產生錯誤(前端攔不住此錯誤)
				if (sf_name == null || sf_name.trim().length() == 0) {
					errorMsgs.add("姓名: 請勿空白");
				} else if (!sf_name.trim().matches(sf_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
				}

				String sf_account = req.getParameter("sf_account").trim();
				if (sf_account == null || sf_account.trim().length() == 0) {
					errorMsgs.add("帳號請勿空白");
				}

				String sf_password = req.getParameter("sf_password").trim();
				if (sf_password == null || sf_password.trim().length() == 0) {
					errorMsgs.add("密碼請勿空白");
				}

				Integer sf_status = 0;

				StaffVO staffVO = new StaffVO();

				staffVO.setSf_account(sf_account);
				staffVO.setSf_password(sf_password);
				staffVO.setSf_name(sf_name);
				staffVO.setSf_status(sf_status);
				
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("staffVO", staffVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/addStaff.jsp");
					failureView.forward(req, res);								
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				StaffService staffSvc = new StaffService();
				staffVO = staffSvc.addStaff(sf_status, sf_account, sf_password, sf_name);

				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("addstaff", staffVO); // 資料庫update成功後,正確的的empVO物件,存入req
				String url = "/back-end/staff/listAllStaff.jsp";

				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/addStaff.jsp");
				failureView.forward(req, res);
			}
		}

	}
}