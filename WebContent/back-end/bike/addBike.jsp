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
		<form method="POST" action="<%=request.getContextPath()%>/bike/BikeServlet.do">
			<!-- 輸入店家 到時候直接登入綁定店家編號 -->
			<div class="form-group row">
				<label for="sq_bike_store_id" class="col-form-label col-sm-2 ">店家編號</label>
				<div class="col-sm-10">
					<input type="text" class="form-control " id="sq_bike_store_id" name="sq_bike_store_id" placeholder="請直接綁定店家編號">
				</div>
			</div>
			<!-- 輸入車輛編號 -->
			<div class="form-group row">
				<label for="sq_bike_id" class="col-form-label col-sm-2 ">車輛編號</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="sq_bike_id" name="sq_bike_id" placeholder="預設使用流水號 可以不用輸入">
				</div>
			</div>
			<!-- 車種下拉選單 -->
			<div class="form-group row">
				<label for="sq_bike_type_id" class="col-form-label col-sm-2 ">選擇要新增的車種</label>
				<div class="col-sm-10">
					<select class="form-control" id="sq_bike_type_id" name="sq_bike_type_id">
						<c:forEach var="bikeTypeVO" items="${BikeTypeSvc.getAll()}">
						<option value="${bikeTypeVO.sq_bike_type_id}">${bikeTypeVO.bike_type_name}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<!-- 車輛狀態下拉選單 -->
		<div class="form-group row">
			<label for="bike_status" class="col-form-label col-sm-2 ">選擇車輛狀態</label>
			<div class="col-sm-10">
				<select  id="bike_status" class="form-control" name="bike_status">
					<option value=0 selected>未出租</option>
					<option value=1>出租中</option>
					<option value=2>維修中</option>
				</select>
			</div>
		</div>
		<div class="col-sm-12">
			<input	type="hidden" value="insert" name="action"/>
			<input type="submit" class="btn btn-primary float-right">
		</div>
		
	</form>
</div>


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>