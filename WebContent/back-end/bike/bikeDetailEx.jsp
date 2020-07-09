<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="bikeRentDetailSvc"
class="com.bike.rent.detail.model.BikeRentDetailService" />

<!DOCTYPE html>
<html>

<head>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
	<title>Insert Bike</title>
</head>
<body>

	<!-- 自由發揮處 -->

<div class="container-fluid mx-3">
	<div class="row">
		<table class="table text-center table-hover">
			<thead>
				<tr>
					<th scope="col">訂單編號</th>
					<th scope="col">車種</th>
					<th scope="col">車輛編號</th>
					<th scope="col">還車狀態</th>
					<th scope="col">時間</th>
					<th scope="col">確認車輛</th>
				</tr>
			</thead>
			<tbody id="extbody">

			</tbody>
		</table>
	</div>
</div>


<!-- 自由發揮處 -->

<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script
src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
<script>
$(document).ready(function() {
	//initEx
	$.ajax({
		url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
		type:"POST",
		data:{
			action:"initEx",
		},
		dataType:"JSON",
		success:function(data){
			var returnObj = data.returnList
			console.log(returnObj);
			var sq_rent_id = returnObj[0].sq_rent_id;
			var bikeTypeName = returnObj[0].bikeTypeName;
			var sq_bike_id = returnObj[0].sq_bike_id;
			var ex_return_date = returnObj[0].ex_return_date;
		},
	});
})
</script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>

