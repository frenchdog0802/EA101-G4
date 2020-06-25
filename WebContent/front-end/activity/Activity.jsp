<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>

<%
    ActService actSvc = new ActService();
    List<ActVO> list = actSvc.getAll();
    pageContext.setAttribute("list",list);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>活動列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
 	
 	<div class="container my-5">
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">活動列表
      <small>Activity List</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">活動列表</li>
    </ol>
    
    <div class="row">
      <!-- Sidebar Column -->
      <div class="col-lg-3 mb-4">
        <div class="list-group">
          <a href="index.html" class="list-group-item active">Home</a>
          <a href="about.html" class="list-group-item">About</a>
          <a href="services.html" class="list-group-item">Services</a>
          <a href="contact.html" class="list-group-item">Contact</a>
          <a href="portfolio-1-col.html" class="list-group-item">1 Column Portfolio</a>
          <a href="portfolio-2-col.html" class="list-group-item">2 Column Portfolio</a>
          <a href="portfolio-3-col.html" class="list-group-item">3 Column Portfolio</a>
          <a href="portfolio-4-col.html" class="list-group-item">4 Column Portfolio</a>
          <a href="portfolio-item.html" class="list-group-item">Single Portfolio Item</a>
          <a href="blog-home-1.html" class="list-group-item">Blog Home 1</a>
          <a href="blog-home-2.html" class="list-group-item">Blog Home 2</a>
          <a href="blog-post.html" class="list-group-item">Blog Post</a>
          <a href="full-width.html" class="list-group-item">Full Width Page</a>
          <a href="sidebar.html" class="list-group-item">Sidebar Page</a>
          <a href="faq.html" class="list-group-item">FAQ</a>
          <a href="404.html" class="list-group-item">404</a>
          <a href="pricing.html" class="list-group-item">Pricing Table</a>
        </div>
      </div>
      <!-- Content Column -->
      <div class="col-lg-9 mb-4">
       
    <div class="row">
    <%@ include file="page1.file" %>
    <c:forEach var="actVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" width="200" height="185" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">${actVO.act_title}</a>
            </h4>
            <p class="card-text">${actVO.act_description}</p>
          </div>
        </div>
      </div>
      </c:forEach>
    </div>

    <!-- Pagination -->
    <ul class="pagination justify-content-center">
      <li class="page-item">
        <a class="page-link" href="<%=request.getRequestURI()%>?whichPage=<%=whichPage-1%>" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <%@ include file="page2.file" %>
      <li class="page-item">
        <a class="page-link" href="<%=request.getRequestURI()%>?whichPage=<%=whichPage+1%>" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only">Next</span>
        </a>
      </li>
    </ul>
    <%@ include file="page3.file" %>
  </div>
 	</div>
      </div>
    </div>
 		
	<%@include file="/front-end/page-file/page-footer"%>

	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>