<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="BikeStoreSvc"
	class="com.bike.store.model.BikeStoreService" scope="page" />
<jsp:useBean id="BikeStoreVO" class="com.bike.store.model.BikeStoreVO"
	scope="session" />
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService"
	scope="page" />
<jsp:useBean id="BikeTypeSvc"
	class="com.bike.type.model.BikeTypeService" scope="page" />
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6rP6bwx68xLETAOegitESvzeU9Pp5biA"></script>
	
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
	<div class="container mt-3">
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">車種選擇</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="<%=request.getContextPath()%>/front-end/bike/memberOrder.jsp">Home</a>
			</li>
			<li class="breadcrumb-item ">預約租車</li>
			<li class="breadcrumb-item active">車種選擇</li>
		</ol>
	</div>

	<div class="container my-5">
		<div class="row">
			<!-- 店家資訊 -->
			<div class="col-4">
				<div class="row">
					<div class="col">
						<!--Google map-->
						<div id="map" style="height:200px;">
							
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

								<li class="list-group-item">預計租車時間<span
									class="float-right text-danger">${startDate}</span></li>

								<li class="list-group-item">預計還車時間<span
									class="float-right text-danger">${endDate}</span></li>

								<li class="list-group-item">店家目前<span
									class="float-right text-danger">剩餘:${matchBike}台</span></li>

								<li class="list-group-item">目前車種<span
									class="float-right text-danger">剩餘:<span class="bikeSum"></span>台
								</span></li>


							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- 單車資訊 -->

			<div class="col-8">
				<form
					action="<%=request.getContextPath()%>/bike/BikeStoreAjaxServlet.do"
					method="post">
					<div class="row">
						<div class="col">

							<div class="form-group">
								<select class="form-control selectBikeType"
									name="selectBikeType">
									<option value="" disabled selected>選擇車種</option>
									<c:forEach var="bikeTypeId"
										items="${BikeSvc.findStoreBikeType(BikeStoreVO.sq_bike_store_id)}">
										<option value="${bikeTypeId}">${BikeTypeSvc.findByPrimaryKey(bikeTypeId).bike_type_name}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="col ">
							<select class="form-control selectBikeQuantity"
								name="selectBikeQuantity">
								<option value="default" disabled selected>選擇數量</option>
							</select>
							<div class="small text-danger parseIntQuantity"></div>
						</div>
					</div>
					<div class="row">
						<div class="col ">
							<div class="row">
								<div class="col text-center ">
									<img src="" width=350 height=255 class="img-thumbnail"
										id="bike-img" alt="" />
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
									class="float-right bike_hourly_price"></span></li>
								<li class="list-group-item my-4">Daily Rate : <span
									class="float-right bike_daily_price"></span></li>
							</ul>



							<div class="row">
								<div class="col text-center">
									<button type="button" class="btn btn-dark btn-add">加入清單</button>
								</div>
								<div class="col text-center">
									<input type="hidden" value="bookNow" name="action">
									<button type="submit" class="btn btn-primary">BOOK NOW</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%@include file="/front-end/page-file/page-footer"%>
	<!-- 	基本的jquery已經引入  需要datetimepicker再自己引入 -->

	<script>
					$(function(){
						//啟動google map
						initMap() ;
		$(".fun-text").text("選擇車種");  // text("")裡面自己輸入功能名稱
		
		
		//選擇車輛.change
		$(".selectBikeType").change(function(){
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
					//BikeTypeVO物件
					var BikeTypeVO = JSON.parse(data.BikeTypeVOStr);
					
					//帶入參數
					$(".bikeSum").text(data.bikeSum);
					$("#bike-img").attr("src","<%=request.getContextPath()%>/photo/DBReader.do?sq_bike_type_id="+BikeTypeVO.sq_bike_type_id);
					$(".bike_title").text(BikeTypeVO.bike_title);
					$(".bike_description").text(BikeTypeVO.bike_description);
					$(".bike_hourly_price").text(BikeTypeVO.bike_hourly_price);
					$(".bike_daily_price").text(BikeTypeVO.bike_daily_price);
					//select 數量
					$(".selectBikeQuantity option[value!='default']").remove();
					var bikeSum = parseInt(data.bikeSum);
					for(var i=1 ; i<=bikeSum ; i++){
						$(".selectBikeQuantity").append($("<option></option>").attr("value", i).text(i));
					}
				},
			})
		})
		//預設第一台車種.change
		$(".selectBikeType").prop("selectedIndex", 1).change();
		
		//加入清單
		$(".btn-add").click(function(){
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/bike/BikeStoreAjaxServlet.do",
				data:{
					action:"btn-add",
					selectBikeType : $(".selectBikeType").val(),
					selectBikeQuantity : $(".selectBikeQuantity").val(),
				},
				dataType:"JSON",
				success:function(data){
				//錯誤處理
				$(".parseIntQuantity").text(data.parseIntQuantity);
				},
				error:function(){
					$(".parseIntQuantity").text('');
					//sweetAlert
					Swal.fire(
						'成功!',
						'已加入租車清單!',
						'success'
						);
				}
			})
		})
		
	});
					var map;
					function initMap(){
					  var position = {
					    lat: ${BikeStoreVO.store_latitute},
					    lng: ${BikeStoreVO.store_longitute}
					  };
					  var map = new google.maps.Map(document.getElementById('map'), {
					    zoom: 18,
					    center: position
					  });
					  var marker = new google.maps.Marker({
					    position: position,
					    map: map
					  });
					}

</script>

</body>
</html>