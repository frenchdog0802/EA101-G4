package com.waterStation.controller;

import java.sql.Timestamp;
import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.waterStation.model.*;

@MultipartConfig
public class WaterStationServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		System.out.println("----------" + action);
		
		
		if ("getOne_For_Display".equals(action)) { // 來自select.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/
				String str = req.getParameter("sqStationId");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入補水站編號");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/select.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				String sqStationId = null;
				try {
					sqStationId = new String(str);
				} catch (Exception e) {
					errorMsgs.add("補水站編號格式不正確");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/select.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}
				/*************************** 2.開始查詢資料 *****************************************/
				WaterStationService waterStationSvc = new WaterStationService();
				WaterStationVO wsVO = waterStationSvc.getOneWs(sqStationId);
				if (wsVO == null) {
					errorMsgs.add("查無資料");
				}
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/select.jsp");
					failureView.forward(req, res);
					return;// 程式中斷
				}

				/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
				req.setAttribute("wsVO", wsVO); // 資料庫取出的wsVO物件,存入req
				String url = "/back-end/waterStation/listOneWs.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 成功轉交 listOneEmp.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/select.jsp");
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

				String stationName = req.getParameter("stationName");
				String stationNameReg = "^[(\u4e00-\u9fa5)(a-zA-Z0-9_)]{2,10}$";
				if (stationName == null || stationName.trim().length() == 0) {
					errorMsgs.add("補給站名稱: 請勿空白");
				} else if (!stationName.trim().matches(stationNameReg)) { // 以下練習正則(規)表示式(regular-expression)
					errorMsgs.add("補給站名稱: 只能是中、英文字母、數字和_ , 且長度必需在2到10之間");
				}

				String stationAddress = req.getParameter("stationAddress").trim();
				if (stationAddress == null || stationAddress.trim().length() == 0) {
					errorMsgs.add("補給站地址請勿空白");
				}

				Double longitude = null;
				try {
					longitude = new Double(req.getParameter("longitude").trim());
				} catch (NumberFormatException e) {
					longitude = 0.0;
					errorMsgs.add("經度請填數字.");
				}

				Double latitude = null;
				try {
					latitude = new Double(req.getParameter("latitude").trim());
				} catch (NumberFormatException e) {
					latitude = 0.0;
					errorMsgs.add("緯度請填數字.");
				}

				String country = req.getParameter("country").trim();
				if (country == null || country.trim().length() == 0) {
					errorMsgs.add("國家請勿空白");
				}

				String area = req.getParameter("area").trim();
				if (area == null || area.trim().length() == 0) {
					errorMsgs.add("縣市請勿空白");
				}
				Integer checkFlag = null;
				checkFlag = new Integer(req.getParameter("checkFlag").trim());

				Integer addStation = null;
				addStation = new Integer(req.getParameter("addStation").trim());

				// 新增圖片
				Part part = req.getPart("stationImage");
				InputStream in =  part.getInputStream();
				byte[] stationImage = new byte[in.available()];
				in.read(stationImage);
				in.close();
				
//				Part part = req.getPart("stationImage");
//				byte[] stationImage = inputStreamToByteArr(part.getInputStream());
				
//				InputStream in = part.getInputStream();
//				byte[] stationImage = new byte[in.available()];
//				System.out.println("陣列長度: " + stationImage.length);
//				in.read(stationImage);
//				in.close();

				String businessHours = req.getParameter("businessHours").trim();

				WaterStationVO wsVO = new WaterStationVO();

				wsVO.setStationName(stationName);
				wsVO.setStationAddress(stationAddress);
				wsVO.setLongitude(longitude);
				wsVO.setLatitude(latitude);
				wsVO.setCountry(country);
				wsVO.setArea(area);
				wsVO.setStationImage(stationImage);
				wsVO.setBusinessHours(businessHours);
				wsVO.setCheckFlag(checkFlag);
				wsVO.setAddStation(addStation);

				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("wsVO", wsVO); // 含有輸入格式錯誤的wsVO物件,也存入req
					RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/addWs.jsp");
					failureView.forward(req, res);
					return; // 程式中斷
				}

				/*************************** 2.開始修改資料 *****************************************/
				WaterStationService waterStationSvc = new WaterStationService();
				waterStationSvc.insert(stationName, stationAddress, longitude, latitude, country, area, stationImage,
						businessHours, checkFlag, addStation);

				/*************************** 3.修改完成,準備轉交(Send the Success view) *************/

				String url = "/back-end/waterStation/listAllWs.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listAllWs.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 *************************************/
			} catch (Exception e) {
				errorMsgs.add("新增資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/addWs.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		if ("getOne_For_Update".equals(action)) { // 來自listAllWs.jsp的請求

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ****************************************/
				String sqStationId = new String(req.getParameter("sqStationId"));

				/*************************** 2.開始查詢資料 ****************************************/
				WaterStationService waterStationSvc = new WaterStationService();
				WaterStationVO wsVO = waterStationSvc.getOneWs(sqStationId);

				/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
				req.setAttribute("wsVO", wsVO); // 資料庫取出的wsVO物件,存入req
				String url = "/back-end/waterStation/update_ws_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 update_emp_input.jsp
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/listAllWs.jsp");
				failureView.forward(req, res);
			}
		}
		
		
		
		
		if ("update".equals(action)) { // 來自lissAllWs.jsp的請求
			
			System.out.println("coming to update");
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
		
//			try {
				/***************************1.接收請求參數 - 輸入格式的錯誤處理**********************/
				String sqStationId = new String(req.getParameter("sqStationId").trim());
				System.out.println(sqStationId);
				String stationName = req.getParameter("stationName");
				
				Integer checkFlag = null;
				try {
					checkFlag = new Integer(req.getParameter("checkFlag").trim());
					System.out.println(checkFlag);
				} catch (NumberFormatException e) {
					checkFlag = 0;
					errorMsgs.add("請輸入0(未審核)、1(已審核)、2(未通過)");
				} 
				Integer addStation = null;
				try {
					addStation = new Integer(req.getParameter("addStation").trim());
					System.out.println(addStation);
				} catch (NumberFormatException e) {
					addStation = 0;
					errorMsgs.add("請輸入0(未上架)、1(已上架)");
				}
				
				WaterStationVO wsVO = new WaterStationVO();
				wsVO.setSqStationId(sqStationId);
				wsVO.setCheckFlag(checkFlag);
				wsVO.setAddStation(addStation);
				
				// Send the use back to the form, if there were errors
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("wsVO", wsVO); // 含有輸入格式錯誤的wsVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/back-end/waterStation/update_ws_input.jsp");
					failureView.forward(req, res);
					return; //程式中斷
				}
				
				/***************************2.開始修改資料*****************************************/
				WaterStationService waterStationSvc = new WaterStationService();
				wsVO = waterStationSvc.updateWs(sqStationId, checkFlag, addStation);
				
				/***************************3.修改完成,準備轉交(Send the Success view)*************/
				req.setAttribute("wsVO", wsVO); // 資料庫update成功後,正確的的wsVO物件,存入req
				String url = "/back-end/waterStation/listAllWs.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneWs.jsp
				successView.forward(req, res);
				
//				/***************************其他可能的錯誤處理*************************************/
//			} catch (Exception e) {
//				errorMsgs.add("修改資料失敗:"+e.getMessage());
//				RequestDispatcher failureView = req
//						.getRequestDispatcher("/back-end/waterStation/update_ws_input.jsp");
//				failureView.forward(req, res);
//			}
		}
				
				
					
		//刪除
		if ("delete".equals(action)) { // 來自listAllWs.jsp
			System.out.println("----------");
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			try {
				/*************************** 1.接收請求參數 ***************************************/
				String sqStationId = new String(req.getParameter("sqStationId"));

				/*************************** 2.開始刪除資料 ***************************************/
				WaterStationService waterStationSvc = new WaterStationService();
				waterStationSvc.deleteWs(sqStationId);

				/*************************** 3.刪除完成,準備轉交(Send the Success view) ***********/
				String url = "/back-end/waterStation/listAllWs.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
				successView.forward(req, res);

				/*************************** 其他可能的錯誤處理 **********************************/
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/back-end/waterStation/listAllEmp.jsp");
				failureView.forward(req, res);
			}
		}
	}

	// inputStreamToByteArr
//	public static byte[] inputStreamToByteArr(InputStream in) {
//		byte[] buffer;
//		ByteArrayOutputStream output = null;
//		try {
//			buffer = new byte[in.available()];
//			int bytesRead;
//			output = new ByteArrayOutputStream();
//			while ((bytesRead = in.read(buffer)) != -1) {
//				output.write(buffer, 0, bytesRead);
//			}
//		
//			output.close();
//			in.close();
//		} catch (IOException e1) {
//			e1.printStackTrace();
//		}
//		return output.toByteArray();
//	}
}
