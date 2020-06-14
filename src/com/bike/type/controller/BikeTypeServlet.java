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
import javax.servlet.http.Part;

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

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		// addBike.jsp.insert
		if ("insert".equals(action)) {

			// errorMap --錯誤處理
			Map<String, String> errorMsgs = new LinkedHashMap<>();
			request.setAttribute("errorMsgs", errorMsgs);

			try {
				// -- 請求參數
				String bike_type_name = request.getParameter("bike_type_name");
				String bike_title = request.getParameter("bike_title");
				String bike_description = request.getParameter("bike_description");
				Part bike_photo = request.getPart("bike_photo");
				String req_price = request.getParameter("price");
				System.out.println(req_price);

				// bike_type_name
				String NameReg = "^[(\u4e00-\u9fa5)(\\w)]{2,6}$";
				if (bike_type_name == null || bike_type_name.trim().length() == 0) {
					errorMsgs.put("bike_type_name", "種類名稱請勿空白");
				} else if (!bike_type_name.trim().matches(NameReg)) {
					errorMsgs.put("bike_type_name", "種類名稱請輸入正確格式");
				};
				// bike_title
				if (bike_title == null || bike_title.trim().length() == 0) {
					errorMsgs.put("errorMsgs", "標題請勿空白");
				}
				// bike_description
				if (bike_description == null || bike_description.trim().length() == 0) {
					errorMsgs.put("bike_description", "單車敘述請勿空白");
				}
				// bike_photo 
				if (bike_photo == null) {
					errorMsgs.put("bike_photo", "請上傳照片");
				}
				
				// price
				Integer price = null;
				try {
					price = Integer.parseInt(req_price);
				} catch (NumberFormatException nfe) {
					errorMsgs.put("price", "請輸入金額");
				};
				
				
				// send error
				if (errorMsgs.size() != 0) {
					RequestDispatcher failView = request.getRequestDispatcher("/back-end/bikeType/addBikeType.jsp");
					failView.forward(request, response);
					return;
				};

				
				// insert data
				BikeTypeVO bikeVOInsert = new BikeTypeVO();
				BikeTypeService BikeTypeService = new BikeTypeService();
				bikeVOInsert.setBike_type_name(bike_type_name);
				bikeVOInsert.setBike_title(bike_title);
				bikeVOInsert.setBike_description(bike_description);
				bikeVOInsert.setBike_photo(inputStreamToByteArr(bike_photo.getInputStream()));
				bikeVOInsert.setPrice(price);
				BikeTypeService.insert(bikeVOInsert);

				// forward
				RequestDispatcher successView = request.getRequestDispatcher("/back-end/bikeType/listAll.jsp");
				successView.forward(request, response);

				// other error
			} catch (Exception ce) {
				errorMsgs.put("otherMsgs",ce.getMessage());
				RequestDispatcher failView = request.getRequestDispatcher("/back-end/bikeType/addBikeType.jsp");
				failView.forward(request, response);
			}
		}
	}
	
	//inputStreamToByteArr
	public static byte[] inputStreamToByteArr(InputStream in) throws IOException
	{
	    byte[] buffer = new byte[in.available()];
	    int bytesRead;
	    ByteArrayOutputStream output = new ByteArrayOutputStream();
	    while ((bytesRead = in.read(buffer)) != -1)
	    {
	        output.write(buffer, 0, bytesRead);
	    }
	    return output.toByteArray();
	}

}
