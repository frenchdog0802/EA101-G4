package com.shopping.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.shop_product.model.*;

import redis.clients.jedis.Jedis;

public class ShoppingServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("resource")
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		List<Shop_productVO> buylist = (Vector<Shop_productVO>)session.getAttribute("shoppingcar");
		String action = req.getParameter("action");
		//刪除購物車商品
		if(action.equals("DELETE")) {
			try {
				String delete = req.getParameter("del");
				int d = Integer.parseInt(delete);
				buylist.remove(d);
				String url = "/front-end/shopMall/shoppingCar.jsp";
				session.setAttribute("shoppingcar", buylist);	
				RequestDispatcher rd = req.getRequestDispatcher(url);
				rd.forward(req, res);
			}catch(Exception e){
				e.printStackTrace();
				RequestDispatcher fail = req.getRequestDispatcher("/front-end/ShopMall/ShopMall.jsp");
				fail.forward(req, res);
			}
		}
		//加入商品進購物車
		if(action.equals("ADD")) {
			try {
				Shop_productVO aproduct = getProduct(req);
				if(buylist == null) {
					buylist = new Vector<Shop_productVO>();
					buylist.add(aproduct);
				}else {
					if (buylist.contains(aproduct)) {
						Shop_productVO innerProduct = buylist.get(buylist.indexOf(aproduct));
						innerProduct.setProduct_quantity(innerProduct.getProduct_quantity() + aproduct.getProduct_quantity());
					} else {
						buylist.add(aproduct);
					}
				}
				session.setAttribute("shoppingcar", buylist);
			}catch(Exception e) {
				e.printStackTrace();
				RequestDispatcher fail = req.getRequestDispatcher("/front-end/ShopMall/ShopMall.jsp");
				fail.forward(req, res);
			}	
		}						
		//從購物車按結帳鈕進輸入資料頁面
		if(action.equals("CHECK")) {
			String total = req.getParameter("total");			
			session.setAttribute("totalPrice", total);
			String url = "/front-end/shopMall/shopPayDetail.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, res);
		}
		//進確認頁面，把資料存進redis和map
		if(action.equals("toCheck")) {
			Map<String, String> errorMsgs = new HashMap<>();
			req.setAttribute("errorMsgs", errorMsgs);				
			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");
			
			String name = req.getParameter("tname");
			String nameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
			if(name == null || name.trim().length() == 0) {
				errorMsgs.put("name", "名稱欄請勿空白");
			}else if(!name.trim().matches(nameReg)) {
				errorMsgs.put("name","名稱欄位只能是中、英文字母、數字和_,請長度必須在2到10之間");
			}
			
			String phone = req.getParameter("tphone");
			String phoneReg = "\\d{1,2}-?(\\d{6,8})";
			if(phone == null || phone.trim().length() == 0) {
				errorMsgs.put("phone", "電話欄請勿空白");
			}else if(!phone.trim().matches(phoneReg)) {
				errorMsgs.put("phone","請輸入正確格式的號碼");
			}
			
			String address = req.getParameter("taddress");
			String addressReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9)]+$";
			if(address == null || address.trim().length() == 0) {
				errorMsgs.put("address","地址欄請勿空白");
			}else if(!address.trim().matches(addressReg)) {
				errorMsgs.put("address","地址只能輸入中、英文字母和數字");
			}
			
			String email = req.getParameter("temail");
			if(email == null || email.trim().length() == 0) {
				errorMsgs.put("email","信箱欄請勿空白");
			}
			
			String paymodeN = req.getParameter("paymode");
			String paymode="";
			if(paymodeN.equals("home")) {
				paymode = "宅配到府";
			}else {
				paymode = "超商取貨";
			}
			HashMap<String, String> mapCus = new HashMap<String, String>();
			mapCus.put("name", name);
			mapCus.put("phone", phone);
			mapCus.put("address", address);
			mapCus.put("email", email);
			mapCus.put("paymode", paymode);
			
			if (!errorMsgs.isEmpty()) {			
				req.setAttribute("mapCus", mapCus); 
				RequestDispatcher failureView = req
						.getRequestDispatcher("/front-end/shopMall/shopPayDetail.jsp");
				failureView.forward(req, res);
				return;
			}
			
			jedis.hset("customer", "name" , name);
			jedis.hset("customer", "phone" , phone);
			jedis.hset("customer", "address" , address);
			jedis.hset("customer", "email" , email);
			jedis.hset("customer", "paymode" , paymode);
			jedis.close();	
			
			session.setAttribute("mapCus", mapCus);
			String url = "/front-end/shopMall/checkDetail.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, res);
		}
	}
	private Shop_productVO getProduct(HttpServletRequest req) {

		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		String quantity = req.getParameter("quantity");
		String model = req.getParameter("model");
		String color = req.getParameter("color");
		
		Shop_productVO product = new Shop_productVO();
		product.setSq_product_id(id);
		product.setProduct_name(name);
		product.setProduct_price(Integer.parseInt(price));
		product.setProduct_quantity(Integer.parseInt(quantity));
		product.setProduct_color(color);
		product.setProduct_model(model);
		
		return product;
	}
}
