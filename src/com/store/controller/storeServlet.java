package com.store.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import org.json.JSONArray;
import org.json.JSONObject;

import com.shop_product.model.Shop_productService;
import com.shop_product.model.Shop_productVO;
import com.store.model.*;
@MultipartConfig
public class storeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		doPost(req,res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		if ("getShopName".equals(action)) {
	        PrintWriter out = res.getWriter();
			String storeKey = req.getParameter("directKey");
			System.out.println(storeKey);
			StoreService storeSvc = new StoreService();
			List<String> list = storeSvc.getStoreName(storeKey);
			JSONArray json = new JSONArray();
			for(String str: list){
				JSONObject jsonList = new JSONObject();
				jsonList.put(str, str);
				json.put(jsonList);
			}
			out.print(json);
		}
	}
}
