package com.route.controller;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UncheckedIOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.json.JSONException;
import org.json.JSONObject;
import org.omg.CORBA.PUBLIC_MEMBER;

import com.route.model.RouteService;
import com.route.model.RouteVO;
import com.routeDetail.model.RouteDetailService;
import com.routeDetail.model.RouteDetailVO;
import com.waterStation.model.WaterStationService;
import com.waterStation.model.WaterStationVO;
import com.member.model.*;



@MultipartConfig
public class RouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
					doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
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
			// 去除中刮弧[]，加入()，才能進DB比對
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
		
		if ("getOneRoute_For_Display".equals(action)) { // 來自routeM.jsp的請求
		try {
			/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
			String str = req.getParameter("sqRouteId");
			String routeName = req.getParameter("routeName");
			System.out.println("routeName:"+routeName);
			String sqRouteId = null;
			sqRouteId = new String(str);
			System.out.println("sqRouteId:"+sqRouteId);
			/*************************** 2.開始查詢資料 *****************************************/
			RouteDetailService rouDeSvc = new RouteDetailService();
			List<RouteDetailVO> rouDeVO = rouDeSvc.getStepsByRouteId(sqRouteId);
			System.out.println("len:"+rouDeVO.size());
			System.out.println("name:"+rouDeVO.get(1).getSqSerialNo());
			/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
			req.setAttribute("rouDeVO", rouDeVO); // 資料庫取出的wsVO物件,存入req
			req.setAttribute("routeName", routeName);
			System.out.println("routeName:"+routeName);
			String url = "/front-end/route/routeD.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交routeD.jsp
			successView.forward(req, res);
			/*************************** 其他可能的錯誤處理 *************************************/
		} catch (Exception e) {
			RequestDispatcher failureView = req.getRequestDispatcher("/front-end/route/routeM.jsp");
			failureView.forward(req, res);
		}
	}

		if ("update".equals(action)) { // 來自listAllRou.jsp的請求，修改審核上架
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
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
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/route/update_rou_input.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}
				/*************************** 2.開始修改資料 *****************************************/
				RouteService routeSvc = new RouteService();
				rouVO = routeSvc.updateByStaf(sqRouteId, checkFlag, addRoute);

				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
				req.setAttribute("rouVO", rouVO); // 資料庫update成功後,正確的的rouVO物件,存入req
				String url = "/back-end/route/listAllRouDe.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneWs.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("修改資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/route/update_rou_input.jsp");
				failureView.forward(req, res);
			}
		}

		//新增自訂路線
		
		if ("insert".equals(action)) { // 來自setRouteBySelf.jsp的請求
			System.out.println("come to insert");
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try { 
				
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				//新增至路線主表
				MemVO memVO = (MemVO) session.getAttribute("MemVO");
				String sqMemberId = memVO.getSq_member_id();
				
				String routeName = req.getParameter("routeName");
				String routeIntroduction = req.getParameter("routeIntro");
				String country = req.getParameterValues("country")[0];
				
				String startArea1 = req.getParameterValues("area")[0];
				String startArea2[] = startArea1.split("灣");
				String startArea = startArea2[1].substring(0, 3);
				//因為沒將終點當為判斷因子，故直接帶起點縣市，不影響判斷式
				String endArea1 = req.getParameterValues("area")[0];
				String endArea2[] = endArea1.split("灣");
				String endArea = endArea2[1].substring(0, 3);
				
				Double distance = null;
				distance = new Double(req.getParameter("dis").trim());
				Integer checkFlag = null;
				checkFlag = new Integer(req.getParameter("checkFlag").trim());
				Integer addRoute = null;
				addRoute = new Integer(req.getParameter("addRoute").trim());

				Part routeImgPart = req.getPart("routeImg");
				InputStream in = routeImgPart.getInputStream();
				byte[] routeImage = new byte[in.available()];
				in.read(routeImage);
				in.close();

				RouteVO rouVO = new RouteVO();

				rouVO.setRouteName(routeName);
				rouVO.setRouteIntroduction(routeIntroduction);
				rouVO.setCountry(country);
				rouVO.setStartArea(startArea);
				rouVO.setEndArea(endArea);
				rouVO.setDistance(distance);
				rouVO.setCheckFlag(checkFlag);
				rouVO.setAddRoute(addRoute);
				rouVO.setSqMemberId(sqMemberId);

				RouteService RouSvc1 = new RouteService();
				RouSvc1.insert(routeName, distance, country, startArea, endArea, routeImage, routeIntroduction,
						checkFlag, addRoute);

				//新增至路線細節表格
				RouteService rouSvc2 = new RouteService();
				RouteVO rouVO2 = rouSvc2.getOneRouteByRouteName(routeName);
				
				String sqRouteId = rouVO2.getSqRouteId();
				String[] stepName = req.getParameterValues("step");
				
				String[] stLongitude = req.getParameterValues("lat");
				String[] stLatitude = req.getParameterValues("lng");
				String[] stepIntroduction = req.getParameterValues("stepIntro");
				String[] stepImage = req.getParameterValues("stepImg");
				

				
				
				RouteDetailVO rouDeVO ;
				Part routeImgDetail = null;
				InputStream imgDetailIn = null;
				byte[] imgDetailByte = null;
				//將值讀入細節表格
				for (int i=0; i<stepName.length; i++) {
					System.out.println("stepName.length="+stepName.length);
					if(stepName[i].length()>1) {
					    rouDeVO = new RouteDetailVO();
						rouDeVO.setSqRouteId(sqRouteId);
						rouDeVO.setStepName(stepName[i]);
						
						rouDeVO.setStLongitude(Double.valueOf(stLongitude[i]));
						rouDeVO.setStLatitude(Double.valueOf(stLatitude[i]));
						rouDeVO.setStepIntroduction(stepIntroduction[i]);
						
						routeImgDetail = req.getPart("stepImg"+i);
						imgDetailIn = routeImgDetail.getInputStream();
						imgDetailByte = new byte[imgDetailIn.available()];
						imgDetailIn.read(imgDetailByte);
						imgDetailIn.close();
						
						rouDeVO.setStepImage(imgDetailByte);
						
						
						RouteDetailService rouDeSvc = new RouteDetailService();
						rouDeSvc.insert(rouDeVO);
					}
				}
				

				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/

				String url = "/front-end/route/routeM.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交routeM.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("新增資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/route/setRouteBySelf.jsp");
				failureView.forward(req, res);
			}
			
			
			
			
		}

		System.out.println("out of servlet");
		
		
		

		
		
	}
	

	
}
