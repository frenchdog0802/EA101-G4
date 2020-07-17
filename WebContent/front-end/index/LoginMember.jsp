<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
input[type=text], input[type=password] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #fff;
	border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder, input[type=password]:placeholder {
	color: #cccccc;
}
</style>
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
					<img
						src="<%=request.getContextPath()%>/front-end/index/bike-img/home10.png"
						id="icon" alt="User Icon" />
				</div>
				<!-- Login Form -->
				<input type="text" id="login" autocomplete="off" class="fadeIn"
					placeholder="請輸入帳號">
				<!--errorMSG -->
				<span class="small text-danger errorMsgCount d-block"></span> <input
					type="password" id="password" class="fadeIn" placeholder="請輸入密碼"
					autocomplete="new-password">
				<!--errorMSG -->
				<span class="small text-danger errorMsgPws d-block"></span> <input
					type="button" class="fadeIn submitbtn" value="login" />
				<!-- Remind Passowrd -->
				<div id="formFooter">
					<div id="formFooter">
						<a class="underlineHover mx-1"
							href="<%=request.getContextPath()%>/front-end/index/index.jsp">返回首頁</a>
						<a class="underlineHover mx-1"
							href="<%=request.getContextPath()%>/front-end/member/registered.jsp">註冊</a>
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
	$(document).ready(function(){
		$("#exampleModalCenter").modal();
		//偵測按下enter
		$("#password").keypress(function(e){
  			code = (e.keyCode ? e.keyCode : e.which);
  					if (code == 13){
  						var login = $("#login").val();
  						var pass = $("#password").val();
  						var url='';
  						$.ajax({
  							type:"POST",
  							url:"<%=request.getContextPath()%>/login/memlogin.do",
  								data : {
  									action : "login",
  									member_account : login,
  									password : pass
  								},
  								dataType : "JSON",
  								success : function(data) {
  									$(".errorMsgCount").text(data.errorAccount);
  									$(".errorMsgPws").text(data.errorPws);
  									//url
  									//data.location 
  									if(data.location != null){
  										window.location.href = data.location;
  									}
  								}
  							})
  					}
		});

    

  


		$(".submitbtn").click(function(){
			var login = $("#login").val();
			var pass = $("#password").val();
			var url='';
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/login/memlogin.do",
					data : {
						action : "login",
						member_account : login,
						password : pass
					},
					dataType : "JSON",
					success : function(data) {
						$(".errorMsgCount").text(data.errorAccount);
						$(".errorMsgPws").text(data.errorPws);
						//url
						//data.location 
						if(data.location != null){
								window.location.href = data.location;
							}					}
				})
			})
		})
	</script>
</body>
</html>