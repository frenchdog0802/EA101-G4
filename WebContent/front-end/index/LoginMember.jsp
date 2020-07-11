<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="login.css">
<title>Hello, world!</title>
</head>
<body>
<%@include file="/front-end/page-file/page-nav"%>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1">
		<div class="wrapper fadeInDown">
			<div id="formContent">
				<!-- Tabs Titles -->
				<!-- Icon -->
				<div class="fadeIn first">
					<h1 class="text-secondary">Sign In</h1>
					<img src="<%=request.getContextPath()%>/front-end/index/bike-img/home10.png" id="icon" alt="User Icon" />
				</div>
				<!-- Login Form -->
					<input type="text" id="login" autocomplete="off" class="fadeIn" placeholder="account" >
					<!--errorMSG -->
					<span class="small text-danger errorMsgCount d-block"></span>
					<input type="text" id="password" class="fadeIn third"  placeholder="password" autocomplete="off"> 
					<!--errorMSG -->
					<span class="small text-danger errorMsgPws d-block"></span>
					<input type="button" class="fadeIn submitbtn" value="login" />
				<!-- Remind Passowrd -->
				<div id="formFooter">
					<div id="formFooter">
						<a class="underlineHover mx-1" href="<%=request.getContextPath()%>/front-end/index/index.jsp">返回首頁</a> 
						<a class="underlineHover mx-1" href="#">註冊</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@include file="/front-end/page-file/page-footer"%>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
	<script>
	$( document ).ready(function(){
		$("#exampleModalCenter").modal();
		$(".submitbtn").click(function(){
			var login = $("#login").val();
			var pass = $("#password").val();
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/login/memlogin.do",
				data:{
					action:"login",
					member_account:login,
					password:pass
				},
				dataType:"JSON",
				success:function(data){
					$(".errorMsgCount").text(data.errorAccount);
					$(".errorMsgPws").text(data.errorPws);
					if(data.location!=null){
						window.location.href = data.location;
					}
				}
			})
	})
})
		
	</script>
</body>
</html>