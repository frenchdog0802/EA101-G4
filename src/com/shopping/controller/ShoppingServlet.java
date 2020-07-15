package com.shopping.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.shop_product.model.*;

import redis.clients.jedis.Jedis;

public class ShoppingServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		List<Shop_productVO> buylist = (Vector<Shop_productVO>)session.getAttribute("shoppingcar");
		String action = req.getParameter("action");
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
		if(action.equals("ADD")) {
			try {
				Shop_productVO aproduct = getProduct(req);
				if(buylist == null) {
					buylist = new Vector<Shop_productVO>();
					buylist.add(aproduct);
				}else {
					if (buylist.contains(aproduct)) {
						Shop_productVO innerProduct = buylist.get(buylist.indexOf(aproduct));
						innerProduct.setProduct_quantity(innerProduct.getProduct_quantity() + 1);
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
		if(action.equals("CHECK")) {
			String total = req.getParameter("total");			
			session.setAttribute("totalPrice", total);
			String url = "/front-end/shopMall/shopPayDetail.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, res);
		}
		
		if(action.equals("toCheck")) {
			Jedis jedis = new Jedis("localhost", 6379);
			jedis.auth("123456");

			String name = req.getParameter("tname");
			String phone = req.getParameter("tphone");
			String address = req.getParameter("taddress");
			String email = req.getParameter("temail");
			String paymodeN = req.getParameter("paymode");
			System.out.println(paymodeN);
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
		
		Shop_productVO product = new Shop_productVO();
		product.setSq_product_id(id);
		product.setProduct_name(name);
		product.setProduct_price(Integer.parseInt(price));
		
		return product;
	}
}
