package com.staff.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mail.MailService;
import com.member.model.MemService;
import com.member.model.MemVO;
import com.staff.model.StaffService;
import com.staff.model.StaffVO;

import redis.clients.jedis.Jedis;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)

public class StaffServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		
		
//		if ("getOne_For_Display".equals(action)) { // 來自select_page.jsp的請求
//
//			List<String> errorMsgs = new LinkedList<String>();
//			// Store this set in the request scope, in case we need to
//			// send the ErrorPage view.
//			req.setAttribute("errorMsgs", errorMsgs);
//
//			try {
//				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
//				String str = req.getParameter("sq_staff_id");
//				if (str == null || (str.trim()).length() == 0) {
//					errorMsgs.add("請輸入員工編號");
//				}
//				// Send the use back to the form, if there were errors
//				if (!errorMsgs.isEmpty()) {
//					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
//					failureView.forward(req, res);
//					return;// 程式中斷
//				}
//
//				String sq_staff_id = null;
//				try {
//					sq_staff_id = new String(str);
//				} catch (Exception e) {
//					errorMsgs.add("員工編號格式不正確");
//				}
//				// Send the use back to the form, if there were errors
//				if (!errorMsgs.isEmpty()) {
//					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
//					failureView.forward(req, res);
//					return;// 程式中斷
//				}
//
//				/*************************** 2.開始查詢資料 *****************************************/
//				StaffService staffSvc = new StaffService();
//				StaffVO staffVO = staffSvc.getOneStaff(sq_staff_id);
//				if (staffVO == null) {
//					errorMsgs.add("查無資料");
//				}
//				// Send the use back to the form, if there were errors
//				if (!errorMsgs.isEmpty()) {
//					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
//					failureView.forward(req, res);
//					return;// 程式中斷
//				}
//
//				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
//				req.setAttribute("staffVO", staffVO); // 資料庫取出的staffVO物件,存入req
//				String url = "/back-end/staff/listOneStaff.jsp";	
//				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
//				successView.forward(req, res);
//
//				/*************************** 其他可能的錯誤處理 *************************************/
//			} catch (Exception e) {
//				errorMsgs.add("無法取得資料:" + e.getMessage());
//				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/selectStaff_page.jsp");
//				failureView.forward(req, res);
//			}
//		}

		if ("getOne_For_Update".equals(action)) { // 來自listAllEmp.jsp的請求
			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sq_staff_id =req.getParameter("sq_staff_id");
				System.out.println(sq_staff_id);
				/*************************** 2.開始查詢資料 ****************************************/
				StaffService staffSvc = new StaffService();
				StaffVO staffVO = staffSvc.findByPrimaryKey(sq_staff_id);
				System.out.println(staffVO.getSq_staff_id());
				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("StaffVO", staffVO); // 資料庫取出的empVO物件,存入req
				String url = "/back-end/staff/listOneStaff.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/listOneStaff.jsp");
				failureView.forward(req, res);
			}
		}

		if ("update".contentEquals(action)) {
			
			Map<String,String> errorMsgs = new HashMap<>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String sq_staff_id = req.getParameter("sq_staff_id");
				String sf_name = req.getParameter("sf_name");
				Integer sf_status = new Integer(req.getParameter("sf_status"));
				String sf_email = req.getParameter("sf_email");
				String sf_address = req.getParameter("sf_address");
				String sf_phone = req.getParameter("sf_phone");
				Part sf_photo = req.getPart("sf_photo");
	
				String sf_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				// {2,10} 此程式為UTF-8編碼 中文字長度為3個btye? 若輸入4個字(12byte)則超過10 會產生錯誤(前端攔不住此錯誤)
				if (sf_name == null || sf_name.trim().length() == 0) {
					errorMsgs.put("sf_name","姓名: 請勿空白");
				} else if (!sf_name.trim().matches(sf_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.put("sf_name","姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
				}
				
				if (sf_phone == null || sf_phone.trim().length() == 0) {
					errorMsgs.put("sf_phone", "電話請勿空白");
				}
				
				if (sf_email == null || sf_email.trim().length() == 0) {
					errorMsgs.put("sf_email", "請輸入email");
				}


				if (sf_address == null || sf_address.trim().length() == 0) {
					errorMsgs.put("sf_address", "請輸入聯絡地址");
				}
					
				InputStream in = sf_photo.getInputStream();
				byte[] sf_photo_b = null;
				sf_photo_b = new byte[in.available()];
				in.read(sf_photo_b);
				in.close();

				StaffService staffSvc = new StaffService();
				StaffVO staffVO = staffSvc.findByPrimaryKey(sq_staff_id);

				staffVO.setSf_name(sf_name);
				staffVO.setSf_status(sf_status);
				staffVO.setSf_email(sf_email);
				staffVO.setSf_phone(sf_phone);
				if (in.available() != 0) {
					staffVO.setSf_photo(sf_photo_b);
					}
				
				staffVO.setSf_address(sf_address);

				
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("update_staff_input", staffVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("<%=request.getContextPath()%>/back-end/staff/update_staff_input.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				
				staffSvc.updateStaff(staffVO);
				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				String url = req.getContextPath()+"/back-end/staff/listAllStaff.jsp";
				res.sendRedirect(url);
				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/listAllStaff.jsp");
				failureView.forward(req, res);
			}
		}
		if ("insert".equals(action)) { // 來自addEmp.jsp的請求

			Map<String,String> errorMsgs = new HashMap<>();

			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
				String sf_name = req.getParameter("sf_name");
				Integer sf_status = new Integer(req.getParameter("sf_status"));
				String sf_email = req.getParameter("sf_email");
				String sf_address = req.getParameter("sf_address");
				String sf_phone = req.getParameter("sf_phone");
				Part sf_photo = req.getPart("sf_photo");
				String sf_account  = rand();
				String sf_password = rand();
				
				
				String sf_nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,16}$";
				// {2,10} 此程式為UTF-8編碼 中文字長度為3個btye? 若輸入4個字(12byte)則超過10 會產生錯誤(前端攔不住此錯誤)
				if (sf_name == null || sf_name.trim().length() == 0) {
					errorMsgs.put("sf_name","姓名: 請勿空白");
				} else if (!sf_name.trim().matches(sf_nameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.put("sf_name","姓名: 只能是中、英文字母、數字和_ , 且長度必需在2到16之間");
				}
				
				if (sf_phone == null || sf_phone.trim().length() == 0) {
					errorMsgs.put("sf_phone", "電話請勿空白");
				}
				
				if (sf_email == null || sf_email.trim().length() == 0) {
					errorMsgs.put("sf_email", "請輸入email");
				}


				if (sf_address == null || sf_address.trim().length() == 0) {
					errorMsgs.put("sf_address", "請輸入聯絡地址");
				}
					
				InputStream in = sf_photo.getInputStream();
				byte[] sf_photo_b = null;
				if (in.available() == 0) {
					errorMsgs.put("sf_photo", "頭相未選擇上傳圖片");
					}

				sf_photo_b = new byte[in.available()];
				in.read(sf_photo_b);
				in.close();


//				String sf_status = req.getParameter("sf_status");
//				String sf_email = req.getParameter("sf_email");
//				String sf_address = req.getParameter("sf_address");
//				String sf_phone = req.getParameter("sf_phone");
//				Part sf_photo = req.getPart("sf_photo");



				StaffVO staffVO = new StaffVO();

				staffVO.setSf_account(sf_account);
				staffVO.setSf_password(sf_password);
				staffVO.setSf_name(sf_name);
				staffVO.setSf_status(sf_status);
				staffVO.setSf_email(sf_email);
				staffVO.setSf_email(sf_email);
				staffVO.setSf_phone(sf_phone);
				staffVO.setSf_photo(sf_photo_b);
				staffVO.setSf_address(sf_address);
				
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/addStaff.jsp");
					failureView.forward(req, res);								
					return; // 程式中斷
				}
				
				/*************************** 2.開始新增資料 *****************************************/
				StaffService staffSvc = new StaffService();
				staffSvc.addStaff(staffVO);
				//新增成功 寄信
				email(sf_name,sf_account,sf_password,sf_email);
				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				String url = req.getContextPath()+"/back-end/staff/listAllStaff.jsp";
				res.sendRedirect(url);

				/*************************** 其他可能的錯誤處理 *************************************/

			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/staff/addStaff.jsp");
				failureView.forward(req, res);
			}
		}

	}

	public void email(String sf_name,String sf_account ,String sf_password ,String sf_email ) {
		
		// 設定傳送郵件:至收信人的Email信箱,Email主旨,Email內容
		MailService MailSvc= new MailService();
//		至收信人的Email信箱,Email主旨,Email內容
	     String subject = "PAPAGO 員工 帳號密碼";
	     String dispatcher = sf_name +"您的 : 帳號 : "+sf_account+" 密碼 : "+sf_password;
	    		 			;
		MailSvc.sendMail(sf_email, subject,dispatcher) ;
	}

	public String rand() {
		StringBuilder sb = new StringBuilder();
		for (int i = 1; i <= 8; i++) {
			int condition = (int) (Math.random() * 3) + 1;
			switch (condition) {
			case 1:
				char c1 = (char) ((int) (Math.random() * 26) + 65);
				sb.append(c1);
				break;
			case 2:
				char c2 = (char) ((int) (Math.random() * 26) + 97);
				sb.append(c2);
				break;
			case 3:
				sb.append((int) (Math.random() * 10));
			}
		}
		return sb.toString();
	}
}