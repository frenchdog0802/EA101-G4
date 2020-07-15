package com.bike.rent.master.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.member.model.MemVO;

public class BikeRentMasterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		
		if("memberOrderInit".equals(action)) {
			
			//取得會員編號
			MemVO  MemVO = (MemVO)session.getAttribute("MemVO");
			String sq_member_id = MemVO.getSq_member_id();
			//取得會員訂單
			BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
			List<BikeRentMasterVO> BikeRentMasterVOList = BikeRentMasterSvc.getAll();
			
			List<BikeRentMasterVO> memberMasterList =  BikeRentMasterVOList.stream()
													.filter(e->e.getSq_member_id().equals(sq_member_id))
													.collect(Collectors.toList());
			
			//取得會員訂單明細
			BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
			List<BikeRentDetailVO> BikeRentDetailVOList = BikeRentDetailSvc.getAll();
			//裝入會員明細memberDetailList
			List<BikeRentDetailVO> memberDetailList = new ArrayList<>();
			
			for(BikeRentMasterVO BikeRentMasterVO : memberMasterList) {
				for(BikeRentDetailVO BikeRentDetailVO : BikeRentDetailVOList) {
					if(BikeRentMasterVO.getSq_rent_id().equals(BikeRentDetailVO.getSq_rent_id())) {
						memberDetailList.add(BikeRentDetailVO);
					}
				}
			}
			//包裝成JSON
			
			//回傳
			
			
		}
	}

}
