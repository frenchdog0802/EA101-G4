<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.forum.model.*"%>
<%@ page import="com.member_login.model.*"%>
<%@ page import="com.member.model.*"%>
<%@ page import="com.forum_message.model.*"%>

<%
	ForumVO forumVO = (ForumVO) request.getAttribute("listOneTheme");
	MemLoginVO memLoginVO = (MemLoginVO) session.getAttribute("memLoginVO");
	MemVO Theme_memVO = (MemVO) request.getAttribute("Theme_memVO");
	ForumMessageVO forumMessageVO = (ForumMessageVO) request.getAttribute("message_listOne");
	
 	ForumMessageService messageSvc = new ForumMessageService();
	List<ForumMessageVO> list = messageSvc.getAll();
 	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>${forumVO.theme_name}</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/modern-business.css"
	rel="stylesheet">

</head>

<body>

	<!-- {forumVO.sq_theme_id} -->
	<!-- Page Content -->
	<div class="container">
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			<small><a href="#"><%=(forumVO == null) ? "標題" : forumVO.getTheme_name()%></a>
			</small>
			<c:if test="${memLoginVO.sq_member_id eq Theme_memVO.sq_member_id}">
				<FORM METHOD="post"
					ACTION="<%=request.getContextPath()%>/forum/forum.do">
					<input type="hidden" name="sq_theme_id"
						value="${forumVO.getsq_theme_id}" /> <input type="hidden"
						name="action" value="getOne_For_Update"> <input
						class="btn btn-primary" type="submit" value="修改內容">
			</c:if>
			</FORM>

		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="<%=request.getContextPath()%>/front-end/forum/listAllTheme.jsp">討論區</a>
			</li>
			<li class="breadcrumb-item active"><%=(Theme_memVO == null) ? "會員主題" : Theme_memVO.getNick_name()%>的主題</li>
			<li class="breadcrumb-item active"><%=(forumVO == null) ? "主題名稱" : forumVO.getTheme_name()%></li>
		</ol>

		<div class="row">
			<!-- Post Content Column -->
			<div class="col-lg-8">

				<!-- Preview Image -->
				<img class="card-img-top"
					src="<%=request.getContextPath()%>/forum/ForumDBReader.do?sq_theme_id=${forumVO.sq_theme_id}">
				<hr>

				<!-- Date/Time -->
				<p>
					Posted on<%=(forumVO == null) ? " " : forumVO.getTheme_time()%></p>

				<hr>

				<!-- Post Content -->
				<p class="lead"><%=(forumVO == null) ? "主題內文" : forumVO.getTheme_detial()%></p>


				<hr>

				<!-- Comments Form -->
				<div class="card my-4">

					<h5 class="card-header">Leave a Comment:</h5>
					<div class="card-body">
						<form METHOD="post"
							ACTION="<%=request.getContextPath()%>/forum/forum_message.do">
							<div class="form-group">
								<input type="hidden" name="sq_theme_id"
									value="${forumVO.sq_theme_id}" /> <input type="hidden"
									name="sq_member_id" value="${memLoginVO.sq_member_id}" />
								<textarea name="message_detail" class="form-control" rows="3">留言:<%=(forumMessageVO == null) ? " " : forumMessageVO.getMessage_detail()%></textarea>
							</div>
							<input type="hidden" name="action" value="insert">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>

				</div>
				
				

					<c:forEach var="forumMessageVO" items="${messageSvc.all}">
						<c:if test="${forumMessageVO.message_display_status eq 0}">
						<c:if test="${commVO.post_id == postVO.post_id}">
							<div class="media mb-4">
								<img class="d-flex mr-3 rounded-circle"
									src="http://placehold.it/50x50" alt="">

								<div class="media-body">
									<h5 class="mt-0">${forumMessageVO.sq_member_id}</h5>
									${forumMessageVO.message_detail }
								</div>
							</div>
							<!-- 						<div class="card-footer text-muted"> -->
							<%-- 							Posted on <a href=" ">${forumVO.theme_time}</a> --%>
							<!-- 						</div> -->
			</div>
			</c:if>
			</c:if>
			</c:forEach>
			

			<div class="media mb-4">
				<img class="d-flex mr-3 rounded-circle"
					src="http://placehold.it/50x50" alt="">
				<div class="media-body">
					<h5 class="mt-0">Commenter Name</h5>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div>
			</div>


		</div>
		<!-- Sidebar Widgets Column -->
		<div class="col-md-4">
			<!-- Search Widget -->

			<!-- Categories Widget -->
			<div class="card my-4">
				<div class="p-3 mb-2 bg-info text-white">發文者:${Theme_memVO.nick_name}</div>
				<div class="card-body">
					<div class="row">
						<ul class="list-unstyled mb-0">
							<img id="member_avatar"
								src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memLoginVO.sq_member_id}"
								style="height: 100px;">
							<div for="theme_member">
								會員編號：<%=(forumVO == null) ? " " : forumVO.getSq_member_id()%></div>

						</ul>
					</div>
				</div>
			</div>

			<div class="card mb-4">
				<h5 class="card-header">Search</h5>
				<div class="card-body">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..."> <span
							class="inpug-group-append">
							<button class="btn btn-secondary" type="button">Go!</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Side Widget -->

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
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
