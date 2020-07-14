package com.bike.store.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bike.store.model.BikeStoreService;
import com.bike.store.model.BikeStoreVO;
import com.bike.type.model.BikeTypeService;
import com.bike.type.model.BikeTypeVO;
import com.mail.MailService;

@MultipartConfig
public class BikeStoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if ("insert".equals(action)) {

			Map<String, String> errorMsgs = new HashMap<>();

			String bike_store_name = request.getParameter("bike_store_name");
			String phone = request.getParameter("phone");
			String store_email = request.getParameter("store_email");
			String location = request.getParameter("location");
			String area = request.getParameter("area");
			String store_opentime = request.getParameter("store_opentime");
			Double store_longitute = new Double(request.getParameter("store_longitute"));
			Double store_latitute = new Double(request.getParameter("store_latitute"));
			Integer store_status = new Integer(request.getParameter("store_status"));
			Part store_photo = request.getPart("store_photo");
		

			String NameReg = "^[(\u4e00-\u9fa5)(\\w)]{2,6}$";
			if (bike_store_name == null || bike_store_name.trim().length() == 0) {
				errorMsgs.put("bike_store_name", "店家名稱請勿空白");
			} else if (!bike_store_name.trim().matches(NameReg)) {
				errorMsgs.put("bike_type_name", "店家名稱請輸入正確格式");
			}
			;
			// store_email
			if (store_email == null || store_email.trim().length() == 0) {
				errorMsgs.put("store_email", "電子信箱請勿空白");
			}
			// phone
			if (phone == null || phone.trim().length() == 0) {
				errorMsgs.put("phone", "電話請勿空白");
			}

			// location
			if (location == null || location.trim().length() == 0) {
				errorMsgs.put("location", "地址請勿空白");
			}
			
			// location
			if (store_opentime == null || store_opentime.trim().length() == 0) {
				errorMsgs.put("store_opentime", "營業時間請勿空白");
			}

			// bike_photo
			InputStream in = null;
			byte[] sf_photo_b = null;

			if (store_photo != null) {
				in = store_photo.getInputStream();
				sf_photo_b = new byte[in.available()];
				in.read(sf_photo_b);
				in.close();
			}else {
				errorMsgs.put("store_photo", "請上傳照片");
			}
			
			if (!errorMsgs.isEmpty()) {
				String url = "/back-end/bikeStore/bikeStoreListAll.jsp";
				RequestDispatcher failureView = request.getRequestDispatcher(url);
				failureView.forward(request, response);
				return; // 程式中斷
			}
			
			//產生帳號密碼
			String account  = rand();
			String password  = rand();
			//存入VO  存入資料庫
			BikeStoreVO BikeStoreVO = new BikeStoreVO();
			BikeStoreVO.setBike_store_name(bike_store_name);
			BikeStoreVO.setStore_account(account);
			BikeStoreVO.setStore_password(password);
			BikeStoreVO.setPhone(phone);
			BikeStoreVO.setStore_email(store_email);
			BikeStoreVO.setLocation(location);
			BikeStoreVO.setStore_longitute(store_longitute);
			BikeStoreVO.setStore_latitute(store_latitute);
			BikeStoreVO.setStore_status(store_status);
			BikeStoreVO.setStore_photo(sf_photo_b);
			
			BikeStoreService BikeStoreSvc = new BikeStoreService();
			BikeStoreSvc.insert(BikeStoreVO);
			//寄信
			email(bike_store_name , account , password , store_email);
			//回傳到店家listAll
			// 新增完成 重導葉面
			String url = request.getContextPath() + "/back-end/bikeStore/addBikeStore.jsp";
			response.sendRedirect(url);

		}
		if ("getOne_For_Display".equals(action)) {
			// -- 請求參數
			String sq_bike_store_id = request.getParameter("sq_bike_store_id");

			BikeStoreService BikeStoreService = new BikeStoreService();
			BikeStoreVO BikeStoreVO = BikeStoreService.findByPrimaryKey(sq_bike_store_id);
			request.setAttribute("BikeStoreVO", BikeStoreVO);
			RequestDispatcher successView = request.getRequestDispatcher("/back-end/bikeStore/listOneBikeStore.jsp");
			successView.forward(request, response);
		}
		if ("getOne_For_Update".equals(action)) {
			String sq_bike_store_id = request.getParameter("sq_bike_store_id");
			String bike_store_name = request.getParameter("bike_store_name");
			String store_account = request.getParameter("store_account");
			String phone = request.getParameter("phone");
			String store_email = request.getParameter("store_email");
			String location = request.getParameter("location");
			String store_opentime = request.getParameter("store_opentime");
			String store_longitute = request.getParameter("store_longitute");
			String store_latitute = request.getParameter("store_latitute");
			Integer store_status = new Integer(request.getParameter("store_status"));
			Part store_photo = request.getPart("store_photo");
			InputStream in = null;
			byte[] sf_photo_b = null;

			if (store_photo != null) {
				in = store_photo.getInputStream();
				sf_photo_b = new byte[in.available()];
				in.read(sf_photo_b);
				in.close();
			}

			// bike_type_name
			BikeStoreService BikeStoreSvc = new BikeStoreService();
			BikeStoreVO BikeStoreVO = BikeStoreSvc.findByPrimaryKey(sq_bike_store_id);
			BikeStoreVO.setBike_store_name(bike_store_name);
			BikeStoreVO.setPhone(phone);
			BikeStoreVO.setStore_email(store_email);
			BikeStoreVO.setLocation(location);
			BikeStoreVO.setStore_opentime(store_opentime);
			BikeStoreVO.setStore_status(store_status);
			if (in != null) {
				BikeStoreVO.setStore_photo(sf_photo_b);
			}

			// 進行修改
			BikeStoreSvc.update(BikeStoreVO);

			// 修改完成 重導葉面
			String url = request.getContextPath() + "/back-end/bikeStore/bikeStoreListAll.jsp";
			response.sendRedirect(url);
		}

	}
	
	public void email(String sf_name,String sf_account ,String sf_password ,String sf_email ) {
		
		// 設定傳送郵件:至收信人的Email信箱,Email主旨,Email內容
		MailService MailSvc= new MailService();
//		至收信人的Email信箱,Email主旨,Email內容
	     String subject = "PAPAGO 租車店家 帳號密碼";
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
