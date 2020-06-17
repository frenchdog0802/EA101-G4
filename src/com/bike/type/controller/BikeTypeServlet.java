package com.bike.type.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bike.type.model.BikeTypeDAO;
import com.bike.type.model.BikeTypeService;
import com.bike.type.model.BikeTypeVO;

@MultipartConfig
public class BikeTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if ("getOne_For_Display".equals(action)) {

			// errorMap --錯誤處理
			Map<String, String> errorMsgs = new LinkedHashMap<>();
			request.setAttribute("errorMsgs", errorMsgs);

			// -- 請求參數
			String sq_bike_type_id = request.getParameter("sq_bike_type_id");

			if (sq_bike_type_id == null || sq_bike_type_id.trim().length() == 0) {
				errorMsgs.put("bike_type_name", "種類名稱請勿空白");
			}

			if (errorMsgs.size() != 0) {
				RequestDispatcher errorView = request.getRequestDispatcher("/back-end/bikeType/listAll.jsp");
				errorView.forward(request, response);
				return;
			}

			BikeTypeService BikeTypeService = new BikeTypeService();
			BikeTypeVO BikeTypeVO = BikeTypeService.findByPrimaryKey(sq_bike_type_id);
			request.setAttribute("BikeTypeVO", BikeTypeVO);
			RequestDispatcher successView = request.getRequestDispatcher("/back-end/bikeType/listAll.jsp");
			successView.forward(request, response);
		}

		//////////////////////////////////////// addBike.jsp.insert
		if ("insert".equals(action)) {

			// errorMap --錯誤處理
			Map<String, String> errorMsgs = new LinkedHashMap<>();
			request.setAttribute("errorMsgs", errorMsgs);

			try {
				// -- 請求參數
				String bike_type_name = request.getParameter("bike_type_name");
				String bike_title = request.getParameter("bike_title");
				String bike_description = request.getParameter("bike_description");
				Part bike_photo_part = request.getPart("bike_photo");
				byte[] bike_photo_array = null;
				String req_price = request.getParameter("price");

				// bike_type_name
				String NameReg = "^[(\u4e00-\u9fa5)(\\w)]{2,6}$";
				if (bike_type_name == null || bike_type_name.trim().length() == 0) {
					errorMsgs.put("bike_type_name", "種類名稱請勿空白");
				} else if (!bike_type_name.trim().matches(NameReg)) {
					errorMsgs.put("bike_type_name", "種類名稱請輸入正確格式");
				}
				;
				// bike_title
				if (bike_title == null || bike_title.trim().length() == 0) {
					errorMsgs.put("bike_title", "標題請勿空白");
				}
				// bike_description
				if (bike_description == null || bike_description.trim().length() == 0) {
					errorMsgs.put("bike_description", "單車敘述請勿空白");
				}
				
				// bike_photo
				if (bike_photo_part.getSize() == 0) {
					if (session.getAttribute("bike_photo_array") == null) {
						errorMsgs.put("bike_photo", "請上傳照片");
					} else {
						bike_photo_array = (byte[]) session.getAttribute("bike_photo_array");
					}
				} else {
					bike_photo_array = inputStreamToByteArr(bike_photo_part.getInputStream());
				}

				// price
				Integer price = null;
				try {
					price = Integer.parseInt(req_price);
				} catch (NumberFormatException nfe) {
					errorMsgs.put("price", "請輸入正確金額");
				}
				;

				// insertVO data

				BikeTypeVO bikeVOInsert = new BikeTypeVO();
				BikeTypeService BikeTypeService = new BikeTypeService();
				bikeVOInsert.setBike_type_name(bike_type_name);
				bikeVOInsert.setBike_title(bike_title);
				bikeVOInsert.setBike_description(bike_description);
				bikeVOInsert.setBike_photo(bike_photo_array);
				bikeVOInsert.setPrice(price);

				// send error
				if (errorMsgs.size() != 0) {
					if (!errorMsgs.containsKey("bike_photo")) {
						session.setAttribute("bike_photo_array", bike_photo_array);
					}
					request.setAttribute("BikeTypeVO", bikeVOInsert);
					RequestDispatcher failView = request.getRequestDispatcher("/back-end/bikeType/addBikeType.jsp");
					failView.forward(request, response);
					return;
				}
				;

				// insert STMT
				BikeTypeService.insert(bikeVOInsert);
				session.removeAttribute("bike_photo_array");
				// forward
				RequestDispatcher successView = request.getRequestDispatcher("/back-end/bikeType/listAll.jsp");
				successView.forward(request, response);

				// other error
			} catch (Exception ce) {
				errorMsgs.put("otherMsgs", ce.getMessage());
				RequestDispatcher failView = request.getRequestDispatcher("/back-end/bikeType/addBikeType.jsp");
				failView.forward(request, response);
			}
		}

		////////////////////////// listAll.jsp.update
		if ("getOne_For_Update".equals(action)) {
			String sq_bike_type_id = request.getParameter("sq_bike_type_id");
			BikeTypeService BikeTypeService = new BikeTypeService();
			BikeTypeVO BikeTypeVO = BikeTypeService.findByPrimaryKey(sq_bike_type_id);
			request.setAttribute("BikeTypeVO", BikeTypeVO);
			// forward
			RequestDispatcher forwardView = request.getRequestDispatcher("/back-end/bikeType/getOneForUpdate.jsp");
			forwardView.forward(request, response);
		}

		//////////////////////// getOneForUpdate.jsp.update
		if ("confrim_Update".equals(action)) {
			// errorMap --錯誤處理
			Map<String, String> errorMsgs = new LinkedHashMap<>();
			request.setAttribute("errorMsgs", errorMsgs);

			try {
				String sq_bike_type_id = request.getParameter("sq_bike_type_id");
				String bike_type_name = request.getParameter("bike_type_name");
				String bike_title = request.getParameter("bike_title");
				String bike_description = request.getParameter("bike_description");
				Part bike_photo = request.getPart("bike_photo");
				String req_price = request.getParameter("price");

				// bike_type_name
				String NameReg = "^[(\u4e00-\u9fa5)(\\w)]{2,6}$";
				if (!bike_type_name.trim().matches(NameReg)) {
					errorMsgs.put("bike_type_name", "種類名稱請輸入正確格式");
				}
				;

				// price
				Integer price = null;
				try {
					price = Integer.parseInt(req_price);
				} catch (NumberFormatException nfe) {
					errorMsgs.put("price", "請輸入正確金額");
				}
				;

				// set updateVO
				BikeTypeVO bikeVOUpdate = new BikeTypeVO();
				BikeTypeService BikeTypeService = new BikeTypeService();
				bikeVOUpdate.setSq_bike_type_id(sq_bike_type_id);
				bikeVOUpdate.setBike_type_name(bike_type_name);
				bikeVOUpdate.setBike_title(bike_title);
				bikeVOUpdate.setBike_description(bike_description);
				if (bike_photo.getSize() == 0) {
					bikeVOUpdate.setBike_photo(BikeTypeService.findByPrimaryKey(sq_bike_type_id).getBike_photo());
				} else {
					bikeVOUpdate.setBike_photo(inputStreamToByteArr(bike_photo.getInputStream()));
				}

				bikeVOUpdate.setPrice(price);

				// send error
				if (errorMsgs.size() != 0) {
					request.setAttribute("BikeTypeVO", bikeVOUpdate);
					RequestDispatcher failView = request.getRequestDispatcher("/back-end/bikeType/getOneForUpdate.jsp");
					failView.forward(request, response);
					return;
				}
				;

				// update STMT
				BikeTypeService.update(bikeVOUpdate);
				// forward
				RequestDispatcher successView = request.getRequestDispatcher("/back-end/bikeType/listAll.jsp");
				successView.forward(request, response);

				// other error
			} catch (Exception ce) {
				errorMsgs.put("otherMsgs", ce.getMessage());
				RequestDispatcher failView = request.getRequestDispatcher("/back-end/bikeType/addBikeType.jsp");
				failView.forward(request, response);
			}
		}
	}

	// inputStreamToByteArr
	public static byte[] inputStreamToByteArr(InputStream in) {
		byte[] buffer;
		ByteArrayOutputStream output = null;
		try {
			buffer = new byte[in.available()];
			int bytesRead;
			output = new ByteArrayOutputStream();
			while ((bytesRead = in.read(buffer)) != -1) {
				output.write(buffer, 0, bytesRead);
			}
			output.close();
			in.close();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return output.toByteArray();
	}

}
