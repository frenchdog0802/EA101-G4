package com.member_login.controller;

import java.io.*;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.RequestDispatcher;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

import com.member_login.model.MemLoginService;
import com.member_login.model.MemLoginVO;

public class MemLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action").trim();

		System.out.println(action);
		HttpSession session = request.getSession();
		if ("login".equals(action)) {// 來自LoginMemeber.jsp

			List<String> errorMsgs = new LinkedList<String>();

			request.setAttribute("errorMsgs", errorMsgs);
			String url = "";
			
			request.setAttribute("", errorMsgs);
			
			
			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/

				String member_account = request.getParameter("member_account").trim();

				if (member_account == null || (member_account.trim()).length() == 0) {
					errorMsgs.add("請輸入帳號");
				}
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = request.getRequestDispatcher("/front-end/index/LoginMember.jsp");
					failureView.forward(request, response);
					return;// 程式中斷
				}
				String password = request.getParameter("password").trim();
				if (password == null || password.trim().length() == 0) {
					errorMsgs.add("請輸入密碼");
				}
				
				
				MemLoginVO memLoginVO = new MemLoginVO();
				memLoginVO.setMember_account(member_account);
				
				

				if (!errorMsgs.isEmpty()) {
					request.setAttribute("memLoginVO", memLoginVO);
					RequestDispatcher failureView = request.getRequestDispatcher("/front-end/index/LoginMember.jsp");
					failureView.forward(request, response);
					return; // 程式中斷
				}
				/*************************** 2.開始查詢資料 *******************************/
				MemLoginService memSvc = new MemLoginService();
				memLoginVO = memSvc.login(member_account);
				System.out.println(memLoginVO.getSq_member_id());
				if (memLoginVO == null) {
					errorMsgs.add("無此帳號");
					System.out.println("輸入帳號錯誤");
				} else if (!memLoginVO.getPassword().equals(password)) {
					errorMsgs.add("密碼錯誤,請重新確認");
					System.out.println("輸入密碼錯誤,請重新確認");
				}
//				else if(memLoginVO.getValidation() == 0) {
//					errorMsgs.add("此帳號尚未驗證");
//				}
				else {
					session.setAttribute("memLoginVO", memLoginVO);//// *工作1: 才在session內做已經登入過的標識
				}
				try {
					String location = (String) session.getAttribute("location");
					if (location != null) {
						session.removeAttribute("location"); // *工作2: 看看有無來源網頁 (-->如有來源網頁:則重導至來源網頁)
						response.sendRedirect(location);
						return;
					}
				} catch (Exception ignored) {
					url = "/front-end/index.jsp";
				}
				
//				response.sendRedirect(request.getContextPath()+"/back-end/member/selectMember_page.jsp");  //*工作3: (-->如無來源網頁:則重導至login_success.jsp)
//				
				if (!errorMsgs.isEmpty()) {
					request.setAttribute("memLoginVO", memLoginVO);
					RequestDispatcher failureView = request.getRequestDispatcher("/front-end/login/LoginMember.jsp");
					failureView.forward(request, response);
					System.out.println("輸入錯誤,請重新確認");
					return; // 程式中斷

				}
				/*************************** 3.查詢完成,準備轉交 ********************************/
				
				String url2 = "/front-end/index.jsp";// "/front-end/index.jsp"
				RequestDispatcher successView = request.getRequestDispatcher(url2); // 成功轉交 selectMember_page.jsp
				successView.forward(request, response);

			}

			catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = request.getRequestDispatcher("/front-end/login/LoginMember.jsp");
				failureView.forward(request, response);
			}
		}
		if ("logout".equals(action)) {
			session.invalidate();
			String url3 = "/front-end/index.jsp";
			RequestDispatcher successView = request.getRequestDispatcher(url3); // 成功轉交 index.jsp
			successView.forward(request, response);
		}
	}
}
