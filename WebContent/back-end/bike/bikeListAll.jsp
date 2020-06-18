<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.bike.model.*"%>

<%
	BikeService bikeDao = new BikeService();
	List<BikeVO> list = bikeDao.getAll();
	pageContext.setAttribute("list", list);
%>
<jsp:useBean id="bikeSvc" scope="page" class="com.bike.type.model.BikeTypeService" />

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">

</head>
<body>
	<div class="container-fluid">
		<div class="table-responsive">
		
			<table
				class="table text-center table-bordered table-striped table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">車輛編號</th>
						<th scope="col">車種</th>
						<th scope="col">車輛狀態</th>
					</tr>
				</thead>
				<tbody>
					<%@ include file="/back-end/bike/page1.file"%>
					<c:forEach var="bikeVO" items="${list}" begin="<%=pageIndex%>"
						end="<%=pageIndex+rowsPerPage-1%>">
						<tr>
							<td class="align-middle">${bikeVO.sq_bike_id}</td>
							<td class="align-middle">${bikeSvc.findByPrimaryKey(bikeVO.sq_bike_type_id).bike_type_name}</td>
							<td class="mydescription align-middle">${bikeVO.bike_status}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<%@ include file="/back-end/bike/page3.file"%>
			<div class="w-100 m-3"></div>
		</div>
	</div>


</body>
</html>