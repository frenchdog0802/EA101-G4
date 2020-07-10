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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
<title>Insert Bike</title>
</head>
<body>

	<!-- 自由發揮處 -->

	<div class="container-fluid">
		<table class="table text-center table-hover">
			<thead>
				<tr>
					<th scope="col">訂單編號</th>
					<th scope="col">車種</th>
					<th scope="col">車輛編號</th>
					<th scope="col">還車狀態</th>
					<th scope="col">時間</th>
					<th scope="col">額外花費</th>
				</tr>
			</thead>
			<tbody id="extbody">

			</tbody>
		</table>
		<div class="row">
			<div class="col">
				<button class="btn btn-primary btn-block returnBikes">確認還車</button>
			</div>
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
			var str="";
			for(var i =0 ;i<returnObj.length;i++){
				var sq_rent_id = returnObj[i].sq_rent_id;
				var bikeTypeName = returnObj[i].bikeTypeName;
				var sq_bike_id = returnObj[i].sq_bike_id;
				var ex_return_date = returnObj[i].ex_return_date;
				var ex_return_dateStr = ex_return_date.slice(0,16);
				str+="<tr>";
				str+="<td>"+sq_rent_id+"</td>";
				str+="<td>"+bikeTypeName+"</td>";
				str+="<td>"+sq_bike_id+"</td>";
				str+="<td><select  class='bikeStatus'><option value='' disabled selected>選擇車輛狀態</option><option value='0'>正常</option><option value='1'>維修</option><option value='2'>遺失</option><option value='3'>報廢</option></select></td>";
				str+="<td>"+ex_return_dateStr+"</td>";
				str+="<td><span class='extra_cost'>0</span></td>";
				str+="</tr>";
			}
			$("#extbody").html(str);
		},
		complete:function(){
			//當車輛狀態不為正常時額外花費
			$(".bikeStatus").change(function(){
				var cost_span = $(this).closest("tr").find("td").eq(5).find(".extra_cost");
				var status = $(this).val();
				if(status!=0){
					 var inputCost = prompt("請輸入額外金額", 0);
					  if (inputCost != null) {
					    //找出這一行的span把值印上去
						  cost_span.text(inputCost);
					  }
				}
			});
			
			//確認還車按鈕
			$(".returnBikes").click(function(){
// 				var 從這裡開始寫
			})
		}
	});
	
	
	
	
})
</script>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>

