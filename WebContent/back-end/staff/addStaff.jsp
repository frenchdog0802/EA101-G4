<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
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
		<li class="nav-item"><a class="nav-link"
			href="<%=request.getContextPath()%>/back-end/staff/listAllStaff.jsp"><span>全部員工</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link active"
			href="<%=request.getContextPath()%>/back-end/staff/addStaff.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">新增員工</span></a>
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
			<button type="button"
				class="btn btn-secondary btn-sm mb-1 btn-smart float-right">神奇小按鈕</button>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<form method="POST"
				action="<%=request.getContextPath()%>/staff/staff.do"
				enctype="multipart/form-data" autocomplete="off">

				<div class="form-group row">
					<label for="sf_name" class="col-sm-2 col-form-label">姓名: </label> <input
						type="text"
						class="col-sm-10 form-control ${errorMsgs.sf_name==null?'':'is-invalid'} "
						id="sf_name" name="sf_name" placeholder="請輸入姓名" autocomplete="off"
						value="${param.sf_name}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_name}</div>
				</div>

				<!-- 				權限 -->
				<fieldset class="form-group">
					<div class="row">
						<legend class="col-form-label col-sm-2 pt-0">權限</legend>
						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="checkbox"
									name="gridRadios" id="gridRadios1" value="option1" >
								<label class="form-check-label" for="gridRadios1"> 網頁管理
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox"
									name="gridRadios" id="gridRadios2" value="option2"> <label
									class="form-check-label" for="gridRadios2"> 員工管理 </label>
							</div>
							<div class="form-check ">
								<input class="form-check-input" type="checkbox"
									name="gridRadios" id="gridRadios3" value="option3"> <label
									class="form-check-label" for="gridRadios3"> 會員管理 </label>
							</div>
							<div class="form-check ">
								<input class="form-check-input" type="checkbox"
									name="gridRadios" id="gridRadios4" value="option4"> <label
									class="form-check-label" for="gridRadios4"> 商城管理 </label>
							</div>
							<div class="form-check ">
								<input class="form-check-input" type="checkbox"
									name="gridRadios" id="gridRadios5" value="option5"> <label
									class="form-check-label" for="gridRadios5"> 路線管理 </label>
							</div>
						</div>
					</div>
				</fieldset>
				<!-- 				權限 -->


				<!--email -->
				<div class="form-group row">
					<label for="sf_email" class="col-sm-2 col-form-label ">信箱:</label>
					<input type="email"
						class="col-sm-10 form-control ${errorMsgs.sf_email==null?'':'is-invalid'}"
						id="sf_email" name="sf_email" placeholder="請輸入信箱"
						autocomplete="off" autoCorrect="off" value="${param.sf_email}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_email}</div>
				</div>
				<!--email -->


				<!--phone -->
				<div class="form-group row">
					<label for="sf_phone" class="col-sm-2 col-form-label ">電話:</label>
					<input type="number" name="sf_phone" value="${param.sf_phone}"
						id='sf_phone'
						class="col-sm-10 form-control  ${errorMsgs.sf_phone==null?'':'is-invalid'}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_phone}</div>
					<!--phone -->
				</div>


				<!--sf_address -->
				<div class="form-group row">
					<label for="sf_address" class="col-sm-2 col-form-label ">地址:</label>
					<input id="zipcode" name="zipcode" type="text"
						class="col-sm-1 form-control" style="width: 30px;"
						disabled="disabled" /> <select id="zone1" name="zone1"
						class="col-sm-2 form-control"></select> <select id="zone2"
						name="zone2" class="col-sm-2 form-control"></select> <input
						type="text" value="${param.sf_address}" id="sf_address"
						class="col-sm-5 form-control ${errorMsgs.sf_address==null?'':'is-invalid'}">
					<input type="hidden" name="sf_address" id="controller-sf_address">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_address}</div>
					<!--sf_address -->
				</div>


				<div class="form-group row">
					<p class="col-sm-2 ">上傳圖片</p>
					<div
						class="custom-file col-sm-10 ${errorMsgs.sf_photo==null?'':'is-invalid'}">
						<input type="file" class="custom-file-input " name="sf_photo"
							id="upLoad"> <label class="custom-file-label"
							for="upLoad" data-browse="上傳"></label>
					</div>
					<!--errorMsg -->
					<span class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_photo}</span>
				</div>

				<div id="showImg" class="text-center"></div>

				<input type="hidden" name="sf_status" value="0"> <input
					type="hidden" name="action" value="insert">
				<button type="submit" class="btn btn-primary btn-block m-5">確認送出</button>
			</form>
		</div>
	</div>
</div>
<script
	src="<%=request.getContextPath()%>/front-end/member/js/aj-address.js"
	type="text/javascript"></script>
<script>
$(function(){
	//神奇小按鈕
	$(".btn-smart").click(function(){
		smart_btn();
	})
	
	//觸發地址選單
	init_address();
});
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
				img.width = "300";
				img.height = "300";
				img.classList.add("img-fluid");
				$("#showImg").append(img);
			})
			reader.readAsDataURL(file);
		}
	}
});

//神奇小按鈕
function smart_btn(){
	//名稱
	var sf_name = "提利昂X蘭尼斯特";
	//密碼
	var sf_phone = "0987654321";
	//信箱
	var sf_email  = "x6815541@gmail.com";
	//地址
	var zone1 = "新北市";
	var zone2 = "淡水區";
	var sf_address = "King's Landinging";

	
	
	
	$("#sf_name").val(sf_name);
	$("#sf_email").val(sf_email);
	$("#sf_phone").val(sf_phone);
	$("#zone1").val(zone1);
	$("#zone1").trigger("change");
	$("#zone2").val(zone2);
	$("#zone2").trigger("change");  
	$("#sf_address").val(sf_address);
	$("#controller-sf_address").val(zone1+zone2+sf_address);
	
	$("#gridRadios1").attr("checked",true);
	$("#gridRadios2").attr("checked",true);
	$("#gridRadios3").attr("checked",true);
	$("#gridRadios4").attr("checked",true);
	$("#gridRadios5").attr("checked",true);
	
}
</script>
<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>
