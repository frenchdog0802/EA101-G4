<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<<jsp:useBean id="BikeStoreSvc"
	class="com.bike.store.model.BikeStoreService" />
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->

<!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/backBody"%>
<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/back-end/bikeStore/bikeStoreListAll.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">全部商家</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/bikeStore/addBikeStore.jsp"><span>新增商家</span></a>
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
				<div class="form-group row">
					<!-- sq_bike_store_id要跟後台比對的值 -->
					<input type="hidden" name="sq_bike_store_id" readonly
						value="${BikeStoreVO.sq_bike_store_id}"> <label
						for="sq_bike_store_id" class="col-sm-2 col-form-label">店家編號</label>
					<input type="text" readonly
						class="col-sm-10 form-control ${errorMsgs.sq_bike_store_id==null?'':'is-invalid'} "
						id="sq_bike_store_id" name="sq_bike_store_id"
						placeholder="請輸入車種類型" value="${BikeStoreVO.sq_bike_store_id}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sq_bike_store_id}</div>
				</div>
				<!-- 					bike_store_name -->
				<div class="form-group row">
					<label for="bike_store_name" class="col-sm-2 col-form-label">店家名稱</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.bike_store_name==null?'':'is-invalid'}"
						id="bike_store_name" name="bike_store_name" placeholder="請輸入單車標題"
						value="${BikeStoreVO.bike_store_name}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.bike_store_name}</div>
				</div>

				<!-- 					store_account -->
				<div class="form-group row">
					<label for="store_account" class="col-sm-2 col-form-label">店家帳號</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.store_account==null?'':'is-invalid'}"
						id="store_account" name="store_account" readonly
						value="${BikeStoreVO.store_account}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.store_account}</div>
				</div>

				<!--phone -->
				<div class="form-group row">
					<label for="phone" class="col-sm-2 col-form-label">電話</label> <input
						type="text"
						class="col-sm-10 form-control ${errorMsgs.phone==null?'':'is-invalid'}"
						id="phone" name="phone" value="${BikeStoreVO.phone}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.phone}</div>
				</div>

				<!--store_email -->
				<div class="form-group row">
					<label for="store_email" class="col-sm-2 col-form-label">信箱</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.store_email==null?'':'is-invalid'}"
						id="store_email" name="store_email"
						value="${BikeStoreVO.store_email}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.store_email}</div>
				</div>

				<!--location -->
				<div class="form-group row">
					<label for="location" class="col-sm-2 col-form-label">地址</label> <input
						type="text"
						class="col-sm-10 form-control ${errorMsgs.location==null?'':'is-invalid'}"
						id="location" name="location" value="${BikeStoreVO.location}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.location}</div>
				</div>

				<div class="row">
					<div class="offset-sm-3 col-sm-6" id="map"
						style="width: 350px; height: 350px"></div>
				</div>
				<!--store_opentime -->
				<div class="form-group row">
					<label for="store_opentime" class="col-sm-2 col-form-label">營業時間</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.store_opentime==null?'':'is-invalid'}"
						id="store_opentime" name="store_opentime"
						value="${BikeStoreVO.store_opentime}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.store_opentime}</div>
				</div>

				<!--store_status -->
				<div class="form-group row">
					<label for="store_status" class="col-sm-2 col-form-label">店家狀態</label>
					<select class="col-sm-10 form-control" name="store_status">
						<option value="0" ${BikeStoreVO.store_status==0?'selected':''}>休息</option>
						<option value="1" ${BikeStoreVO.store_status==1?'selected':''}>開店</option>
						<option value="2" ${BikeStoreVO.store_status==2?'selected':''}>歇業</option>
					</select>

				</div>

				<div class="form-group row">
					<p class="col-sm-2 ">上傳圖片</p>
					<div class="custom-file col-sm-10 ">
						<input type="file" class="custom-file-input" name="bike_photo"
							id="upLoad"> <label class="custom-file-label"
							for="upLoad" data-browse="上傳"></label>
					</div>
				</div>
				<div id="showImg" class="text-center">
					<img
						src="<%=request.getContextPath()%>/bike/BikeStoreDBReader.do?sq_bike_store_id=${BikeStoreVO.sq_bike_store_id}"
						width="100" height="100">
				</div>
				<input type="hidden" name="action" value="getOne_For_Update">
				<button type="submit" class="btn btn-outline-primary btn-block m-5">確認修改</button>
			</form>
		</div>
	</div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>

<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6rP6bwx68xLETAOegitESvzeU9Pp5biA"></script>
<script>
var map;
$(function(){
	initMap() ;
})
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
