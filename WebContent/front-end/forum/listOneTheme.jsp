<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.forum.model.*"%>
<%@ page import="com.member_login.model.*"%>
<%@ page import="com.member.model.*"%>
<%@ page import="com.forum_message.model.*"%>
<%@ page isELIgnored="false"%>

<%
	ForumVO forumVO = (ForumVO) request.getAttribute("listOneTheme");

	MemLoginVO memLoginVO = (MemLoginVO) session.getAttribute("memLoginVO");
	MemVO Theme_memVO = (MemVO) request.getAttribute("Theme_memVO");
	ForumMessageVO forumMessageVO2 = (ForumMessageVO) request.getAttribute("message_listOne");
	
// 	ForumMessageService allmessageSvc = new ForumMessageService();
// 	List<ForumMessageVO> list = allmessageSvc.getAll();
// 	pageContext.setAttribute("list", list);

	ForumMessageService messageSvc = new ForumMessageService();
	String messagelist = forumVO.getSq_theme_id();
	List<ForumMessageVO> list2 = messageSvc.getMessagebySq_theme_id(messagelist);
	pageContext.setAttribute("list2", list2);
	
	ForumMessageVO forumMessageVO = new ForumMessageVO();
	
	
	 MemVO memVO = new MemVO();
	 MemService memSvc = new MemService();
	 List<MemVO> listmem = memSvc.getAll();
	 pageContext.setAttribute("listmem",listmem);
	
	
	
%>

<%-- ${forumVO.sq_theme_id == null} --%>
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

<title>${forumVO.theme_name}</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/modern-business.css"
	rel="stylesheet">

<style>

#message{ 
  font-family: Arial;
    font-size: 18px;
    
    border-radius: 10px;
    
}

/* .dropdown-toggle::after { */
/*     display: inline-block; */
/*     vertical-align: .255em; */
    
/*     border-right: .3em solid transparent; */
/*     border-bottom: 0; */
/*     border-left: .3em solid transparent; */
/* } */

</style>

</head>

<body>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			<small><a href="#"><%=(forumVO == null) ? "標題" : forumVO.getTheme_name()%></a>
			</small>
			<c:if test="${memLoginVO.sq_member_id eq Theme_memVO.sq_member_id}">
				<FORM METHOD="post"
					ACTION="<%=request.getContextPath()%>/forum/forum.do">
					<input type="hidden" name="sq_theme_id" id="test"
						value="<%=forumVO.getSq_theme_id()%>" /> <input type="hidden"
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
				<img class="card-img-top" height="200"
					src="<%=request.getContextPath()%>/forum/ForumDBReader.do?sq_theme_id=<%=forumVO.getSq_theme_id()%>">
				<hr>

				<!-- Date/Time -->
				<p>Posted on <%=(forumVO == null) ? " " :forumVO.getTheme_time()%></p>

				<hr>

				<!-- Post Content -->
				<p class="lead"><%=(forumVO == null) ? "主題內文" : forumVO.getTheme_detial()%></p>


				<hr>

				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">Leave a
						Comment:&nbsp ${memLoginVO.nick_name}</h5>
						
						<c:if test="${not empty errorMsgs}">
						<font style="color:red">請修正以下錯誤:</font>
						<ul>
						<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red">${message}</li>
						</c:forEach>
						</ul>
					</c:if>
					<div class="card-body">
						<form METHOD="post"
							ACTION="<%=request.getContextPath()%>/forum/forum_message.do">
							<div class="form-group">
								<input type="hidden" name="sq_theme_id"
									value="<%=forumVO.getSq_theme_id()%>" /> 
									<input type="hidden"
									name="sq_member_id" value="<%=memLoginVO.getSq_member_id()%>" />
								<textarea name="message_detail" class="form-control" rows="3"></textarea>
							</div>
							<input type="hidden" name="action" value="insert">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>

				<!-- Single Comment -->
<%-- 					<form METHOD="post"	ACTION="<%=request.getContextPath()%>/forum/forum_message.do">			 --%>
				<c:forEach var="forumMessageVO" items="${list2}">
<%-- 					<c:if test="${forumMessageVO.message_display_status eq 0}"> --%>
<%-- 						<c:if test="${forumVO.sq_theme_id == forumMessageVO.sq_theme_id}"> --%>
							<div class="shadow-sm mb-5 bg-white rounded row" id="message">
							<div class="col-11">
							
						
								<c:forEach var="listmember" items="${memberSvc.all}">
								<c:if test="${listmember.sq_member_id == forumMessageVO.sq_member_id}">
								
								<img src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${listmember.sq_member_id}"
									width="50" class="rounded-circle">
 								${listmember.nick_name}：
 								</c:if>
 								</c:forEach>
 								<c:if test="${forumMessageVO.message_display_status eq 0}"> 
<%-- 									<h5 class="mt-0">${forumMessageVO.sq_member_id}</h5> --%>
									<P>${forumMessageVO.message_detail}</P>
									</c:if>
									<c:if test="${forumMessageVO.message_display_status eq 1}"> 
									<P>該留言遭管理員屏蔽</P>
									</c:if>
									<hr>
								</div>
<!-- 								<div class="col-1" role="group"> -->
								
<!--     							<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--      							 &#10006 -->
<!--     							</button> -->
<!--     							<div class="dropdown-menu" aria-labelledby="btnGroupDrop1"> -->
    							
<!--      							 <input type="submit" name="message_display_status" class="dropdown-item" value="封存" > -->
<!--      							 <input type="hidden" name="action" value="update"> -->
<!--      							 <input type="submit" name="message_display_status" class="dropdown-item" value="顯示"> -->
     							 
<!--     						    </div> -->
<!-- 								</div> -->
							</div>					
				</c:forEach>
<!-- 				</form> -->
			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">


				<!-- Side Widget -->
				<div class="card my-4">
					<div class="p-3 mb-2 bg-info text-white">發文者:${Theme_memVO.nick_name}</div>
					<div class="card-body">
						<div class="row">
							<ul class="list-unstyled mb-0">
								<img id="member_avatar"
									src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${Theme_memVO.sq_member_id}"
									style="height: 100px;">
								<div for="theme_member">
									會員編號：<%=(forumVO == null) ? " " : forumVO.getSq_member_id()%></div>

							</ul>
						</div>
					</div>


					<!-- Search Widget -->
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
	<script>
		window.onload = function() {
			$("#test").val();
			var a = $("#test").val();
			console.log(a);
		};
	</script>
</body>

</html>
