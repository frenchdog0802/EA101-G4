<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.forum.model.*"%>
<%@ page import="com.member_login.model.*"%>
<%@ page import="com.member.model.*"%>

<%
	ForumVO forumVO = (ForumVO) request.getAttribute("forumVO");

	MemLoginVO memLoginVO = (MemLoginVO) session.getAttribute("MemVO");
	MemVO memVO = (MemVO) request.getAttribute("memVO");
	
	ForumService forumSvc = new ForumService();
	List<ForumVO> list = forumSvc.getAll();
	pageContext.setAttribute("list", list);
	 
	 MemService memSvc = new MemService();
	 List<MemVO> listmem = memSvc.getAll();
	 pageContext.setAttribute("listmem",listmem);
	 
	 
	
	
%>

<jsp:useBean id="memberSvc" scope="page" class="com.member.model.MemService" />
<jsp:useBean id="allforumSvc" scope="page" class="com.forum.model.ForumService" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<style>
body {
	font-family: Arial, "Microsoft JhengHei", Helvetica, sans-serif;
}

/* .table1 { */
/*   	table-layout:fixed; */
/*   	word-break:break-all; */
/*   } */
.des {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

/* #meminsert { */
/* 	position: absolute; */
/* 	left: 750px; */
/* } */
</style>
</head>

<body>



	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->

		<h1 class="shadow p-3 mb-5 bg-white rounded">
			PAPAGO <small>討論區</small> <a id="meminsert" class="btn btn-info"
				href="<%=request.getContextPath()%>/front-end/forum/addTheme.jsp">我要發布</a>

		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="<%=request.getContextPath()%>/front-end/forum/listAllTheme.jsp">討論區</a>
			</li>
		</ol>

		<div class="row">
			<!-- Blog Entries Column -->
			<div class="col-md-8">
				<!-- Blog Post -->
				<c:forEach var="forumVO" items="${list}">
					<c:if test="${forumVO.theme_display_status eq 0}">
						<div class="card mb-4">
							<img class="card-img-top" height="200"
								src="<%=request.getContextPath()%>/forum/ForumDBReader.do?sq_theme_id=${forumVO.sq_theme_id}">
							<div class="card-body" rows="3">
								<hr>
								<h2 class="card-title">${forumVO.theme_name}</h2>
								<hr>
								<p class="des">${forumVO.theme_detial}</p>
								<FORM METHOD="post"
									ACTION="<%=request.getContextPath()%>/forum/forum.do"
									style="margin-bottom: 0px;">
									<input type="hidden" name="sq_theme_id"
										value="${forumVO.sq_theme_id}"> 
									<input type="hidden"
										name="action" value="getOne_For_Display"> 
									<input
										class="btn btn-primary" type="submit" value="Read More">

								</FORM>
							</div>
							<div class="card-footer text-muted">
							<c:forEach var="memberVOpost" items="${memberSvc.all}">
							<c:if test="${memberVOpost.sq_member_id == forumVO.sq_member_id}">
							<strong>${memberVOpost.nick_name}</strong>
							</c:if>
							</c:forEach>
								&nbsp 發布時間: <a href=" ">${forumVO.theme_time}</a>
								<c:forEach var="allforumpost" items="${allforumSvc.all}">
								<c:if test="${allforumpost.sq_theme_id == forumVO.sq_theme_id}">
 								&nbsp 回應數: ${allforumpost.reponse_sum}
 								</c:if>
 								</c:forEach>
							</div>
						</div>
					</c:if>
				</c:forEach>

				<!-- Pagination -->
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item"><a class="page-link" href="#">&larr;
							Older</a></li>
					<li class="page-item disabled"><a class="page-link" href="#">Newer
							&rarr;</a></li>

					<a id="meminsert" class="btn btn-info"
						href="<%=request.getContextPath()%>/front-end/forum/addTheme.jsp">我要發布</a>
				
				</ul>

			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">
					<div class="p-3 mb-2 bg-info text-white">我的資訊:${memLoginVO.nick_name}</div>
					<div class="card-body">
						<div class="row">
							<ul class="list-unstyled mb-0">
								<img id="member_avatar"
									src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memLoginVO.sq_member_id}"
									style="height: 100px;">
								<div for="theme_member">
									會員編號：<%=memLoginVO.getSq_member_id()%></div>
								
							</ul>
						</div>
					</div>


				<!-- Search Widget -->
<%-- 				<FORM METHOD="post"	ACTION="<%=request.getContextPath()%>/forum/forum.do"> --%>
				<div class="card mb-4">
					<h5 class="card-header">Search</h5>
					<div class="card-body">
						<div class="input-group">
							<input type="hidden" class="form-control"
								placeholder="Search for..."><span
								class="input-group-append">
								<input type="hidden"
										name="sq_member_id" value="<%=memLoginVO.getSq_member_id()%>"> 
								<input type="hidden"
										name="action" value="getMember_Theme_Display"> 
<!-- 								<button class="btn btn-secondary" type="submit">我的主題</button> -->
								<a href="<%=request.getContextPath()%>/front-end//forum/listMemberTheme.jsp"><button class="btn btn-secondary">我的主題</button></a>
								
							</span>
						</div>
					</div>
				</div>
<!-- 				</FORM> -->
				<!-- Categories Widget -->
				


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

