<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member_login.model.*"%>

<%
	MemLoginVO memLoginVO = (MemLoginVO) request.getAttribute("memLoginVO");
%>

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
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModalCenter">Launch demo modal</button>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		style="display: none;" aria-hidden="true">
		<div class="wrapper fadeInDown">
			<div id="formContent">
				<!-- Tabs Titles -->

				<!-- Icon -->
				<div class="fadeIn first">
					<h1>Login</h1>
					<img src="<%=request.getContextPath()%>/front-end/index/bike-img/home10.png" id="icon" alt="User Icon" />
				</div>
				<div>
					<c:if test="${not empty errorMsgs}">
						<font style="color: red">請修正以下錯誤:</font>
						<ul>
							<c:forEach var="message" items="${errorMsgs}">
								<li style="color: red">${message}</li>
							</c:forEach>
						</ul>
					</c:if>
				</div>
				<!-- Login Form -->
					<input type="text" id="login" autocomplete="off" class="fadeIn second" name="member_account" placeholder="account" 
						value="<%=(memLoginVO == null) ? "": memLoginVO.getMember_account()%>">
					<input type="text" id="password" class="fadeIn third" name="login" placeholder="password" autocomplete="off"> 
						<input type="submit" class="fadeIn submitbtn" name="action" value="login" />
						

				<!-- Remind Passowrd -->
				<div id="formFooter">
					<div id="formFooter">
						<a class="underlineHover mx-1" href="#">返回網頁</a> 
						<a class="underlineHover mx-1" href="#">註冊</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
	<script>
	$( document ).ready(function(){
		$(".submitbtn").click(function(){
			var login = $("#login").val();
			var pass = $("#password").val();
			console.log(login);
			console.log(pass);
	})})
		
	</script>
</body>
</html>