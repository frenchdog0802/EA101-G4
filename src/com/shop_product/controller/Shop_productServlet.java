package com.shop_product.controller;

import javax.servlet.annotation.MultipartConfig;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.json.JSONArray;
import org.json.JSONObject;

import com.brand.model.*;
import com.shop_product.model.*;
import com.product_stock.model.*;

@MultipartConfig
public class Shop_productServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		HttpSession session = req.getSession();
		res.setContentType("text/html;charset=UTF-8");
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
				
				String kind_name = req.getParameter("kind_name");
				String brand = req.getParameter("brand");
				
				Integer price = Integer.parseInt(req.getParameter("price").trim());
				String pricestr = String.valueOf(price);
				String priceReg = "^(0|[1-9][0-9]*)$";
				if(pricestr == null || pricestr.trim().length() == 0) {
					errorMsgs.add("價格欄請勿空白");
				}else if(!pricestr.trim().matches(priceReg)){
					errorMsgs.add("價格欄位請輸入數字");
				}
				
				Part part = req.getPart("pic");
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
					session.setAttribute("pic", pic);
					in.read(pic);
					in.close();
				}
				
				String detail = req.getParameter("detail");
				
				String material = req.getParameter("material");
				
				
				Shop_productVO productVO = new Shop_productVO();
				productVO.setProduct_name(name);
				productVO.setProduct_kind_name(kind_name);
				productVO.setSq_brand_id(brand);
				productVO.setProduct_price(price);
				productVO.setProduct_pic(pic);
				productVO.setProduct_detail(detail);
				productVO.setProduct_material(material);
				
				if (!errorMsgs.isEmpty()) {			
					req.setAttribute("productVO", productVO); 
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/Shop_product/addProduct.jsp");
					failureView.forward(req, res);
					return;
				}
				
				Shop_productService product = new Shop_productService();
				productVO = product.addShop_product(brand, kind_name, name, price, pic, detail, material);
				session.removeAttribute("pic");
				
				String url = "/back_end/Shop_product/allShop_product.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e){
				errorMsgs.add(e.getMessage());
				e.printStackTrace();
				RequestDispatcher fail = req.getRequestDispatcher("/back-end/Shop_product/addProduct.jsp");
				fail.forward(req, res);
			}
		}
		if("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			try {
				String sq_product_id = req.getParameter("sq_product_id");
				Shop_productService productSvc = new Shop_productService();
				productSvc.deleteProduct(sq_product_id);
				
				String url = "/back-end/Shop_product/allShop_product.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("刪除失敗" + e.getMessage());
				e.printStackTrace();
				RequestDispatcher fail = req.getRequestDispatcher("/back-end/Shop_product/allShop_product.jsp");
				fail.forward(req, res);
			}
		}
		if("getOneById".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_product_id = req.getParameter("sq_product_id");
				Shop_productService productSvc = new Shop_productService();
				Shop_productVO productVO = productSvc.getOneById(sq_product_id);
				if(productVO == null) {
					errorMsgs.add("查無此資料");
				}
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("sq_product_id", sq_product_id); 
					RequestDispatcher fail = req
							.getRequestDispatcher("/back-end/BrandBack/noData.jsp");
					fail.forward(req, res);
					return;
				}
				req.setAttribute("productVO", productVO);
				String url = "/back-end/Shop_product/getProduct.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
			}catch(Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				e.printStackTrace();
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/Shop_product/allShop_product.jsp");
				failureView.forward(req, res);
			}
		}
		if("getByKindName".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String product_kind_name = req.getParameter("product_kind_name");
				Shop_productService productSvc = new Shop_productService();
				List<Shop_productVO> list = productSvc.findByKindName(product_kind_name);
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("product_kind_name", product_kind_name); 
					RequestDispatcher fail = req.getRequestDispatcher("/back_end/BrandBack/noData.jsp");
					fail.forward(req, res);
					return;
				}
				
				req.setAttribute("product_kind_name", product_kind_name);
				String url = "/back-end/Shop_product/getProductBykind.jsp";				
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				e.printStackTrace();
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/Shop_product/allShop_product.jsp");
				failureView.forward(req, res);
			}
		}
		if ("getOneForUpdate".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String sq_product_id = req.getParameter("sq_product_id");	
				Shop_productService productSvc = new Shop_productService();
				Shop_productVO productVO = productSvc.getOneById(sq_product_id);
				
				req.setAttribute("productVO", productVO);         
				String url = "/back-end/Shop_product/updateProduct.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);

			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				e.printStackTrace();
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/Shop_product/allShop_product.jsp");
				failureView.forward(req, res);
			}
		}
		if("updateProduct".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try {
				String sq_product_id = req.getParameter("sq_product_id");
				String name = req.getParameter("name");
				String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
				if(name == null || name.trim().length() == 0) {
					errorMsgs.add("名稱欄請勿空白");
				}else if(!name.trim().matches(nameReg)) {
					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
				}
				String kind_name = req.getParameter("kind_name");
				String brand = req.getParameter("brand");
				
				Integer price = Integer.parseInt(req.getParameter("price").trim());
				String pricestr = String.valueOf(price);
				String priceReg = "^(0|[1-9][0-9]*)$";
				if(pricestr == null || pricestr.trim().length() == 0) {
					errorMsgs.add("價格欄請勿空白");
				}else if(!pricestr.trim().matches(priceReg)){
					errorMsgs.add("價格欄位請輸入數字");
				}

				Part part = req.getPart("pic");
				byte[] pic = null;
				if(part.getSize() == 0) {
					BrandService brandSrc = new BrandService();
					BrandVO brandVO = brandSrc.getOneBrand(sq_product_id);
					pic = brandVO.getBrand_sign();
				}else {
					InputStream in = part.getInputStream();
					pic = new byte[in.available()];
					in.read(pic);
					in.close();
				}
								
				java.sql.Date addDate = null;
				try {
					addDate = java.sql.Date.valueOf(req.getParameter("addDate").trim());
				} catch (IllegalArgumentException e) {
					addDate = new java.sql.Date(System.currentTimeMillis());
					errorMsgs.add("gg");
				}
				String detail = req.getParameter("detail");
				if(detail == null || detail.trim().length() == 0) {
					errorMsgs.add("名稱欄請勿空白");
				}else if(!detail.trim().matches(nameReg)) {
					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
				}
				String material = req.getParameter("material");
				if(material == null || material.trim().length() == 0) {
					errorMsgs.add("名稱欄請勿空白");
				}else if(!material.trim().matches(nameReg)) {
					errorMsgs.add("名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
				}
				Integer status = Integer.parseInt(req.getParameter("status"));
				System.out.println(status);
				
				Shop_productVO productVO = new Shop_productVO();
				productVO.setSq_product_id(sq_product_id);
				productVO.setProduct_name(name);
				productVO.setProduct_kind_name(kind_name);
				productVO.setSq_brand_id(brand);
				productVO.setProduct_price(price);
				productVO.setProduct_pic(pic);
				productVO.setAdd_date(addDate);
				productVO.setProduct_detail(detail);
				productVO.setProduct_material(material);
				productVO.setProduct_status(status);
				
				Shop_productService product = new Shop_productService();
				productVO = product.updateShop_product(sq_product_id, brand, kind_name, name, price, pic, detail, addDate, material, status);
				session.removeAttribute("pic");
				
				String url = "/back-end/Shop_product/allShop_product.jsp";
				RequestDispatcher success = req.getRequestDispatcher(url);
				success.forward(req, res);
				
			}catch(Exception e){
				errorMsgs.add(e.getMessage());
				e.printStackTrace();
				RequestDispatcher fail = req.getRequestDispatcher("/back-end/Shop_product/updateProduct.jsp");
				fail.forward(req, res);
			}
		}
		System.out.println(action);
		if("getByKind".equals(action)) {
	        PrintWriter out = res.getWriter();
			String kind = req.getParameter("product_kind_name");
			Shop_productService productSvc = new Shop_productService();
			List<Shop_productVO> list = productSvc.findByKindName(kind);
			JSONArray json = new JSONArray();
			for(Shop_productVO vo: list){
				JSONObject jsonList = new JSONObject();
				System.out.println( vo.getProduct_name());
				jsonList.put("name", vo.getProduct_name());
				jsonList.put("id", vo.getSq_product_id());
				jsonList.put("price", vo.getProduct_price());
				json.put(jsonList);
			}
			out.print(json);
		}
		if ("listEmps_ByCompositeQuery".equals(action)) { // 來自select_page.jsp的複合查詢請求
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				
				/***************************1.將輸入資料轉為Map**********************************/ 
				//採用Map<String,String[]> getParameterMap()的方法 
				//注意:an immutable java.util.Map 
				//Map<String, String[]> map = req.getParameterMap();
				Map<String, String[]> map = (Map<String, String[]>)session.getAttribute("map");
				PrintWriter out = res.getWriter();
				if (req.getParameter("whichPage") == null){
					HashMap<String, String[]> map1 = new HashMap<String, String[]>(req.getParameterMap());
					session.setAttribute("map",map1);
					map = map1;
				}
				/***************************2.開始複合查詢***************************************/
				Shop_productService productSvc = new Shop_productService();
				List<Shop_productVO> list  = productSvc.getAll(map);
				Iterator<Shop_productVO> iterator = list.iterator();
				for(String key : map.keySet()){
					String value = map.get(key)[0];
					if(value != null && value.trim().length() != 0) {
						if("product_price".equals(key)) {
							if("5000".equals(value)) {
								while (iterator.hasNext()) {
									Shop_productVO vo = iterator.next();
									if(vo.getProduct_price() < 5000) {
										iterator.remove();
									}
								}
							}else if("1000".equals(value)) {
								while (iterator.hasNext()) {
									Shop_productVO vo = iterator.next();
									if(1000 > vo.getProduct_price() || vo.getProduct_price() >= 5000) {
										iterator.remove();
									}
								}
							}else if("500".equals(value)) {
								while (iterator.hasNext()) {
									Shop_productVO vo = iterator.next();
									if(500 > vo.getProduct_price() || vo.getProduct_price() >= 1000) {
										iterator.remove();
									}
								}
							}else if("100".equals(value)) {
								while (iterator.hasNext()) {
									Shop_productVO vo = iterator.next();
									if(vo.getProduct_price() >= 500) {
										iterator.remove();
									}
								}
							}	
						}
					}
				}
				/***************************3.查詢完成,準備轉交(Send the Success view)************/
				JSONArray json = new JSONArray();
				for(Shop_productVO vo: list){
					JSONObject jsonList = new JSONObject();
					jsonList.put("name", vo.getProduct_name());
					jsonList.put("id", vo.getSq_product_id());
					jsonList.put("price", vo.getProduct_price());
					json.put(jsonList);
				}
				out.print(json);
				
				/***************************其他可能的錯誤處理**********************************/
			} catch (Exception e) {
				e.printStackTrace();
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/select_page.jsp");
				failureView.forward(req, res);
			}
		}
	}
}
