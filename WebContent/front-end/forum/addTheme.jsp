<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.forum.model.*"%>
<%@ page import="com.member_login.model.*"%>
<%@ page import="com.member.model.*"%>

<%
	ForumVO forumVO = (ForumVO) request.getAttribute("addTheme");

	MemVO MemVO = (MemVO) session.getAttribute("MemVO");
	MemVO memVO = (MemVO) request.getAttribute("memVO");
%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>PAPAGO新增主題</title>

<!-- Bootstrap core CSS -->

<link href="<%=request.getContextPath()%>/front-end/forum/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/front-end/forum/css/modern-business.css" rel="stylesheet">

<style>
body {
	font-family: Arial, "Microsoft JhengHei", Helvetica, sans-serif;
	padding-top: -56px;
}

input[type="text"] {
	width: 100%;
}

input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.custom-file-upload {
	border: 1px solid #ccc;
	display: inline-block;
	padding: 6px 12px;
	cursor: pointer;
}

</style>
</head>

<body>
<%@include file="/front-end/page-file/page-nav"%>



	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			PAPAGO <small> <a href="#">新增主題</a>
			</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="<%=request.getContextPath()%>/front-end/forum/listAllTheme.jsp">討論區</a>
			</li>
			<li class="breadcrumb-item active">新增主題</li>
		</ol>

		<div class="row">

			<!-- Post Content Column -->
			<div class="col-lg-8">
				<div>
					<c:if test="${not empty errorMsgs}">
						<strong>請修正以下錯誤:</strong>
						<ul>
							<c:forEach var="message" items="${errorMsgs}">
								<li style="color: red">${message}</li>
							</c:forEach>
						</ul>
					</c:if>
				</div>
				<!-- Preview Image -->
				<form action="<%=request.getContextPath()%>/forum/forum.do"
					method="post" name="form1" enctype="multipart/form-data">

					<div class="input">
						<img class="card-img-top" height="200"
								src="<%=request.getContextPath()%>/forum/ForumDBReader.do?sq_theme_id=${forumVO.sq_theme_id}">
					</div>
					<!-- Comments Form -->
					<div class="card my-4">
						<h5 class="card-header">發表新主題</h5>
						<div class="card-body">

							<div class="form-group">

								<label for="theme_name">主題:</label> <input type="TEXT"
									name="theme_name"
									value="<%=(forumVO == null) ? "" : forumVO.getTheme_name()%>" />
							</div>
							

							<div class="form-group">
								<textarea class="form-control" rows="16" name="theme_detial">內容:<%=(forumVO == null) ? "" : forumVO.getTheme_detial()%></textarea>
							</div>
							<input type="hidden" name="reponse_sum" value="0"> <input
								type="hidden" name="theme_display_status" value="0"> <input
								type="hidden" name="sq_member_id"
								value="${MemVO.sq_member_id}"> <input type="hidden"
								name="action" value="insert">
								
								
							<div class="card mb-4">
								<h5 class="card-header">上傳圖片</h5>
								<div class="card-body">
									<div class="input-group">
										<span class="inpug-group-append"> <label
											for="file-upload" class="custom-file-upload"> <i
												class="fa fa-cloud-upload"></i> 選擇圖片
										</label> <input id="file-upload" type="file" name="theme_pic" />
										</span>
									</div>
								</div>
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>

						</div>
				</form>
			</div>

		</div>

		<!-- Sidebar Widgets Column -->
		<div class="col-md-4">

			<!-- Search Widget -->

			<div class="card my-4">
				<div class="p-3 mb-2 bg-info text-white">發文者:${MemVO.nick_name}</div>
				<div class="card-body">
					<div class="row">
						<ul class="list-unstyled mb-0">
							<img id="member_avatar"
								src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memVO.sq_member_id}"
								style="height: 100px;">
							<div for="member_id">會員編號：${MemVO.sq_member_id}</div>
							<div  for="m_email">E-mail：${MemVO.m_email}</div>
<%-- 							<li for="theme_name">性別：${memVO.getGender()==1 ? "男" : "女"}</li> --%>
								
							
						</ul>


					</div>
				</div>
			</div>

		</div>

	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/front-end/forum/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/front-end/forum/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#theme_pic').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#m_photo_id").change(function() {
		readURL(this);
	});
</script>
</html>
