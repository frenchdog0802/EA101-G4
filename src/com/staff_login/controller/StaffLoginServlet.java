package com.staff_login.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.store.model.BikeStoreService;
import com.bike.store.model.BikeStoreVO;
import com.staff.model.StaffService;
import com.staff.model.StaffVO;


public class StaffLoginServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action").trim();
		System.out.println(action);
		HttpSession session = request.getSession();
		
		//員工登入1
		if ("staffLogin".equals(action)) {
			Map<String,String> errorMsgs = new HashMap<>();
			request.setAttribute("errorMsgs", errorMsgs);
			String url = "";
			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String staffAccount = request.getParameter("staffAccount").trim();
				if (staffAccount == null || (staffAccount.trim()).length() == 0) {
					errorMsgs.put("staffAccount","請輸入帳號");
				}
				String staffPassword = request.getParameter("staffPassword").trim();
				if (staffPassword == null || staffPassword.trim().length() == 0) {
					errorMsgs.put("staffPassword","請輸入密碼");
				}
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
					failureView.forward(request, response);
					return; // 程式中斷
				}
				/*************************** 2.開始查詢資料 *******************************/
				StaffService staffSvc = new StaffService();
				StaffVO StaffVO = staffSvc.findByAccount(staffAccount);
				if (StaffVO == null) {
					errorMsgs.put("staffAccount","無此帳號");
				} else if (!StaffVO.getSf_password().equals(staffPassword)) {
					errorMsgs.put("staffPassword","密碼錯誤,請重新確認");
				}else {
					session.setAttribute("StaffVO", StaffVO);//// *工作1: 才在session內做已經登入過的標識
				}
				try {
					String location = (String) session.getAttribute("location");
					if (location != null) {
						session.removeAttribute("location"); // *工作2: 看看有無來源網頁 (-->如有來源網頁:則重導至來源網頁)
						response.sendRedirect(location);
						return;
					}
				} catch (Exception ignored) {
					url ="/back-end/index/backIndex.jsp";
				}
//				response.sendRedirect(request.getContextPath()+"/back-end/member/selectMember_page.jsp");  //*工作3: (-->如無來源網頁:則重導至login_success.jsp)
				if (!errorMsgs.isEmpty()) {
					request.setAttribute("LoginStaff", StaffVO);
					RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
					failureView.forward(request, response);
					return; // 程式中斷
				}
				/*************************** 3.查詢完成,準備轉交 ********************************/
				url =request.getContextPath()+"/back-end/index/backIndex.jsp";// "/back-end/index.jsp"
				response.sendRedirect(url);
			}
			catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
				failureView.forward(request, response);
			}
		}
		
		
		
		 //租車商家登入
		if ("storeLogin".equals(action)) {
			Map<String,String> errorMsgs = new HashMap<>();
			request.setAttribute("errorMsgs", errorMsgs);
			String url = "";
//			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String storeAccount = request.getParameter("storeAccount").trim();
				if (storeAccount == null || (storeAccount.trim()).length() == 0) {
					errorMsgs.put("storeAccount","請輸入帳號");
				}
				
				String storePassword = request.getParameter("storePassword").trim();
				if (storePassword == null || storePassword.trim().length() == 0) {
					errorMsgs.put("storePassword","請輸入密碼");
				}
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
					failureView.forward(request, response);
					return; // 程式中斷
				}
				/*************************** 2.開始查詢資料 *******************************/
				BikeStoreService bikeStoreSvc = new BikeStoreService();
				BikeStoreVO BikeStoreVO = bikeStoreSvc.findByAccount(storeAccount);
				if (BikeStoreVO == null) {
					errorMsgs.put("storeAccount","無此帳號");
				} else if (!BikeStoreVO.getStore_password().equals(storePassword)) {
					errorMsgs.put("storePassword","密碼錯誤,請重新確認");
				}else {
					session.setAttribute("BikeStoreVO", BikeStoreVO);//// *工作1: 才在session內做已經登入過的標識
				}
//				response.sendRedirect(request.getContextPath()+"/back-end/member/selectMember_page.jsp");  //*工作3: (-->如無來源網頁:則重導至login_success.jsp)
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
					failureView.forward(request, response);
					return; // 程式中斷
				}
				/*************************** 3.查詢完成,準備轉交 ********************************/
				url =request.getContextPath()+"/back-end/bike/bikeMaster.jsp";// "/back-end/index.jsp"
				response.sendRedirect(url);
			}
//			catch (Exception e) {
//				e.printStackTrace();
//				RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
//				failureView.forward(request, response);
//			}
//		}
		
		//登出
		if ("logout".equals(action)) {
			session.invalidate();
			String url3 = "/back-end/LoginStaff.jsp";
			RequestDispatcher successView = request.getRequestDispatcher(url3); // 成功轉交 index.jsp
			successView.forward(request, response);
		}
	}
}