package com.product_collection.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.product_collection.model.*;

public class Product_CollectionServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		res.setContentType("text/html;charset=UTF-8");
		HttpSession session = req.getSession();
		System.out.println(action);
		if("addCollection".equals(action)) {
			String member_id = req.getParameter("member_id");
			String product_name = req.getParameter("product_name");
			String product_id = req.getParameter("product_id");
			
			System.out.println(member_id);
			System.out.println(product_name);
			System.out.println(product_id);
			
			Product_CollectionVO collectionVO = new Product_CollectionVO();
			collectionVO.setSq_member_id(member_id);
			collectionVO.setSq_product_id(product_id);
			collectionVO.setProduct_name(product_name);
			
			Product_CollectionService collectionSvc = new Product_CollectionService();
			collectionSvc.addCollection(collectionVO);
		}
		if("deleteCollection".equals(action)) {
			String member_id = req.getParameter("member_id");
			String product_id = req.getParameter("product_id");		
			Product_CollectionService collectionSvc = new Product_CollectionService();
			collectionSvc.deleteCollection(member_id, product_id);
		}
	}
}
