<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6rP6bwx68xLETAOegitESvzeU9Pp5biA"></script>
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->


<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/backBody"%>
<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/bikeStore/bikeStoreListAll.jsp">
			<span>全部商家</span></a>
		</li>
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/back-end/bikeStore/addBikeStore.jsp">
			<span style="padding-bottom: 8px; border-bottom: 3px blue solid;">新增商家</span></a>
		</li>
	</ul>
</div>
<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
<!-----------backNav----------->
<%@include file="/back-end/backFrame/backNav"%>
<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->
<div class="container mt-5">


	<div class="row">
		<div class="col">
			<form method="POST"
				action="<%=request.getContextPath()%>/bike/BikeStoreServlet.do"
				enctype="multipart/form-data">
				<!-- 					bike_store_name -->
				<div class="form-group row">
					<label for="bike_store_name" class="col-sm-2 col-form-label">店家名稱</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.bike_store_name==null?'':'is-invalid'}"
						id="bike_store_name" name="bike_store_name" placeholder="請輸入店家名稱"
						value="${param.bike_store_name}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.bike_store_name}</div>
				</div>
				
<!-- 				area -->
				<div class="form-group row">
					<label for="area" class="col-sm-2 col-form-label">請選擇區域</label>
					<select class="col-sm-10 form-control" name="area">
						<option value="北部" ${param.area==北部?'selected':''}>北部</option>
						<option value="東部" ${param.area==東部?'selected':''}>東部</option>
						<option value="南部" ${param.area==南部?'selected':''}>南部</option>
						<option value="西部" ${param.area==西部?'selected':''}>西部</option>
					</select>
				</div>
	
				

				<!--phone -->
				<div class="form-group row">
					<label for="phone" class="col-sm-2 col-form-label">電話</label> <input
						type="text"
						class="col-sm-10 form-control ${errorMsgs.phone==null?'':'is-invalid'}"
						id="phone" name="phone" value="${param.phone}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.phone}</div>
				</div>

				<!--store_email -->
				<div class="form-group row">
					<label for="store_email" class="col-sm-2 col-form-label">信箱</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.store_email==null?'':'is-invalid'}"
						id="store_email" name="store_email"
						value="${param.store_email}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.store_email}</div>
				</div>

				<!--location -->
				<div class="form-group row">
					<label for="location" class="col-sm-2 col-form-label">地址</label> <input
						type="text"
						class="col-sm-9 form-control ${errorMsgs.location==null?'':'is-invalid'}"
						id="location" name="location" value="${param.location}">
					<input type="button" class="btn btn-primary btn-sm btn-area ml-3" value="查詢"/>
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.location}</div>
				</div>
<!-- map -->
				<div class="row">
					<div class="offset-sm-3 col-sm-6 d-none" id="map"
						style="width: 350px; height: 350px"></div>
					<input type="hidden"  name="store_longitute" id="store_longitute"/>
					<input type="hidden"  name="store_latitute" id="store_latitute"/>
				</div>
				<!--store_opentime -->
				<div class="form-group row">
					<label for="store_opentime" class="col-sm-2 col-form-label">營業時間</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.store_opentime==null?'':'is-invalid'}"
						id="store_opentime" name="store_opentime" placeholder="格式:07:00–18:00"
						value="${param.store_opentime}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.store_opentime}</div>
				</div>

				<!--store_status -->
				<div class="form-group row">
					<label for="store_status" class="col-sm-2 col-form-label">店家狀態</label>
					<select class="col-sm-10 form-control" name="store_status">
						<option value="1" ${param.store_status==1?'selected':''}>開店</option>
						<option value="0" ${param.store_status==0?'selected':''}>休息</option>
						<option value="2" ${param.store_status==2?'selected':''}>歇業</option>
					</select>
				</div>
<!-- 				store_photo -->
				<div class="form-group row">
					<p class="col-sm-2 ">上傳圖片</p>
					<div
						class="custom-file col-sm-10 ${errorMsgs.store_photo==null?'':'is-invalid'}">
						<input type="file" class="custom-file-input " name="store_photo"
							id="upLoad"> <label class="custom-file-label" 
							for="upLoad" data-browse="上傳"></label>
					</div>
					<!--errorMsg -->
					<span class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.store_photo}</span>
				</div>

				<div id="showImg" class="text-center"></div>
				
				<input type="hidden" name="action" value="insert">
				<button type="submit" class="btn btn-outline-primary btn-block m-5">確認新增</button>
			</form>
		</div>
	</div>
</div>
<script>
//map
var map;
$(function(){
	var geocoder = new google.maps.Geocoder();
	$(".btn-area").on('click', function() {
		geocoder.geocode({
			'address': $("#location").val()
		}, function(results, status) {
			if (status == 'OK') {
					$("#map").removeClass("d-none");
					//long
					var store_longitute =  results[0].geometry.viewport.Ua.i;
					//lat
					var store_latitute = results[0].geometry.viewport.Za.i;
					$("#store_longitute").val(store_longitute);
					$("#store_latitute").val(store_latitute);
					initMap(store_latitute ,store_longitute);
				} else {
					alert("找不到定位，請重新輸入");
				}
			});
	});
})

function initMap(store_latitute ,store_longitute){
	var position = {
		lat: store_latitute,
		lng: store_longitute
	};
	var map = new google.maps.Map(document.getElementById('map'), {
		zoom: 15,
		center: position
	});
	var marker = new google.maps.Marker({
		position: position,
		map: map
	});
};
//picture

		$("#upLoad").change(()=>{
			$("#showImg").empty();
			var files = $("#upLoad")[0].files;
			if(files != null & files.length > 0){
				var file = files[0];
				if(file.type.indexOf('image') != -1){
					$(".custom-file-label").text(file.name);
					var reader = new FileReader();
					reader.addEventListener('load',(e)=>{
						var result = e.target.result;
						var img = document.createElement("img");
						img.src = result;
						img.classList.add("img-fluid");
						$("#showImg").append(img);
					})
					reader.readAsDataURL(file);
				}
			}
		});
</script>
<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>
