package com.route.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.route.model.RouteService;
import com.route.model.RouteVO;
import com.waterStation.model.WaterStationService;
import com.waterStation.model.WaterStationVO;

public class RouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public RouteServlet() {

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if ("selectByCondition".equals(action)) {// 來自routeM.jsp的請求
			// 1.假設一開始為全選，故未條件判斷

			// 2開始資料查詢
			String selAreaList = request.getParameter("selAreaList");
			String[] array = selAreaList.split(",");
			
			ArrayList<String> arrayList = new ArrayList(Arrays.asList(array));

			ArrayList<String> checkboxQu = new ArrayList<String>();
			for (int index = 0; index < arrayList.size(); index++) {
				String areaName1 = (String) arrayList.get(index);
				areaName1 = "'" + areaName1 + "'";
				checkboxQu.add(areaName1);
			}
			//去除中刮弧[]，加入()，才能進DB比對
			String areaName2 = "(" + checkboxQu + ")";
			String areaName3 = areaName2.replace('[', ' ');
			String areaNameFinal = areaName3.replace(']', ' ');

			/*************************** 2.開始查詢資料 *****************************************/
			RouteService rouSvc = new RouteService();
			List<RouteVO> rouVO = rouSvc.getAreaByStartArea(areaNameFinal);

			JSONObject jsonObject = new JSONObject();
			try {
				jsonObject.put("rouVO", rouVO);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
	    	out.println(jsonObject.toString());
	    	out.flush();


		}
	}
}
