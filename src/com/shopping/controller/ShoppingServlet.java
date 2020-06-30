package com.shopping.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.shop_product.model.*;

public class ShoppingServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		List<Shop_productVO> buylist = (Vector<Shop_productVO>)session.getAttribute("shoppingcar");
		String action = req.getParameter("action");
		System.out.println(action);
		if(!action.equals("CHECKOUT")) {
			if(action.equals("DELETE")) {
				String delete = req.getParameter("del");
				int d = Integer.parseInt(delete);
				buylist.remove(d);
				
				String url = "/front-end/shopMall/shoppingCar.jsp";
				session.setAttribute("shoppingcar", buylist);	
				RequestDispatcher rd = req.getRequestDispatcher(url);
				rd.forward(req, res);
			}
			else if(action.equals("ADD")) {
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
			}						
		}else if(action.equals("CHECKOUT")) {
			Integer total = 0;
			for (int i = 0; i < buylist.size(); i++) {
				Shop_productVO order = buylist.get(i);
				Integer price = order.getProduct_price();
				Integer quantity = order.getProduct_quantity();
				total += (price * quantity);
			}

			String amount = String.valueOf(total);
			req.setAttribute("amount", amount);
			String url = "/front-end/shopMall/shoppingCar.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, res);
		}
	}
	private Shop_productVO getProduct(HttpServletRequest req) {

		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		System.out.println(id);
		System.out.println(name);
		System.out.println(price);
		Shop_productVO product = new Shop_productVO();
		product.setSq_product_id(id);
		product.setProduct_name(name);
		product.setProduct_price(Integer.parseInt(price));
		
		return product;
	}
}
