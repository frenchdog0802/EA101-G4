<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->

<link   rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
    <title>註冊</title>
</head>

<body>
	<%@include file="/front-end/page-file/page-nav"%>
	
 	<div class="container my-5">
 	
<div class="container mt-5">
	<div class="row">
		<div class="col">
			<form method="POST"
				action="<%=request.getContextPath()%>/member/mem.do"
				enctype="multipart/form-data " autocomplete="off">
		
				<div class="form-group row">
					<label for="m_name" class="col-sm-2 col-form-label">姓名:
					</label> 
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.m_name==null?'':'is-invalid'} "
						id="m_name" name="m_name" placeholder="請輸入姓名" autocomplete="off"
						value="${param.m_name}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.m_name}</div>
				</div>

				<div class="form-group row">
					<label for="account" class="col-sm-2 col-form-label">帳號:</label>
					<input type="text"
						class="col-sm-10 form-control ${errorMsgs.member_account==null?'':'is-invalid'}"
						id="account" name="member_account" placeholder="請輸入帳號"  autocomplete="off" 
						value="${param.member_account}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.member_account}</div>
				</div>

				<div class="form-group row">
					<label for="password" class="col-sm-2 col-form-label ">密碼:</label>
					<input type="password"
						class="col-sm-10 form-control ${errorMsgs.password==null?'':'is-invalid'}"
						id="password" name="password" placeholder="請輸入密碼" autocomplete="new-password"
						value="${param.password}" >
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.password}</div>
				</div>

				<!--email -->
				<div class="form-group row">
					<label for="m_email" class="col-sm-2 col-form-label ">信箱:</label>
					<input type="email"
						class="col-sm-10 form-control ${errorMsgs.password==null?'':'is-invalid'}"
						id="m_email" name="m_email" placeholder="請輸入信箱" autocomplete="off" autoCorrect="off"
						value="${param.m_email}">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.m_email}</div>
				</div>
				<!--email -->
				
				<!--gender -->
				<div class="form-group row">
					<label for="gender" class="col-sm-2  col-form-label ">性別:</label>
					<select name="gender" id="gender" class="form-control col-sm-10">
							<option value="1" ${param.gender==1?"selected":""}>男</option>
							<option value="2" ${param.gender==2?"selected":""}>女</option>
					</select>
				</div>
				<!--gender -->
				
				<!--birth -->
				<div class="form-group row">
					<label for="birthday" class="col-sm-2 col-form-label ">生日:</label>
					<input type="text" class="col-sm-10 form-control" id="birthday" >
				</div>
				<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.birthday}</div>
				<!--birth -->
				
				<!--phone -->
				<div class="form-group row">
					<label for="cellphone" class="col-sm-2 col-form-label ">電話:</label>
					<input type="number" name="cellphone" value="${param.cellphone}" class="col-sm-10 form-control" >
				</div>
				<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.phone}</div>
				<!--phone -->
				
				<!--address -->
				<div class="form-group row">
					<label for="address" class="col-sm-2 col-form-label ">地址:</label>
					<input type="text" name="address" value="${param.address}" class="col-sm-10 form-control" >
				</div>
				<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.address}</div>
				<!--address -->

				<div class="form-group row">
					<p class="col-sm-2 ">上傳圖片</p>
					<div class="custom-file col-sm-10 ">
						<input type="file"
							class="custom-file-input ${errorMsgs.bike_photo==null?'':'is-invalid'}"
							name="m_photo" id="upLoad"> <label
							class="custom-file-label" for="upLoad" data-browse="上傳"></label>
					</div>
					<!--errorMsg -->
					<span class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.m_photo}</span>
				</div>

				<div id="showImg" class="text-center">
				</div>
				
				<input type="hidden" name="validation" value="0">
				<input type="hidden" name="action" value="insert">
				<button type="submit" class="btn btn-outline-primary btn-block m-5">確認送出</button>
			</form>
		</div>
	</div>
</div>
 	</div>
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	jquery已經引入  -->
<!-- 	sweetAlert已經引入   -->
<!-- 	boostrap4已經引入   -->
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
	<script>
	//datetimepicker
	$('#birthday').datetimepicker()
	
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

</body>
</html>
