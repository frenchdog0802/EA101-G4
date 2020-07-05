<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<%@include file="/back-end/backFrame/backHeader"%>
<jsp:useBean id="bikeRentDetailSvc"
class="com.bike.rent.detail.model.BikeRentDetailService" />


<!---------放自己的CSS與title----------->
<link rel="stylesheet" type="text/css"
href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<%@include file="/back-end/backFrame/backBody"%>
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="#"><span
			style="padding-bottom: 8px; border-bottom: 3px blue solid;">item1</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
			<li class="nav-item"><a class="nav-link" href="#"><span>item2</span></a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#"><span>item3</span></a>
			</li>
		</ul>
	</div>
	<!--分頁自己改-->
	<%@include file="/back-end/backFrame/backNav"%>

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

<%@include file="/back-end/backFrame/backFooter"%>

