<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.store.model.*"%>

<%
BikeStoreService BikeStoreDAOService = new BikeStoreService();
List<BikeStoreVO> list = BikeStoreDAOService.getAll();
pageContext.setAttribute("list",list);
%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">

	<title>Hello, world!</title>
</head>
<body>
	<div class="container-fluid">
		<div class="table-responsive">
			<table class="table table-striped table-hover text-center table-bordered ">
				<thead class="thead-light">
					<tr>
						<th scope="col">店家</th>
						<th scope="col">地址</th>
						<th scope="col">電話</th>
						<th scope="col">營業時間</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="BikeStoreVO" items="${list}" varStatus="e">
					<tr>
						<th>${BikeStoreVO.bike_store_name }</th>
						<th>${BikeStoreVO.location }</th>
						<th>${BikeStoreVO.phone }</th>
						<th>${BikeStoreVO.store_opentime }</th>
					</tr>					
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>