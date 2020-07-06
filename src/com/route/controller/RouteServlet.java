package com.route.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.json.JSONException;
import org.json.JSONObject;

import com.route.model.RouteService;
import com.route.model.RouteVO;
import com.routeDetail.model.RouteDetailVO;
import com.waterStation.model.WaterStationService;
import com.waterStation.model.WaterStationVO;

public class RouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public RouteServlet() {

	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");

		if ("selectByCondition".equals(action)) {// 來自routeM.jsp的請求
			// 1.假設一開始為全選，故未條件判斷

			// 2開始資料查詢
			String selAreaList = req.getParameter("selAreaList");
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
			
			res.setContentType("application/json");
			res.setCharacterEncoding("UTF-8");
			PrintWriter out = res.getWriter();
	    	out.println(jsonObject.toString());
	    	out.flush();


		}			
			
		System.out.println(action);
		if ("update".equals(action)) { // 來自listAllRou.jsp的請求，修改審核上架
			System.out.println("coming to update");
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			
			
			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String sqRouteId = new String(req.getParameter("sqRouteId").trim());
				System.out.println(sqRouteId);
				String routeName = req.getParameter("routeName");
				
				Integer checkFlag = null;
				try {
					checkFlag = new Integer(req.getParameter("checkFlag").trim());
					System.out.println(checkFlag);
				} catch (NumberFormatException e) {
					checkFlag = 0;
					errorMsgs.add("請輸入0(未審核)、1(已審核)、2(未通過)");
				} 
				Integer addRoute = null;
				try {
					addRoute = new Integer(req.getParameter("addRoute").trim());
					System.out.println(addRoute);
				} catch (NumberFormatException e) {
					addRoute = 0;
					errorMsgs.add("請輸入0(未上架)、1(已上架)");
				}
				
				RouteVO rouVO = new RouteVO();
				rouVO.setSqRouteId(sqRouteId);
				rouVO.setCheckFlag(checkFlag);
				rouVO.setAddRoute(addRoute);
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("rouVO", rouVO); // 含有輸入格式錯誤的wsVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/route/update_rou_input.jsp");
					failureView.forward(req, res);
					return; //程式中斷
				}
				/***************************2.開始修改資料*****************************************/
				RouteService routeSvc = new RouteService();
				rouVO = routeSvc.updateByStaf(sqRouteId,checkFlag, addRoute);
			
				/***************************3.修改完成,準備轉交(Send the Success view)*************/
				req.setAttribute("rouVO", rouVO); // 資料庫update成功後,正確的的rouVO物件,存入req
				String url = "/back-end/route/listAllRou.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneWs.jsp
				successView.forward(req, res);
				
				/***************************其他可能的錯誤處理*************************************/
			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:"+e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/back-end/route/update_rou_input.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("insert".equals(action)) { // 來自addWs.jsp的請求
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/

				String routeName = req.getParameter("routenName");
				Double distance = null;
				distance = new Double(req.getParameter("dis").trim());

				String country = req.getParameter("country");
				String startArea = req.getParameter("area");
				String endArea = req.getParameter("area");
				String routeIntroduction = req.getParameter("routeIntro");
				Part routeImgPart = req.getPart("routeImg");
				InputStream in =  routeImgPart.getInputStream();
				byte[] routeImage = new byte[in.available()];
				in.read(routeImage);
				in.close();	
				
				String[] stepName = req.getParameterValues("step");
				String[] stLongitude = req.getParameterValues("lat");
				String[] stLatitude = req.getParameterValues("lng");
				String[] stepIntroduction = req.getParameterValues("stepIntro");
//				Part parts = req.getPart("stepImg");
				Collection<Part> parts = req.getParts(); 
				List<RouteDetailVO> stepImageList = new ArrayList<RouteDetailVO>();
//										
//				// 新增圖片
				for(Part part:parts) {
					RouteDetailVO vo = new RouteDetailVO();
					vo.setStepImage(new byte[part.getInputStream().available()]);
					stepImageList.add(vo);
				}
	
				
				
				Integer checkFlag = null;
				checkFlag = new Integer(req.getParameter("checkFlag").trim());

				Integer addRoute = null;
				addRoute = new Integer(req.getParameter("addRoute").trim());

				
			}catch (Exception e) {
				// TODO: handle exception
			}
				
		}
		
	}
}
