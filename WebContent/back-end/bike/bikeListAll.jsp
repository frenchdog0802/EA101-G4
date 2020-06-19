<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.bike.model.*"%>

<jsp:useBean id="bikeSvc" scope="page" class="com.bike.type.model.BikeTypeService" />
<jsp:useBean id="BikeVO" class="com.bike.bike.model.BikeVO" scope="request"/>
<%
BikeService bikeDao = new BikeService();
List<BikeVO> list = bikeDao.getAll();
pageContext.setAttribute("list", list);

if (BikeVO.getSq_bike_type_id() != null) {
List<BikeVO> list1 = Arrays.asList(BikeVO);
	pageContext.setAttribute("list", list1);
}
%>

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
		<form class="form-inline"
		ACTION="<%=request.getContextPath()%>/bike/BikeServlet.do">
		<div class="form-group mx-sm-3 mt-3">
			<label for="inputbike_type_id" class="sr-only">請輸入車輛編號</label> <input
			type="text" class="form-control" id="inputbike_type_id"
			name="sq_bike_id" placeholder="請輸入車種編號">
		</div>
		<input type="hidden" name="action" value="getOne_For_Display">
		<input type="submit" class="btn btn-primary mt-3" value="查詢"></input>
		<a
		href="<%=request.getContextPath()%>/back-end/bikeType/addBike.jsp"
		class="btn btn-success mt-3 mx-3">新增</a>
	</form>
</div>
<div class="container-fluid mt-3">
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
				<td class="mydescription align-middle">${bikeSvc.findBikeStatus(bikeVO.bike_status)}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<%@ include file="/back-end/bike/page3.file"%>
<div class="w-100 m-3"></div>
</div>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>

<script>
	$(function(){
			$(".page-index").eq(<%=whichPage-1%>).addClass("text-danger");
	})	
</script>

</body>
</html>