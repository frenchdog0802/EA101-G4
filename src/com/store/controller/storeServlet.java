package com.store.controller;
import java.io.*;
import java.math.BigDecimal;
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
		res.setContentType("text/html;charset=UTF-8");
		String action = req.getParameter("action");
		
		if ("getShopName".equals(action)) {
	        PrintWriter out = res.getWriter();
			String storeKey = req.getParameter("directKey");
			System.out.println(storeKey);
			StoreService storeSvc = new StoreService();
			List<StoreVO> list = storeSvc.getAll();
			JSONArray json = new JSONArray();
			for(int i=0 ; i<list.size() ; i++) {
				JSONObject jsonList = new JSONObject();
				String storeid = list.get(i).getSq_store_address_id();
				String str = list.get(i).getStore_address();
				String name = list.get(i).getStore_name();
				if(str.indexOf(storeKey) != -1) {
					jsonList.put("storeid", storeid);
					jsonList.put("name", name);
					json.put(jsonList);
				}
			}
			out.print(json);
		}

		if ("getPosition".equals(action)) {
	        PrintWriter out = res.getWriter();
			String shopName = req.getParameter("shopName");
			StoreService storeSvc = new StoreService();
			List<StoreVO> list = storeSvc.getPosition(shopName);
			JSONArray json = new JSONArray();
			JSONObject jsonList = new JSONObject();
			String address = list.get(0).getStore_address();
			BigDecimal lon = list.get(0).getLongitude();
			BigDecimal lat = list.get(0).getLatitude();
			
			jsonList.put("address", address);
			jsonList.put("lon", lon);
			jsonList.put("lat", lat);

			json.put(jsonList);
			out.print(json);
		}
	}
}
