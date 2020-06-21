package com.bike.store.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bike.bike.model.BikeService;
import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;
import com.bike.store.model.BikeStoreService;
import com.bike.store.model.BikeStoreVO;


public class BikeStoreAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	
			response.setContentType("text/html;charset=UTF-8");
	        request.setCharacterEncoding("UTF-8");
	        
	        String action = request.getParameter("action");
	        
	        
	        if("searchDate".equals(action)) {
	        	
	        	String startDate = request.getParameter("startDate");
		        String endDate = request.getParameter("endDate");
		        
		        //單車物件
		        BikeService BikeSvc = new BikeService();
		        //租車店家
		        BikeStoreService BikeStoreSvc = new BikeStoreService();
		        //訂單明細
		        BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
		        //主要訂單
		        BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
		        
		        List<BikeRentMasterVO> BikeRentMasterList = BikeRentMasterSvc.getAll();
	        	List<BikeRentDetailVO> BikeRentDetailList = BikeRentDetailSvc.getAll();
		      
		        //找出rent_master裡面店家有的訂單編號
	        	List<String> BikeSearchMasterList = new ArrayList<>();
	        	//找出rent_detail裡面店家有的訂單物件
	        	List<BikeRentDetailVO> BikeSearchDetailList = new ArrayList<>();
	        	
	        	 //找出A店家的編號 "620001"
			     //找出A店家主要訂單
			     //確認A店家的租車訂單明細
			     //比較出A分店剩餘車輛
	        	
	        	for(BikeRentMasterVO BikeRentMasterVO : BikeRentMasterList) {
	        		if(BikeRentMasterVO.getSq_bike_store_id().equals("620011")) {
	        			BikeSearchMasterList.add(BikeRentMasterVO.getSq_rent_id());
	        		}
	        	}
	        	
	        	for(BikeRentDetailVO BikeRentDetailVO : BikeRentDetailList) {
	        		for(String BikeSearchId:BikeSearchMasterList) {
	        			
		        		if(BikeSearchId.equals(BikeRentDetailVO.getSq_rent_id())) {
		        			BikeSearchDetailList.add(BikeRentDetailVO);
		        		}
		        	}
	        	}
	 
	        	
	        	//印出訂單明細物件店家擁有並開始比對時間
	        	Integer failMatch = 0;//比對成功次數  
	        	for(BikeRentDetailVO BikeSearchDetail:BikeSearchDetailList) {
	        		Date sqlStartDate = new Date(BikeSearchDetail.getRsved_rent_date().getTime()); //timeStamp轉換成util.Date
	        		Date sqlEndDate = new Date(BikeSearchDetail.getEx_return_date().getTime());
	        		//開始比對時間simpleFormat
		        	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH");
		        	try {
						Date inputStartDate = sdf.parse(startDate);
						Date inputEndDate = sdf.parse(endDate);
						if(!(inputStartDate.before(sqlStartDate) && inputEndDate.before(sqlStartDate))) {
							System.out.println("yes");
							if(!(inputStartDate.after(sqlEndDate) && inputEndDate.after(sqlEndDate))) {
								failMatch++;
								System.out.println("no");
							};
						}
						
					} catch (ParseException e) {
						e.printStackTrace();
					}
	        		
	        	}
	        	
	        	Integer Bike = BikeSvc.findStoreBikeEmpty("620001");
	        	Integer matchBike = Bike-failMatch;
	        	System.out.println(matchBike);
	        	
	        }
	        
	        
	        
	 
	}

}
