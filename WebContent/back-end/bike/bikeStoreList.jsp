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
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>
<div class="row">
			<div class="col">
				<table class="table table-striped table-hover text-center ">
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
</body>
</html>