<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<script src="<%=request.getContextPath()%>/front-end/member/js/aj-address.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
    <title>註冊</title>
</head>
<style>
.rowGray{
    background-color: #fafafa;
}
</style>
<body onload="init_address();">
	<%@include file="/front-end/page-file/page-nav"%>
	
<div class="container mt-3 rowGray" >
		<!-- Page Heading/Breadcrumbs -->
			<h1 class="mt-4 mb-2">
				註冊會員<button class="btn btn-primary btn-sm btn-smart float-right">神奇小按鈕</button>
			</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="<%=request.getContextPath()%>/front-end/index/index.jsp">Home</a>
				</li>
				<li class="breadcrumb-item active">註冊會員 </li>
			</ol>
 
	<div class="row">
		<div class="col">
			<form method="POST"
				action="<%=request.getContextPath()%>/member/mem.do"
				enctype="multipart/form-data" autocomplete="off">
		
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
					<input type="text" class="col-sm-10 form-control ${errorMsgs.birthday==null?'':'is-invalid'}" id="birthday" name="birthday">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.birthday}</div>
				<!--birth -->
				</div>
				
				
				<!--phone -->
				<div class="form-group row">
					<label for="cellphone" class="col-sm-2 col-form-label ">電話:</label>
					<input id="cellphone" type="text" name="cellphone" value="${param.cellphone}" class="col-sm-10 form-control  ${errorMsgs.phone==null?'':'is-invalid'}" >
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.phone}</div>
				<!--phone -->
				</div>
				
				
				<!--address -->
				<div class="form-group row">
					<label for="address" class="col-sm-2 col-form-label ">地址:</label>
					<input id="zipcode" name="zipcode" type="text" class="col-sm-1 form-control" style="width: 30px;" disabled="disabled" />
					<select id="zone1" name="zone1" class="col-sm-2 form-control"></select>
					<select  id="zone2" name="zone2" class="col-sm-2 form-control"></select>
					<input type="text" id="address"  value="${param.address}" class="col-sm-5 form-control ${errorMsgs.address==null?'':'is-invalid'}" >
					<input type="hidden" name="address" id="address-controller">
					<!--errorMsg -->
					<div class="invalid-feedback col-sm-10 offset-md-2">${errorMsgs.address}</div>
				<!--address -->
				</div>
				

				<div class="form-group row">
					<p class="col-sm-2 ">上傳圖片</p>
					<div class="custom-file col-sm-10 ${errorMsgs.m_photo==null?'':'is-invalid'}">
						<input type="file"
							class="custom-file-input "
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
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	jquery已經引入  -->
<!-- 	sweetAlert已經引入   -->
<!-- 	boostrap4已經引入   -->
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
	<script>
	$(document).ready(function(){
		$(".btn-smart").click(function(){
			//神奇小按鈕
			smart_btn();
			 
		})
	})
		
		
		
	//成功回來寄發驗證信
	<c:if test="${param.validation=='email'}">
	Swal.fire({
		  title: '請去信箱認證會員',
		  width: 600,
		  padding: '3em',
		  background: '#fff url(/images/trees.png)',
		  backdrop: `
		    rgba(0,0,123,0.4)
		    url("/images/nyan-cat.gif")
		    left top
		    no-repeat
		  `
		}).then((result) => {
			window.location.href="<%=request.getContextPath()%>/front-end/index/LoginMember.jsp";
		});
	</c:if>
	
	//datetimepicker
	$('#birthday').datetimepicker({
		timepicker: false,
		format: 'Y-m-d', 
		value:"${param.birthday}",
		maxDate:'+1970-01-01',
	})
	
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
	
	//神奇小按鈕
	function smart_btn(){
		//姓名
		var m_name = "JOHN史諾";
		//帳號
		var account = "JOHN_SNOW";
		//密碼
		var password = "JOHN123";
		//信箱
		var m_email  = "ea101g4@gmail.com";
		//性別
		var gender = "1";
		//生日
		var birthday = "1989-02-29";
		//電話
		var cellphone = "0987789654";
		//地址
		var zone1 = "桃園市";
		var zone2 = "八德區";
		var address = "維斯特洛309教室";
		
		
		$("#m_name").val(m_name);
		$("#account").val(account);
		$("#password").val(password);
		$("#m_email").val(m_email);
		$("#gender").val(gender);
		$("#birthday").val(birthday);
		$("#cellphone").val(cellphone);
		
		$("#zone1").val(zone1);
		$("#zone1").trigger("change");
		$("#zone2").val(zone2);
		$("#zone2").trigger("change");  
		$("#address").val(address);
		$("#address-controller").val(zone1+zone2+address);
		
	}
	</script>

</body>
</html>
