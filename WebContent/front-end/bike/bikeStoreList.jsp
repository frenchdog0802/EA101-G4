<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.store.model.*"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/css/bikeStoreList.css">
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService" />
<%
BikeStoreService BikeStoreDAOService = new BikeStoreService();
List<BikeStoreVO> list = BikeStoreDAOService.getAll();
pageContext.setAttribute("list", list);
%>
<html lang="en">
<head>
</head>
<body>
	<%@include file="/front-end/bike/page-nav"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<div class="row text-center">
					<div class="col">
						<label for="startDate">取車日期&時間 : </label> <input id="startDate"
						name="startDate" type="text" autocomplete="off">
					</div>
					<div class="col">
						<label for="endDate">還車日期&時間 : </label> <input type="text"
						id="endDate" name="endDate" autocomplete="off">
					</div>
				</div>
			</div>
		</div>
		<!-- 分頁 -->
		<div class="row mt-4">
			<div class="col-8" >
				<nav class="nav nav-pills nav-fill nav-tabs nav-area" >
					<a href="#" class=" nav-item nav-link  active" data-toggle="pill">全臺</a>
					<a href="#" class=" nav-item nav-link " data-toggle="pill">北部</a> <a
					href="#" class=" nav-item nav-link " data-toggle="pill">南部</a> <a
					href="#" class=" nav-item nav-link " data-toggle="pill">東部</a> <a
					href="#" class=" nav-item nav-link " data-toggle="pill">西部</a>
				</nav>
			</div>
			<div class="col-4">
				<div class="form-group row mt-1 mb-1" >
					<label for="Search" class="col-form-label">Search : </label>
					<div>
						<input type="text" class="form-control search" placeholder="收尋店家"
 						id="Search">
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="table-responsive">
				<table
				class="table table-striped table-hover text-center table-bordered ">
				<thead class="thead-light">
					<tr>
						<th scope="col">店家</th>
						<th scope="col">地址</th>
						<th scope="col">電話</th>
						<th scope="col">營業時間</th>
						<th scope="col">車輛數量</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="BikeStoreVO" items="${list}" varStatus="e">
					<tr>
						<th>${BikeStoreVO.bike_store_name }</th>
						<th>${BikeStoreVO.location }</th>
						<th>${BikeStoreVO.phone }</th>
						<th>${BikeStoreVO.store_opentime }</th>
						<th>${BikeSvc.findStoreBikeEmpty(BikeStoreVO.sq_bike_store_id)}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</div>

<%@include file="/front-end/bike/page-footer"%>
<script>
	$.datetimepicker.setLocale('zh');
	$(function() {
		var startDate;
		var endDate;
		$(".nav-area>a").click(function() {

			var area = $(this).text();
				// $.ajax({
				//         type :"POST",
				//         url  : "/testServlet/myServlet",
				//         data : { 
				//             datafromtestFile : $("#input").val(),                            
				//             },
				//         dataType: "text",
				//         success : function(happy) {
				//             $("#output").html(happy);                            
				//     }
				//     })

			});
			
			//ajax Search
			$('#startDate').change(function(){
				 startDate =  $(this).val();
			})
			$('#endDate').change(function(){
				 endDate =  $(this).val();
					 $.ajax({
				 	type :"POST",
				 	url  :"<%=request.getContextPath()%>/bike/BikeStoreAjaxServlet.do",
				 	dataType:"JSON",
				 	data: {startDate: startDate, endDate: endDate , action : "searchDate"},
				 	sueecss:function(data){
				 		console.log(data);
				 	}
				 })
			})
			



			//datetimepicker
			$('#startDate').datetimepicker(
			{
						timepicker : true, //timepicker: false,
						step : 60, //step: 60 (這是timepicker的預設間隔60分鐘)
						format : 'Y-m-d H:i',
						value : '',
						minDate: '-1970-01-01',
						timepicker:true,
						onShow : function() {
							this.setOptions({
								maxDate : $('#endDate').val() ? $(
									'#endDate').val() : false
							})
						}
					//minDate:           '-1970-01-01', // 去除今日(不含)之前
					//maxDate:           '+1970-01-01'  // 去除今日(不含)之後
				});

			$('#endDate').datetimepicker(
			{
				format : 'Y-m-d H:i',
				onShow : function() {
					this.setOptions({
						minDate : $('#startDate').val() ? $(
							'#startDate').val() : false
					})
				},
				
				timepicker : true,
				step : 60
			})
		});
	</script>

</body>
</html>
