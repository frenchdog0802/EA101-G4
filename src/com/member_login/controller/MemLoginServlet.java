package com.member_login.controller;

import java.io.*;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.*;
import javax.servlet.RequestDispatcher;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

import org.json.JSONObject;

import com.member_login.model.MemLoginService;
import com.member_login.model.MemLoginVO;

public class MemLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		if ("login".equals(action)) {// 來自LoginMemeber.jsp

			Map<String, String> returnMsgs = new HashMap<>();
			request.setAttribute("errorMsgs", returnMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String member_account = request.getParameter("member_account").trim();
				if (member_account == null || (member_account.trim()).length() == 0) {
					returnMsgs.put("errorAccount", "請輸入帳號");
				}
				String password = request.getParameter("password").trim();
				if (password == null || password.trim().length() == 0) {
					returnMsgs.put("errorPws", "請輸入密碼");
				}

				if (!returnMsgs.isEmpty()) {
					JSONObject resJson = new JSONObject(returnMsgs);
					out.println(resJson);
					return; // 程式中斷
				}

				/*************************** 2.開始查詢資料 *******************************/

				MemLoginService memSvc = new MemLoginService();
				MemLoginVO memLoginVO = null;
				
				memLoginVO = memSvc.findMember_account(member_account);
				if(memLoginVO==null) {
					returnMsgs.put("errorAccount", "無此帳號");
				}else if(!memLoginVO.getPassword().equals(password)) {
					returnMsgs.put("errorPws", "密碼錯誤,請重新確認");
				}else if(memLoginVO.getValidation()==0) {
					returnMsgs.put("errorValidation", "此號障尚未驗證");
				}else {
					//驗證成功
					session.setAttribute("MemLoginVO", memLoginVO);
				}
				
				
				
				
				//有錯誤的話return 回傳
				if (!returnMsgs.isEmpty()) {
					JSONObject resJson = new JSONObject(returnMsgs);
					out.println(resJson);
					return; // 程式中斷
				}
				//有成功重導
				try {
					String location = (String) session.getAttribute("location");
					if (location != null) {
						session.removeAttribute("location"); // *工作2: 看看有無來源網頁 (-->如有來源網頁:則重導至來源網頁)
						returnMsgs.put("location", location);
						JSONObject resJson = new JSONObject(returnMsgs);
						out.println(resJson);
						return;
					}
				} catch (Exception ex) {
					ex.printStackTrace();
				}

//				response.sendRedirect(request.getContextPath()+"/back-end/member/selectMember_page.jsp");  //*工作3: (-->如無來源網頁:則重導至login_success.jsp)
//				

				/*************************** 3.查詢完成,準備轉交 ********************************/

				String indexUrl = request.getContextPath() + "/front-end/index/index.jsp";// "/front-end/index.jsp"
				returnMsgs.put("location", indexUrl);
				JSONObject resJson = new JSONObject(returnMsgs);
				out.println(resJson);
				return;
			}

			catch (Exception e) {
//				errorMsgs.add("無法取得資料:" + e.getMessage());
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
