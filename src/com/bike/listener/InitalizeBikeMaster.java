package com.bike.listener;


import javax.servlet.ServletContextListener;

import org.json.JSONObject;

import com.bike.rent.detail.model.BikeRentDetailService;
import com.bike.rent.detail.model.BikeRentDetailVO;
import com.bike.rent.master.model.BikeRentMasterService;
import com.bike.rent.master.model.BikeRentMasterVO;

import redis.clients.jedis.Jedis;

import javax.servlet.ServletContextEvent;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;

public class InitalizeBikeMaster implements ServletContextListener {
	// 排成器
		Timer timer = new Timer();
	public void contextInitialized(ServletContextEvent event) {
		TimerTask task = new TimerTask() {
			@Override
			public void run() {
				//現在時間
				LocalDateTime now = LocalDateTime.now();
				//訂單主打
				BikeRentMasterService BikeRentMasterSvc = new BikeRentMasterService();
				List<BikeRentMasterVO> BikeRentMasterVOList = BikeRentMasterSvc.getAll();
				//訂單狀態為0 訂單成立但還沒租車的
				List<BikeRentMasterVO> BikeRentMasterList1 = BikeRentMasterVOList.stream()
															.filter(e->e.getRent_od_status()==0)
															.collect(Collectors.toList());
				//訂單明細
				BikeRentDetailService BikeRentDetailSvc = new BikeRentDetailService();
				List<BikeRentDetailVO> BikeRentDetailVOList = BikeRentDetailSvc.getAll();
				
				//比對明細的時間如果超過還車時間 然後還沒租的話就把狀態改改取消
				for(BikeRentDetailVO BikeRentDetailVO:BikeRentDetailVOList) {
					LocalDateTime Ex_return_date  = BikeRentDetailVO.getEx_return_date().toLocalDateTime();
					if(now.isAfter(Ex_return_date)) {
						for(BikeRentMasterVO BikeRentMasterVO: BikeRentMasterList1) {
							if(BikeRentMasterVO.getSq_rent_id().equals(BikeRentDetailVO.getSq_rent_id())) {
								BikeRentMasterVO.setRent_od_status(3);
								BikeRentMasterSvc.update(BikeRentMasterVO);
							}
						}
					}
				}
			}
		};
		
		Calendar cal = new GregorianCalendar(2020,Calendar.JULY,1,23,00,00);
		timer.scheduleAtFixedRate(task, cal.getTime(),1000*60*60);
	}

	public void contextDestroyed(ServletContextEvent event) {
		timer.cancel();
	}

}
