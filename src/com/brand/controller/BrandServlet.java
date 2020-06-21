package com.brand.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.brand.model.*;

@MultipartConfig
public class BrandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		doPost(req,res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		
		if("insert".equals(action)) {			
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);			
			try {
				String name = req.getParameter("name");
				String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
				if(name == null || name.trim().length() == 0) {
					errorMsgs.add("名稱欄請勿空白");
				}else if(!name.trim().matches(nameReg)) {
					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
				}
				
				String phone = req.getParameter("phone");
				String phoneReg = "0\\d{1,2}-?(\\d{6,8})";
				if(phone == null || phone.trim().length() == 0) {
					errorMsgs.add("電話欄請勿空白");
				}else if(!phone.trim().matches(phoneReg)) {
					errorMsgs.add("請輸入正確格式的號碼");
				}
				
				String address = req.getParameter("address");
				String addressReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9)]+$";
				if(address == null || address.trim().length() == 0) {
					errorMsgs.add("地址欄請勿空白");
				}else if(!address.trim().matches(addressReg)) {
					errorMsgs.add("地址只能輸入中、英文字母和數字");
				}
				
				Part part = req.getPart("sign");
				InputStream in = part.getInputStream();
				byte[] pic = null;			
				if(part.getSize()==0) {
					if(session.getAttribute("pic") == null) {
						errorMsgs.add("請上傳圖片");
					}else {
						pic = (byte[])session.getAttribute("pic");
						in.read(pic);
						in.close();
					}
				}else {				
					pic = new byte[in.available()];
					session.setAttribute("pic",pic);
					in.read(pic);
					in.close();
				}
				
				String detail = req.getParameter("detail");
				if(detail == null) {
					errorMsgs.add("介紹欄位請勿空白");
				}				
				
				BrandVO brandVO = new BrandVO();
				brandVO.setBrand_name(name);
				brandVO.setBrand_phone(phone);
				brandVO.setBrand_sign(pic);
				brandVO.setBrand_address(address);
				brandVO.setBrand_detail(detail);
				
				if (!errorMsgs.isEmpty()) {			
					req.setAttribute("brandVO", brandVO); 
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/BrandBack/addBrand.jsp");
					failureView.forward(req, res);
					return;
				}
				
				BrandService brand = new BrandService();
				brandVO = brand.addBrand(name, phone, address, pic, detail);
				session.removeAttribute("pic");
				
				String url = "/back-end/BrandBack/BrandBack.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher fail = req.getRequestDispatcher("/back-end/BrandBack/addBrand.jsp");
				fail.forward(req, res);
			}
		}
		
		if("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_brand_id = new String(req.getParameter("sq_brand_id"));
				BrandService brandService = new BrandService();
				brandService.deleteBrand(sq_brand_id);
				
				String url = "/back-end/BrandBack/BrandBack.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("刪除資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/BrandBack/BrandBack.jsp");
				failureView.forward(req, res);
			}
		}
		
		if("getOne".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_brand_id = req.getParameter("sq_brand_id");
				String idReg = "^52\\d{4}$";
				if(!sq_brand_id.trim().matches(idReg)){
					errorMsgs.add("密碼格式不正確");
				}
				BrandService brandService = new BrandService();
				BrandVO brandVO = brandService.getOneBrand(sq_brand_id);
				if(brandVO == null) {
					errorMsgs.add("查無資料");
				}			
				
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("sq_brand_id", sq_brand_id); 
					RequestDispatcher fail = req
							.getRequestDispatcher("/back-end/BrandBack/noData.jsp");
					fail.forward(req, res);
					return;
				}
				
				req.setAttribute("brandVO", brandVO);
				String url = "/back-end/BrandBack/getOneBrand.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("查詢失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/BrandBack/BrandBack.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("getOneForUpdate".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String sq_brand_id = req.getParameter("sq_brand_id");				
				BrandService brandService = new BrandService();
				BrandVO brandVO = brandService.getOneBrand(sq_brand_id);
				req.setAttribute("brandVO", brandVO);         
				String url = "/back-end/BrandBack/update.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);

			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/BrandBack/BrandBack.jsp");
				failureView.forward(req, res);
			}
		}
		
		if("update".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_brand_id = req.getParameter("sq_brand_id");
				
				String name = req.getParameter("name");
				String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
				if(name == null || name.trim().length() == 0) {
					errorMsgs.add("名稱欄請勿空白");
				}else if(!name.trim().matches(nameReg)) {
					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
				}
				
				String phone = req.getParameter("phone");
				String phoneReg = "0\\d{1,2}-?(\\d{6,8})";
				if(phone == null || phone.trim().length() == 0) {
					errorMsgs.add("電話欄請勿空白");
				}else if(!phone.trim().matches(phoneReg)) {
					errorMsgs.add("請輸入正確格式的號碼");
				}
				
				String address = req.getParameter("address");
				String addressReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9)]+$";
				if(address == null || address.trim().length() == 0) {
					errorMsgs.add("地址欄請勿空白");
				}else if(!address.trim().matches(addressReg)) {
					errorMsgs.add("地址只能輸入中、英文字母和數字");
				}		
				
				Part part = req.getPart("sign");
				byte[] pic = null;
				if(part.getSize() == 0) {
					BrandService brandSrc = new BrandService();
					BrandVO brandVO = brandSrc.getOneBrand(sq_brand_id);
					pic = brandVO.getBrand_sign();
				}else {
					InputStream in = part.getInputStream();
					pic = new byte[in.available()];
					in.read(pic);
					in.close();
				}
				
				String brand_detail = req.getParameter("detail");
				
				BrandVO brandVO = new BrandVO();
				brandVO.setSq_brand_id(sq_brand_id);
				brandVO.setBrand_name(name);
				brandVO.setBrand_phone(phone);
				brandVO.setBrand_address(address);
				brandVO.setBrand_sign(pic);
				brandVO.setBrand_detail(brand_detail);
				
				BrandService brandservice = new BrandService();
				brandservice.updateBrand(sq_brand_id, name, phone, address, pic, brand_detail);
				
				String url = "/back-end/BrandBack/BrandBack.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher fail = req
						.getRequestDispatcher("/back-end/BrandBack/BrandBack.jsp");
				fail.forward(req, res);
			}
		}
	}
}
