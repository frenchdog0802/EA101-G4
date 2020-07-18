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
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/back-end/staff/listAllStaff.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">全部員工</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/staff/addStaff.jsp"><span>新增員工</span></a></li>
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
				action="<%=request.getContextPath()%>/staff/staff.do"
				enctype="multipart/form-data" autocomplete="off">

				<div class="form-group row">
					<label for="sf_name" class="col-sm-2 col-form-label">姓名: </label> <input
						type="text"
						class="col-sm-10 form-control ${errorMsgs.sf_name==null?'':'is-invalid'} "
						id="sf_name" name="sf_name" placeholder="請輸入姓名" autocomplete="off"
						value="${StaffVO.sf_name}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_name}</div>
				</div>

				<div class="form-group row">
					<label for="sf_name" class="col-sm-2 col-form-label">帳號: </label> <input
						type="text" class="col-sm-10 form-control " autocomplete="off"
						readonly value="${StaffVO.sf_account}">

				</div>


				<!--email -->
				<div class="form-group row">
					<label for="sf_email" class="col-sm-2 col-form-label ">信箱:</label>
					<input type="email"
						class="col-sm-10 form-control ${errorMsgs.sf_email==null?'':'is-invalid'}"
						id="sf_email" name="sf_email" placeholder="請輸入信箱"
						autocomplete="off" autoCorrect="off" value="${StaffVO.sf_email}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_email}</div>
				</div>
				<!--email -->


				<!--phone -->
				<div class="form-group row">
					<label for="sf_phone" class="col-sm-2 col-form-label ">電話:</label>
					<input type="number" name="sf_phone" value="${StaffVO.sf_phone}"
						class="col-sm-10 form-control  ${errorMsgs.sf_phone==null?'':'is-invalid'}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.sf_phone}</div>
					<!--phone -->
				</div>

				<!--status -->
				<div class="form-group row">
					<label for="sf_status" class="col-sm-2 col-form-label ">員工狀態:</label>
					<select name="sf_status">
						<option value="0" ${StaffVO.sf_status==0?'selected':''}>在職</option>
						<option value="1" ${StaffVO.sf_status==1?'selected':''}>離職</option>
					</select>
					<!--status -->
				</div>


				<!--sf_address -->
				<div class="form-group row">
					<label for="sf_address" class="col-sm-2 col-form-label ">地址:</label>
					<input type="text" name="sf_address" value="${StaffVO.sf_address}"
						class="col-sm-10 form-control ${errorMsgs.sf_address==null?'':'is-invalid'}">
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

				<div id="showImg" class="text-center">
					<img
						src="<%=request.getContextPath() %>/staff/StaffDBReader.do?sq_staff_id=${StaffVO.sq_staff_id}"
						class="img-fluid" width=200 height=200>
				</div>

				<input type="hidden" name="action" value="update"> <input
					type="hidden" name="sq_staff_id" value="${StaffVO.sq_staff_id}">
				<button type="submit" class="btn btn-outline-primary btn-block m-5">確認送出</button>
			</form>
		</div>
	</div>
</div>

<script>
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
