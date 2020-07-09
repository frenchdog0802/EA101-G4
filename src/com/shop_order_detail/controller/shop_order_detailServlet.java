package com.shop_order_detail.controller;

import javax.servlet.annotation.MultipartConfig;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.json.JSONArray;
import org.json.JSONObject;

import com.shop_order_detail.model.*;
import com.shop_product.model.*;


@MultipartConfig
public class shop_order_detailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		res.setContentType("text/html;charset=UTF-8");
		
		if("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			try {
				String sq_product_id = req.getParameter("sq_product_id");
				Shop_productService productSvc = new Shop_productService();
				productSvc.deleteProduct(sq_product_id);
				
				String url = "/back_end/Shop_product/allShop_product.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("刪除失敗" + e.getMessage());
				e.printStackTrace();
				RequestDispatcher fail = req.getRequestDispatcher("/back_end/Shop_product/allShop_product.jsp");
				fail.forward(req, res);
			}
		}
		if("getById".equals(action)) {
	        PrintWriter out = res.getWriter();
			String id = req.getParameter("order_id");
			Shop_order_detailService detailSvc = new Shop_order_detailService();
			List<Shop_order_detailVO> list	= detailSvc.getOneOrder_detail(id);
			Shop_productService prodcutSvc = new Shop_productService();
			JSONArray json = new JSONArray();
			JSONObject jsonList = new JSONObject();
			for(Shop_order_detailVO vo : list) {
				jsonList.put("name", prodcutSvc.getOneById(vo.getSq_product_id()).getProduct_name());
				jsonList.put("price", vo.getProduct_price());
				System.out.println(vo.getProduct_price());
				jsonList.put("sum", vo.getOrder_sum());
				json.put(jsonList);
			}
			out.print(json);
		}		
		if ("getOneForUpdate".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String sq_product_id = req.getParameter("sq_product_id");	
				Shop_productService productSvc = new Shop_productService();
				Shop_productVO productVO = productSvc.getOneById(sq_product_id);
				
				req.setAttribute("productVO", productVO);         
				String url = "/back_end/Shop_product/updateProduct.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);

			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				e.printStackTrace();
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back_end/Shop_product/allShop_product.jsp");
				failureView.forward(req, res);
			}
		}
//		if("updateProduct".equals(action)) {
//			List<String> errorMsgs = new LinkedList<String>();
//			req.setAttribute("errorMsgs", errorMsgs);
//			try {
//				String sq_product_id = req.getParameter("sq_product_id");
//				String name = req.getParameter("name");
//				String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
//				if(name == null || name.trim().length() == 0) {
//					errorMsgs.add("名稱欄請勿空白");
//				}else if(!name.trim().matches(nameReg)) {
//					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
//				}
//				String kind_name = req.getParameter("kind_name");
//				String brand = req.getParameter("brand");
//				
//				Integer price = Integer.parseInt(req.getParameter("price").trim());
//				String pricestr = String.valueOf(price);
//				String priceReg = "^(0|[1-9][0-9]*)$";
//				if(pricestr == null || pricestr.trim().length() == 0) {
//					errorMsgs.add("價格欄請勿空白");
//				}else if(!pricestr.trim().matches(priceReg)){
//					errorMsgs.add("價格欄位請輸入數字");
//				}
//
//				Part part = req.getPart("pic");
//				byte[] pic = null;
//				if(part.getSize() == 0) {
//					BrandService brandSrc = new BrandService();
//					BrandVO brandVO = brandSrc.getOneBrand(sq_product_id);
//					pic = brandVO.getBrand_sign();
//				}else {
//					InputStream in = part.getInputStream();
//					pic = new byte[in.available()];
//					in.read(pic);
//					in.close();
//				}
//								
//				java.sql.Date addDate = null;
//				try {
//					addDate = java.sql.Date.valueOf(req.getParameter("addDate").trim());
//				} catch (IllegalArgumentException e) {
//					addDate = new java.sql.Date(System.currentTimeMillis());
//					errorMsgs.add("gg");
//				}
//				String detail = req.getParameter("detail");
//				if(detail == null || detail.trim().length() == 0) {
//					errorMsgs.add("名稱欄請勿空白");
//				}else if(!detail.trim().matches(nameReg)) {
//					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
//				}
//				String material = req.getParameter("material");
//				if(material == null || material.trim().length() == 0) {
//					errorMsgs.add("名稱欄請勿空白");
//				}else if(!material.trim().matches(nameReg)) {
//					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
//				}
//				Integer status = Integer.parseInt(req.getParameter("status"));
//				System.out.println(status);
//				
//				Shop_productVO productVO = new Shop_productVO();
//				productVO.setSq_product_id(sq_product_id);
//				productVO.setProduct_name(name);
//				productVO.setProduct_kind_name(kind_name);
//				productVO.setSq_brand_id(brand);
//				productVO.setProduct_price(price);
//				productVO.setProduct_pic(pic);
//				productVO.setAdd_date(addDate);
//				productVO.setProduct_detail(detail);
//				productVO.setProduct_material(material);
//				productVO.setProduct_status(status);
//				
//				Shop_productService product = new Shop_productService();
//				productVO = product.updateShop_product(sq_product_id, brand, kind_name, name, price, pic, detail, addDate, material, status);
//				session.removeAttribute("pic");
//				
//				String url = "/back_end/Shop_product/allShop_product.jsp";
//				RequestDispatcher success = req.getRequestDispatcher(url);
//				success.forward(req, res);
//				
//			}catch(Exception e){
//				errorMsgs.add(e.getMessage());
//				e.printStackTrace();
//				RequestDispatcher fail = req.getRequestDispatcher("/back_end/Shop_product/updateProduct.jsp");
//				fail.forward(req, res);
//			}
//		}
	}
}

