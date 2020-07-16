<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.forum.model.*"%>
<%@ page import="com.member_login.model.*"%>
<%@ page import="com.member.model.*"%>

<%
	ForumVO forumVO = (ForumVO) request.getAttribute("update_Theme_input");

	MemVO memLoginVO = (MemVO) session.getAttribute("MemVO");
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/front-end/index/index.css">

<title>主題資料修改</title>

<!-- Bootstrap core CSS -->

<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/modern-business.css"
	rel="stylesheet">

<style>
body {
	font-family: Arial, "Microsoft JhengHei", Helvetica, sans-serif;
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

	<div class="container my-5">



		<!-- Page Content -->
		<div class="container">

			<!-- Page Heading/Breadcrumbs -->
			<h1 class="mt-4 mb-3">
				PAPAGO <small> <a href="#"></a>
				</small>
			</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="<%=request.getContextPath()%>/front-end/forum/listAllTheme.jsp">討論區</a>
				</li>
				<li class="breadcrumb-item active">修改主題</li>
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
							<label>主題顯示狀態</label> <select name="theme_display_status">
								<option value="0"
									${forumVO.theme_display_status eq 0 ? "selected" : "" }>顯示</option>
								<option value="1"
									${forumVO.theme_display_status ne 1 ? "selected" : "" }>隱藏</option>
							</select> <img class="card-img-top" height="200"
								src="<%=request.getContextPath()%>/forum/ForumDBReader.do?sq_theme_id=${forumVO.sq_theme_id}">
							<!-- 						<img id="theme_pic" class="img-fluid rounded" src="#"> -->
						</div>
						<!-- Comments Form -->
						<div class="card my-4">
							<h5 class="card-header">內容修改</h5>
							<div class="card-body">

								<div class="form-group">

									<label for="theme_name">主題:</label> <input type="TEXT"
										name="theme_name" value="<%=forumVO.getTheme_name()%>" />
								</div>

								<hr>

								<div class="form-group">
									<textarea class="form-control" height="auto" rows="16"
										name="theme_detial"><%=forumVO.getTheme_detial()%></textarea>
								</div>
								<input type="hidden" name="sq_theme_id"
									value="<%=forumVO.getSq_theme_id()%>"> <input
									type="hidden" name="reponse_sum"
									value="<%=forumVO.getReponse_sum()%>">
								<%-- 							<input type="hidden" name="theme_display_status" value="<%=forumVO.getTheme_display_status()%>">  --%>
								<input type="hidden" name="sq_member_id"
									value="<%=forumVO.getSq_member_id()%>"> <input
									type="hidden" name="action" value="update">


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


				Categories Widget
				<div class="card my-4">
					<div class="p-3 mb-2 bg-info text-white">樓主:${memVO.nick_name}</div>
					<div class="card-body">
						<div class="row">
							<ul class="list-unstyled mb-0">
								<img id="member_avatar"
									src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${forumVO.sq_member_id}"
									style="height: 100px;">
								<div for="theme_name">會員編號：${forumVO.sq_member_id}</div>

								<li><a href="#">Freebies</a></li>
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

	</div>



	<%@include file="/front-end/page-file/page-footer"%>



	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script>
		$(function() {
			$(".fun-text").text("修改主題"); // text("")裡面自己輸入功能名稱 
		});
	</script>


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
