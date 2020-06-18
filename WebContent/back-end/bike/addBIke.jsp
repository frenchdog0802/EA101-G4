<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="BikeTypeSvc" class="com.bike.type.model.BikeTypeService" scope="page"/>
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService" scope="page"/>
<!DOCTYPE html>
<html>

<head>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
	<title>Insert Bike</title>
</head>
<body>

	<div class="container-fluid">
		<form>
		<!-- 輸入店家 到時候直接登入綁定店家編號 -->
			<div class="form-group">
				<label for="sq_bike_store_id">店家編號</label>
				<input type="text" class="form-control" id="sq_bike_store_id" placeholder="請直接綁定店家號碼">
			</div>
			<!-- 車種下拉選單 -->
			<div class="form-group">
				<label for="sq_bike_type_id">選擇要新增的車種</label>
				<select class="form-control" id="sq_bike_type_id" name="sq_bike_type_id">
					<c:forEach var="bikeTypeVO" items="${BikeTypeSvc.getAll()}">
						<option value="${bikeTypeVO.sq_bike_type_id}">${bikeTypeVO.bike_type_name}</option>
					</c:forEach>
				</select>
			</div>
			<!-- 車種狀態下拉選單 -->
			<div class="form-group">
				<label for="bike_status">選擇車輛狀態</label>
				<select name="bike_status" id="bike_status">
					<c:forEach var="bikeVO" items="${BikeSvc.getAll()}">
						<option></option>
					</c:forEach>
				</select>
			</div>
			
			
		</form>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>