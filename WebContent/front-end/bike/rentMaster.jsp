<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="BikeStoreSvc" class="com.bike.store.model.BikeStoreService" scope="page"/>	
<jsp:useBean id="BikeStoreVO" class="com.bike.store.model.BikeStoreVO" scope="session"/>	
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService" scope="page"/>	
<jsp:useBean id="BikeTypeSvc" class="com.bike.type.model.BikeTypeService" scope="page"/>	
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<style>
.map-container-5 {
	overflow: hidden;
	padding-bottom: 56.25%;
	position: relative;
	height: 0;
}

.storeList {
	line-height: 180%;
}

.iframe-maps iframe {
	position: relative;
	top: 0;
	left: 0;
	width: 100% !important;
	height: 100% !important;
}
</style>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container my-5">
		<div class="row">
			<!-- 店家資訊 -->
			<div class="col-4">
				<div class="row">
					<div class="col">
						<!--Google map-->
						<div class="iframe-maps">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.6391103405977!2d-122.0862461843548!3d37.422004140149184!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fba02425dad8f%3A0x6c296c66619367e0!2sGoogleplex!5e0!3m2!1sen!2slk!4v1544010623115"
								width="600" height="500" frameborder="0" style="border: 0"
								allowfullscreen></iframe>
						</div>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<div class="card">
							<div class="card-header p-4 text-center">
								<h2 class="h2 font-weight-bold">${BikeStoreVO.bike_store_name }</h2>
							</div>
							<ul class="list-group list-group-flush ">
								<li class="list-group-item mt-2">地址<span
									class="float-right">${BikeStoreVO.location }</span></li>
								<li class="list-group-item my-3">電話<span
									class="float-right">${BikeStoreVO.phone }</span></li>
								<li class="list-group-item">營業時間<span class="float-right">${BikeStoreVO.store_opentime }</span></li>
								
								<li class="list-group-item">預計租車時間<span class="float-right text-danger">${startDate}</span></li>
							
								<li class="list-group-item">預計還車時間<span class="float-right text-danger">${endDate}</span></li>
							
								<li class="list-group-item">店家目前<span class="float-right text-danger">剩餘:${matchBike}台</span></li>
								
								<li class="list-group-item">目前車種<span class="float-right text-danger">剩餘:<span class="bikeSum"></span>台</span></li>
							
								
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- 單車資訊 -->
			<div class="col-8">
				<div class="row">
					<div class="col">
						<div class="form-group">
							<select class="form-control selectBikeType">
									<option value="" disabled selected>選擇車種</option>
									<c:forEach var="bikeTypeId" items="${BikeSvc.findStoreBikeType(BikeStoreVO.sq_bike_store_id)}">
										<option value="${bikeTypeId}">${BikeTypeSvc.findByPrimaryKey(bikeTypeId).bike_type_name}</option>
									</c:forEach>
							</select>
						</div>
					</div>
					<div class="col ">
						<select class="form-control selectBikeQuantity" >
							<option value="" disabled selected>選擇數量</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col ">
						<div class="row">
							<div class="col text-center ">
								<img src="bike-img/6-1.jpg" class="img-thumbnail" id="bike-img" alt=""/>
							</div>
						</div>

						<div class="row m-3">
							<div class="col text-center">
								<h5 class="bike_title"></h5>

								<p class="bike_description"></p>
							</div>
						</div>

						<ul class="list-group list-group-flush">
							<li class="list-group-item mt-4">Hourly Rate :<span
								class="float-right">40</span></li>
							<li class="list-group-item my-4">Daily Rate : <span
								class="float-right">80</span></li>
						</ul>



						<div class="row">
							<div class="col text-center">
								<button class="btn btn-primary">Book now</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<%@include file="/front-end/page-file/page-footer"%>
	<!-- 	基本的jquery已經引入  需要datetimepicker再自己引入 -->

	<script>
	$(function(){
		$(".fun-text").text("選擇車種");  // text("")裡面自己輸入功能名稱
		
		$(".selectBikeType").click(function(){
			var bikeTypeId = $(this).val();
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/bike/BikeStoreAjaxServlet.do",
				data:{
					action:"findTypeQuantity",
					bikeTypeId : bikeTypeId,
				},
				dataType:"JSON",
				success:function(data){
					
					$(".bikeSum").text(data.bikeSum);
					$(".bike_title").text(data.bike_title);
					$(".bike_description").text(data.bike_description);
					$("#bike-img").attr("src","<%=request.getContextPath()%>/photo/DBReader.do?sq_bike_type_id="+bikeTypeId);
					
					//select 數量
					$(".selectBikeQuantity option").remove();
					var bikeSum = parseInt(data.bikeSum);
					for(var i=0 ; i<=bikeSum ; i++){
						$(".selectBikeQuantity").append($("<option></option>").attr("value", i).text(i));
					}
					
				},
			
			})
		})
		
		
	});
	</script>

</body>
</html>
