package com.staff_login.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.staff_login.model.StaffLoginService;
import com.staff_login.model.StaffLoginVO;


public class StaffLoginServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action").trim();

		System.out.println(action);
		HttpSession session = request.getSession();
		if ("login".equals(action)) {// 來自LoginStaff.jsp

			List<String> errorMsgs = new LinkedList<String>();

			request.setAttribute("errorMsgs", errorMsgs);
			String url = "";
			
			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/

				String sf_account = request.getParameter("sf_account").trim();

				if (sf_account == null || (sf_account.trim()).length() == 0) {
					errorMsgs.add("請輸入帳號");
				}

				String sf_password = request.getParameter("sf_password").trim();
				if (sf_password == null || sf_password.trim().length() == 0) {
					errorMsgs.add("請輸入密碼");
				}

				StaffLoginVO staffLoginVO = new StaffLoginVO();
				staffLoginVO.setSf_account(sf_account);

				if (!errorMsgs.isEmpty()) {
					request.setAttribute("staffLoginVO", staffLoginVO);
					RequestDispatcher failureView = request.getRequestDispatcher("/front-end/login/LoginMember.jsp");
					failureView.forward(request, response);
					return; // 程式中斷
				}
				/*************************** 2.開始查詢資料 *******************************/
				StaffLoginService staffSvc = new StaffLoginService();
				staffLoginVO = staffSvc.getOneStaff(sf_account);
				if (staffLoginVO == null) {
					errorMsgs.add("無此帳號");
					System.out.println("輸入帳號錯誤");
				} else if (!staffLoginVO.getSf_password().equals(sf_password)) {
					errorMsgs.add("密碼錯誤,請重新確認");
					System.out.println("輸入密碼錯誤,請重新確認");
				}

				else {
					session.setAttribute("StaffLoginFilter", staffLoginVO);//// *工作1: 才在session內做已經登入過的標識
				}
				try {
					String location = (String) session.getAttribute("location");
					if (location != null) {
						session.removeAttribute("location"); // *工作2: 看看有無來源網頁 (-->如有來源網頁:則重導至來源網頁)
						response.sendRedirect(location);
						return;
					}
				} catch (Exception ignored) {
					url ="/back-end/index.jsp";
				}

//				response.sendRedirect(request.getContextPath()+"/back-end/member/selectMember_page.jsp");  //*工作3: (-->如無來源網頁:則重導至login_success.jsp)
//				
				if (!errorMsgs.isEmpty()) {
					request.setAttribute("LoginStaff", staffLoginVO);
					RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
					failureView.forward(request, response);
					System.out.println("輸入錯誤,請重新確認");
					return; // 程式中斷

				}
				/*************************** 3.查詢完成,準備轉交 ********************************/
				String url2 = "/back-end/index.jsp";// "/back-end/index.jsp"
				RequestDispatcher successView = request.getRequestDispatcher(url2); // 成功轉交 selectMember_page.jsp
				successView.forward(request, response);

			}

			catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = request.getRequestDispatcher("/back-end/LoginStaff.jsp");
				failureView.forward(request, response);
			}
		}
		if ("logout".equals(action)) {
			session.invalidate();
			String url3 = "/back-end/index.jsp";
			RequestDispatcher successView = request.getRequestDispatcher(url3); // 成功轉交 index.jsp
			successView.forward(request, response);
		}
	}
}