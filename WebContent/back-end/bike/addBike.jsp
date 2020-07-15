<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>							
								<!-----------backHeader----------->

<%@ page import="java.util.*"%>

<jsp:useBean id="BikeTypeSvc" class="com.bike.type.model.BikeTypeService" scope="page"/>
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService" scope="page"/>
<jsp:useBean id="BikeStoreVO" type="com.bike.store.model.BikeStoreVO" scope="session"/>
<%@include file="/back-end/backFrame/backHeader"%>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
	<title>Insert Bike</title>
	
 <%@include file="/back-end/backFrame/masterBackBody"%>
 
 				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">item1</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item2</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item3</span></a>
					  </li>
					</ul>
				</div>	
								<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backNav----------->
	<%@include file="/back-end/backFrame/masterBackNav"%>
 
	<div class="container-fluid mt-5">
		<form method="POST" action="<%=request.getContextPath()%>/bike/BikeServlet.do">
			<!-- 輸入店家 到時候直接登入綁定店家編號 -->
			<div class="form-group row">
				<label for="sq_bike_store_id" class="col-form-label col-sm-2 ">店家名稱</label>
				<div class="col-sm-10">
					<input type="hidden" value="${BikeStoreVO.sq_bike_store_id}"  name="sq_bike_store_id">
					<input type="text" readonly class="form-control" value="${BikeStoreVO.bike_store_name}" >
				</div>
			</div>
<!-- 			店家帳號 -->
			<div class="form-group row">
				<label for="sq_bike_store_id" class="col-form-label col-sm-2 ">店家帳號</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control" value="${BikeStoreVO.store_account}" name="sq_bike_store_id" >
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
					<option value=0 selected>正常</option>
					<option value=1>維修</option>
					<option value=2>遺失</option>
					<option value=2>報廢</option>
				</select>
			</div>
		</div>
		<div class="offset-sm-5 col-sm-2 mt-3">
			<input	type="hidden" value="insert" name="action"/>
			<input type="submit" class="btn btn-primary " value="確認新增">
		</div>
		
	</form>
</div>

		<%@include file="/back-end/backFrame/backFooter"%>