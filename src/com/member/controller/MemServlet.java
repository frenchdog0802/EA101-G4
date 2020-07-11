package com.member.controller;

import java.io.IOException;

import java.sql.*;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import java.io.*;

import com.member.model.MemDAO;
import com.member.model.MemService;
import com.member.model.MemVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)

public class MemServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();

		System.out.println(action);

		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String str = req.getParameter("sq_member_id");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入會員編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/member/selectMember_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				String sq_member_id = null;
				try {
					sq_member_id = new String(str);
				} catch (Exception e) {
					errorMsgs.add("會員編號格式不正確");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/member/selectMember_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 2.開始查詢資料 *****************************************/
				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(sq_member_id);
				if (memVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/member/selectMember_page.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
				req.setAttribute("memVO", memVO); // 資料庫取出的empVO物件,存入req
				String url = "/back-end/member/listOneMember.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/member/selectMember_page.jsp");
				failureView.forward(req, res);
			}
		}
		if ("getOne_For_Update".equals(action)) { // 來自listAllMem.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sq_member_id = new String(req.getParameter("sq_member_id"));

				/*************************** 2.開始查詢資料 ****************************************/
				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(sq_member_id);

				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("memVO", memVO); // 資料庫取出的memVO物件,存入req
				String url = "/back-end/member/update_member_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/member/selectMember_page.jsp");
				failureView.forward(req, res);
			}
		}

		if ("update".equals(action)) { // 來自update_member_input.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_member_id = new String(req.getParameter("sq_member_id").trim());

				String m_name = req.getParameter("m_name");
				String m_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (m_name == null || m_name.trim().length() == 0) {
					errorMsgs.add("姓名: 請勿空白");
				} else if (!m_name.trim().matches(m_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
				}

				String member_account = req.getParameter("member_account").trim();
				if (member_account == null || member_account.trim().length() == 0) {
					errorMsgs.add("帳號請勿空白");
				}

				String password = req.getParameter("password").trim();
				if (password == null || password.trim().length() == 0) {
					errorMsgs.add("密碼請勿空白");
				}

				String cellphone = req.getParameter("cellphone").trim();
				if (cellphone == null || cellphone.trim().length() == 0) {
					errorMsgs.add("電話請勿空白");
				}

				java.sql.Date birthday = null;
				try {
					birthday = java.sql.Date.valueOf(req.getParameter("birthday").trim());
				} catch (IllegalArgumentException e) {
					birthday = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("請輸入日期!");
				}

				String m_email = req.getParameter("m_email").trim();
				if (m_email == null || m_email.trim().length() == 0) {
					errorMsgs.add("請輸入email");
				}

				String nick_name = req.getParameter("nick_name").trim();
				if (nick_name == null || nick_name.trim().length() == 0) {
					errorMsgs.add("請輸入暱稱");
				}
				String address = req.getParameter("address").trim();
				if (address == null || address.trim().length() == 0) {
					errorMsgs.add("請輸入聯絡地址");
				}

				Integer gender = new Integer(req.getParameter("gender"));

				Date registered = new java.sql.Date(System.currentTimeMillis());
				
				
				
				InputStream in = req.getPart("m_photo").getInputStream();
				byte[] m_photo = null;
				if (session.getAttribute("m_photo") == null) {
					if (in.available() == 0) {
						MemService MemSrc = new MemService();
						MemVO memVO = MemSrc.getOneMem(sq_member_id);
						m_photo = memVO.getM_photo();
					}else {
						m_photo = new byte[in.available()];
						session.setAttribute("m_photo", m_photo);
						in.read(m_photo);
						in.close();
					}
				} else {
					m_photo = (byte[]) session.getAttribute("m_photo");
					in.read(m_photo);
					in.close();
				}
							
				InputStream in2 = req.getPart("back_img").getInputStream();
				byte[] back_img = null;
				if (session.getAttribute("back_img") == null) {
					if (in2.available() == 0) {
						MemService MemSrc = new MemService();
						MemVO memVO = MemSrc.getOneMem(sq_member_id);
						back_img = memVO.getBack_img();
					} else {
						back_img = new byte[in2.available()];
						session.setAttribute("back_img",back_img);
						in2.read(back_img);
						in2.close();
					}
				}else {
					back_img =(byte[]) session.getAttribute("back_img");
					in2.read(back_img);
					in2.close();
				}
				
				
				MemVO memVO = new MemVO();
				memVO.setMember_account(member_account);
				memVO.setPassword(password);
				memVO.setM_name(m_name);
				memVO.setGender(gender);
				memVO.setBirthday(birthday);
				memVO.setCellphone(cellphone);
				memVO.setM_email(m_email);
				memVO.setRegistered(registered);
				memVO.setM_photo(m_photo);
				memVO.setBack_img(back_img);
				memVO.setNick_name(nick_name);
				memVO.setAddress(address);
				memVO.setSq_member_id(sq_member_id);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("memVO", memVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/member/update_member_input.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				MemService memSvc = new MemService();
				memVO = memSvc.updateMem(member_account, password, m_name, gender, birthday, cellphone, m_email,
						registered, m_photo, back_img, nick_name, address, sq_member_id);
				session.removeAttribute("m_photo");
				session.removeAttribute("back_img");
				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("memVO", memVO); // 資料庫update成功後,正確的的empVO物件,存入req
				String url = "/back-end/member/listAllMember.jsp";

				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/member/update_member_input.jsp");
				failureView.forward(req, res);
			}
		}

		if ("insert".equals(action)) { // 來自addEmp.jsp的請求

			Map<String,String> errorMsgs = new HashMap<>();

			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
				String m_name = req.getParameter("m_name");
				String m_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";

				// {2,10} 此程式為UTF-8編碼 中文字長度為3個btye? 若輸入4個字(12byte)則超過10 會產生錯誤(前端攔不住此錯誤)
				if (m_name == null || m_name.trim().length() == 0) {
					errorMsgs.put("m_name","姓名: 請勿空白");
				} else if (!m_name.trim().matches(m_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.put("m_name","姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
				}

				String member_account = req.getParameter("member_account").trim();
				if (member_account == null || member_account.trim().length() == 0) {
					errorMsgs.put("member_account","帳號請勿空白");
				}

				String password = req.getParameter("password").trim();
				if (password == null || password.trim().length() == 0) {
					errorMsgs.put("password","密碼請勿空白");
				}

				String cellphone = req.getParameter("cellphone").trim();
				if (cellphone == null || cellphone.trim().length() == 0) {
					errorMsgs.put("phone","電話請勿空白");
				}

				java.sql.Date birthday = null;
				try {
					birthday = java.sql.Date.valueOf(req.getParameter("birthday").trim());
				} catch (IllegalArgumentException e) {
					birthday = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.put("birthday","請輸入日期!");
				}

				String m_email = req.getParameter("m_email").trim();
				if (m_email == null || m_email.trim().length() == 0) {
					errorMsgs.put("m_email","請輸入email");
				}

				

				String address = req.getParameter("address").trim();
				if (address == null || address.trim().length() == 0) {
					errorMsgs.put("address","請輸入聯絡地址");
				}

				Integer validation = new Integer(req.getParameter("validation"));

				Integer gender = new Integer(req.getParameter("gender"));

				Date registered = new java.sql.Date(System.currentTimeMillis());

				InputStream in = req.getPart("m_photo").getInputStream();
				byte[] m_photo = null;
				if (in.available() == 0) {
					if (session.getAttribute("m_photo") == null) {
						errorMsgs.put("m_photo","頭相未選擇上傳圖片");
					} else {
						m_photo = (byte[]) session.getAttribute("m_photo");
						in.read(m_photo);
						in.close();
					}
				} else {
					m_photo = new byte[in.available()];
					session.setAttribute("m_photo", m_photo);
					in.read(m_photo);
					in.close();
				}

				

				MemVO memVO = new MemVO();

				memVO.setMember_account(member_account);
				memVO.setPassword(password);
				memVO.setM_name(m_name);
				memVO.setGender(gender);
				memVO.setBirthday(birthday);
				memVO.setCellphone(cellphone);
				memVO.setM_email(m_email);
				memVO.setValidation(validation);
				memVO.setRegistered(registered);
				memVO.setM_photo(m_photo);
				memVO.setBack_img(null);
				memVO.setNick_name(null);
				memVO.setAddress(address);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("memVO", memVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/member/registered.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始新增資料 ***************************************/
				MemService memSvc = new MemService();
				memVO = memSvc.addMem(member_account, password, m_name, gender, birthday, cellphone, m_email,
						validation, registered, m_photo, null, null, address);
				session.removeAttribute("m_photo");
				session.removeAttribute("back_img");
				/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
				String url = "/back-end/member/listAllMember.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);
				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/member/registered.jsp");
				failureView.forward(req, res);
			}
		}

		if ("delete".equals(action)) { // 來自listAllEmp.jsp

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			String requestURL = req.getParameter("requestURL");
			try {
				/*************************** 1.接收請求參數 ***************************************/
				String sq_member_id = new String(req.getParameter("sq_member_id"));

				/*************************** 2.開始刪除資料 ***************************************/
				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(sq_member_id);
				memSvc.deleteMem(sq_member_id);

				/*************************** 3.刪除完成,準備轉交(Send the Success view) ***********/
				String url = "/back-end/member/listAllMember.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/member/listAllMember.jsp");
				failureView.forward(req, res);
			}
		}
	}

}
