package com.forum.controller;

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
import javax.servlet.http.HttpSession;

import com.forum.model.*;
import com.forum.model.ForumVO;
import com.forum_message.model.*;
import com.member.model.*;
import com.member_login.model.*;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)

public class ForumServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String url = "";
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
				String sq_theme_id = req.getParameter("sq_theme_id");
//			System.out.println(str);

				System.out.println(sq_theme_id);
//			 Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listAllTheme.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 2.開始查詢資料 *****************************************/

				ForumService forumSvc = new ForumService();
				ForumVO forumVO = forumSvc.getOneTheme(sq_theme_id);
//			System.out.println("forumVO == null=" + forumVO == null);
				if (forumVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listAllTheme.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/******** 發文者會員資料 ***********/
				String sq_member_id = forumVO.getSq_member_id();
				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(sq_member_id);
				
				/******** 發文者會員資料 ***********/
//				String sq_member_id = forumVO.getSq_member_id();
//				MemService memSvc = new MemService();
//				MemVO memVO = memSvc.getOneMem(sq_member_id);
//				

				/*********** 主題留言 *********/
				ForumMessageService forumMessageSvc = new ForumMessageService();
				List<ForumMessageVO> MessagebySq_theme_id = forumMessageSvc.getMessagebySq_theme_id(sq_theme_id);

				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
				req.setAttribute("listOneTheme_message", MessagebySq_theme_id);
				req.setAttribute("Theme_memVO", memVO);
				req.setAttribute("listOneTheme", forumVO); // 資料庫取出的empVO物件,存入req

				System.out.println(forumVO.getSq_theme_id());
				String url2 = "/front-end/forum/listOneTheme.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2); // 成功轉交 listOne.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listAllTheme.jsp");
				failureView.forward(req, res);
			}
		}
		if ("getOne_For_Update".equals(action)) { // 來自listoneTheme.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sq_theme_id = new String(req.getParameter("sq_theme_id"));
				System.out.println("getOne_For_Update getsq_theme_id =" + sq_theme_id);
				/*************************** 2.開始查詢資料 ****************************************/
				ForumService forumSvc = new ForumService();
				ForumVO forumVO = forumSvc.getOneTheme(sq_theme_id);
				System.out.println("forumVO.getSq_theme_id=" + forumVO.getSq_theme_id());
				System.out.println("forumVO.getSq_member_id=" + forumVO.getSq_member_id());

				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("update_Theme_input", forumVO); // 資料庫取出的memVO物件,存入req
				String url2 = "/front-end/forum/update_Theme_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listOneTheme.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("getOne_For_Update_Staff".equals(action)) { // 來自listAllForum.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sq_theme_id = new String(req.getParameter("sq_theme_id"));
				System.out.println("getOne_For_Update getsq_theme_id =" + sq_theme_id);
				/*************************** 2.開始查詢資料 ****************************************/
				
				ForumService forumSvc = new ForumService();
				ForumVO forumVO = forumSvc.getOneTheme(sq_theme_id);
				System.out.println("forumVO.getSq_theme_id=" + forumVO.getSq_theme_id());
				System.out.println("forumVO.getSq_member_id=" + forumVO.getSq_member_id());

				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("updateListOne", forumVO); // 資料庫取出的memVO物件,存入req
				String url2 = "/back-end/forum/updateListOne.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/forum/listAllForum.jsp");
				failureView.forward(req, res);
			}
		}

		if ("update".equals(action)) { // 來自update_Theme_input.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_theme_id = new String(req.getParameter("sq_theme_id").trim());
				System.out.println("update getsq_theme_id=" + sq_theme_id);

				String sq_member_id = new String(req.getParameter("sq_member_id").trim());
				System.out.println("update getsq_member_id=" + sq_member_id);

				String theme_name = new String(req.getParameter("theme_name").trim());
//				String theme_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (theme_name == null || theme_name.trim().length() == 0) {
					errorMsgs.add("主題名稱: 請勿空白");
				}
//				else if (!theme_name.trim().matches(theme_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
//					errorMsgs.add("主題名稱: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
//				}

				String theme_detial = req.getParameter("theme_detial").trim();
				if (theme_detial == null || theme_detial.trim().length() == 0) {
					errorMsgs.add("主題內容請勿空白");
				}

				InputStream in = req.getPart("theme_pic").getInputStream();
				byte[] theme_pic = null;
				if (session.getAttribute("theme_pic") == null) {
					if (in.available() == 0) {
						ForumService ForumSrc = new ForumService();
						ForumVO forumVO = ForumSrc.getOneTheme(sq_theme_id);
						theme_pic = forumVO.getTheme_pic();
					} else {
						theme_pic = new byte[in.available()];
						session.setAttribute("theme_pic", theme_pic);
						in.read(theme_pic);
						in.close();
					}
				} else {
					theme_pic = (byte[]) session.getAttribute("theme_pic");
					in.read(theme_pic);
					in.close();
				}

//				Integer theme_display_status = new Integer(req.getParameter("theme_display_status").trim());
				int theme_display_status = 0;
				System.out.println("update gettheme_display_status=" + theme_display_status);

				ForumVO forumVO = new ForumVO();
				forumVO.setSq_theme_id(sq_theme_id);
				forumVO.setSq_member_id(sq_member_id);
				forumVO.setTheme_name(theme_name);
				forumVO.setTheme_detial(theme_detial);
				forumVO.setTheme_pic(theme_pic);
				forumVO.setTheme_display_status(theme_display_status);

				System.out.println("forum-----------");
				System.out.println("sq_theme_id=" + sq_theme_id);
				System.out.println("sq_member_id=" + sq_member_id);
				System.out.println("theme_name=" + theme_name);
				System.out.println("theme_detial=" + theme_detial);
				System.out.println("theme_pic=" + theme_pic);
				System.out.println("theme_display_status=" + theme_display_status);
				
				
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("update_Theme_input", forumVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/update_Theme_input.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				ForumService forumSvc = new ForumService();
				forumVO = forumSvc.updateTheme(sq_theme_id, sq_member_id, theme_name, theme_detial, theme_pic,
						theme_display_status);
				session.removeAttribute("theme_pic");


				System.out.println("forum-----------");
				System.out.println("sq_theme_id="+sq_theme_id);
				System.out.println("sq_member_id="+sq_member_id);
				System.out.println("theme_name="+theme_name);
				System.out.println("theme_detial="+theme_detial);
				System.out.println("theme_pic="+theme_pic);
				System.out.println("theme_display_status="+theme_display_status);
				
				
				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("listOneTheme", forumVO); // 資料庫update成功後,正確的的empVO物件,存入req
				String url2 = "/front-end/forum/listOneTheme.jsp";

				RequestDispatcher successView = req.getRequestDispatcher(url2); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/update_Theme_input.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("updateByStaff".equals(action)) { // 來自updateListOne.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_theme_id = new String(req.getParameter("sq_theme_id").trim());
				System.out.println("update getsq_theme_id=" + sq_theme_id);

				String sq_member_id = new String(req.getParameter("sq_member_id").trim());
				System.out.println("update getsq_member_id=" + sq_member_id);

				String theme_name = new String(req.getParameter("theme_name").trim());
//				String theme_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (theme_name == null || theme_name.trim().length() == 0) {
					errorMsgs.add("主題名稱: 請勿空白");
				}
//				else if (!theme_name.trim().matches(theme_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
//					errorMsgs.add("主題名稱: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
//				}

				String theme_detial = req.getParameter("theme_detial").trim();
				if (theme_detial == null || theme_detial.trim().length() == 0) {
					errorMsgs.add("主題內容請勿空白");
				}
				
				Integer theme_display_status = new  Integer(req.getParameter("theme_display_status").trim());
				
				System.out.println(req.getParameter("theme_display_status="+theme_display_status));
				

				InputStream in = req.getPart("theme_pic").getInputStream();
				byte[] theme_pic = null;
				if (session.getAttribute("theme_pic") == null) {
					if (in.available() == 0) {
						ForumService ForumSrc = new ForumService();
						ForumVO forumVO = ForumSrc.getOneTheme(sq_theme_id);
						theme_pic = forumVO.getTheme_pic();
					} else {
						theme_pic = new byte[in.available()];
						session.setAttribute("theme_pic", theme_pic);
						in.read(theme_pic);
						in.close();
					}
				} else {
					theme_pic = (byte[]) session.getAttribute("theme_pic");
					in.read(theme_pic);
					in.close();
				}


				ForumVO forumVO = new ForumVO();
				forumVO.setSq_theme_id(sq_theme_id);
				forumVO.setSq_member_id(sq_member_id);
				forumVO.setTheme_name(theme_name);
				forumVO.setTheme_detial(theme_detial);
				forumVO.setTheme_pic(theme_pic);
				forumVO.setTheme_display_status(theme_display_status);
				
//				System.out.println("forum-----------");
//				System.out.println("sq_theme_id=" + sq_theme_id);
//				System.out.println("sq_member_id=" + sq_member_id);
//				System.out.println("theme_name=" + theme_name);
//				System.out.println("theme_detial=" + theme_detial);
//				System.out.println("theme_pic=" + theme_pic);
//				System.out.println("theme_display_status=" + theme_display_status);
				
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("updateListOne", forumVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/forum/updateListOne.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				ForumService forumSvc = new ForumService();
				forumVO = forumSvc.updateTheme(sq_theme_id, sq_member_id, theme_name, theme_detial, theme_pic,
						theme_display_status);
				session.removeAttribute("theme_pic");
				
				
				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("updateListOne", forumVO); // 資料庫update成功後,正確的的empVO物件,存入req
				String url2 = "/back-end/forum/listAllForum.jsp";

				RequestDispatcher successView = req.getRequestDispatcher(url2); // 修改成功後,轉交listOneEmp.jsp
				successView.forward(req, res);

				
				
				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/forum/updateListOne.jsp");
				failureView.forward(req, res);
			}
		}
		

		if ("insert".equals(action)) { // 來自addEmp.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();

			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
				String sq_member_id = new String(req.getParameter("sq_member_id").trim());
				System.out.println("sq_member_id=" + sq_member_id);

				MemService memSvc = new MemService();
				MemVO memVO = memSvc.getOneMem(sq_member_id);
				req.setAttribute("memVO", memVO);

				String theme_name = req.getParameter("theme_name");
//				String theme_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				if (theme_name == null || theme_name.trim().length() == 0) {
					errorMsgs.add("主題名稱: 請勿空白");
				}
//				else if (!theme_name.trim().matches(theme_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
//					errorMsgs.add("主題名稱: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
//				}

				String theme_detial = req.getParameter("theme_detial").trim();
				if (theme_detial == null || theme_detial.trim().length() == 0) {
					errorMsgs.add("主題內容請勿空白");
				}
				System.out.println("theme_detial=" + theme_detial);

				Date theme_time = new java.sql.Date(System.currentTimeMillis());

				InputStream in = req.getPart("theme_pic").getInputStream();
				byte[] theme_pic = null;
				if (in.available() == 0) {
					if (session.getAttribute("theme_pic") == null) {
//						errorMsgs.add("未選擇上傳圖片");
						System.out.println("未選擇上傳圖片");
					} else {
						theme_pic = (byte[]) session.getAttribute("theme_pic");
						in.read(theme_pic);
						in.close();
						System.out.println("session.getAttribute(theme_pic)=" + theme_pic);
					}
				} else {
					theme_pic = new byte[in.available()];
					session.setAttribute("theme_pic", theme_pic);
					in.read(theme_pic);
					in.close();
					System.out.println("session.setAttribute(theme_pic)=" + theme_pic);
				}

				Integer reponse_sum = 0;
				Integer theme_display_status = 0;

				ForumVO forumVO = new ForumVO();

				forumVO.setSq_member_id(sq_member_id);
				forumVO.setTheme_name(theme_name);
				forumVO.setTheme_time(theme_time);
				forumVO.setReponse_sum(reponse_sum);
				forumVO.setTheme_detial(theme_detial);
				forumVO.setTheme_pic(theme_pic);
				forumVO.setTheme_display_status(theme_display_status);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("addTheme", forumVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/addTheme.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始新增資料 ***************************************/
				ForumService forumSvc = new ForumService();
				forumVO = forumSvc.addForum(sq_member_id, theme_name, theme_time, reponse_sum, theme_detial, theme_pic,
						theme_display_status);
				session.removeAttribute("theme_pic");
				/*************************** 3.新增完成,準備轉交(Send the Success view) ***********/
				req.setAttribute("listOneTheme", forumVO);
				String url2 = "/front-end/forum/listOneTheme.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2); // 新增成功後轉交listAllEmp.jsp
				successView.forward(req, res);
				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/addTheme.jsp");
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
				String sq_theme_id = new String(req.getParameter("sq_theme_id"));

				/*************************** 2.開始刪除資料 ***************************************/
				ForumService forumSvc = new ForumService();
				ForumVO forumVO = forumSvc.getOneTheme(sq_theme_id);
				forumSvc.deleteTheme(sq_theme_id);

				/*************************** 3.刪除完成,準備轉交(Send the Success view) ***********/
				String url2 = "/back-end/forum/listAllTheme.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/forum/listOneTheme.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("getMember_Theme_Display".equals(action)) { // 來自select_page.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_member_id = req.getParameter("sq_member_id");

				System.out.println("getMember_Theme_Display.getsq_member_id="+sq_member_id);
				

				/*************************** 2.開始查詢資料 *****************************************/
				ForumService forumSvc = new ForumService();
				List<ForumVO> forumVO = forumSvc.getThemebySq_member_id(sq_member_id);

				
//			System.out.println("forumVO == null=" + forumVO == null);
				if (forumVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listAllTheme.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}
				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
				req.setAttribute("listMemberTheme", forumVO); // 資料庫取出的empVO物件,存入req

				String url2 = "/front-end/forum/listMemberTheme.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url2); // 成功轉交 listOne.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/forum/listAllTheme.jsp");
				failureView.forward(req, res);
			}
		}
	}

}