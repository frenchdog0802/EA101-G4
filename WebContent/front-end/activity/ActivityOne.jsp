<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%@ page import="com.actjoin.model.*"%>
<%@ page import="com.actfavor.model.*"%>
<%@ page import="com.actreport.model.*"%>

<%
	String sq_member_id = (String)session.getAttribute("sq_member_id");
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.btn-primary{
		margin-left:10px;
	}	
</style>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
 	

  
 	<div class="container my-5">
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">${actVO.act_title}<input type="button" value="返回列表" class="btn btn-primary" id="returnlist"></h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="<%=request.getContextPath()%>/front-end/activity/Activity.jsp">Home</a>
      </li>
      <li class="breadcrumb-item active">${actVO.act_title}</li>
    </ol>

    <!-- Portfolio Item Row -->
    <div class="row">

      <div class="col-md-8">
        <img class="img-fluid" src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" alt="">
      </div>

      <div class="col-md-4">
        <h3 class="my-3">活動描述</h3>
        <p>${actVO.act_description}</p>
        <h3 class="my-3">活動細節</h3>
        <ul>
          <li>活動主辦者:${actVO.sq_member_id}</li>
          <li>活動路線:${actVO.sq_route_id}</li>
          <li>上限人數:${actVO.max_population}</li>
          <li>最低開團人數:${actVO.min_population}</li>
          <li>目前參加人數:${actVO.population}</li>
          <li>報名起始時間:${actVO.start_time}</li>
          <li>報名結束時間:${actVO.end_time}</li>
          <li>活動開始時間:${actVO.act_start_time}</li>
          <li>活動結束時間:${actVO.act_end_time}</li>
        </ul>
     
       <div class="row">
       		<c:choose>
       		
       		<c:when test="${actVO.sq_activity_id == actjoinVO.sq_activity_id && sq_member_id == actjoinVO.sq_member_id || actVO.sq_member_id == sq_member_id}">
		        <FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do">
		        	<input type="button" value="已參加" class="btn btn-primary" disabled>
		        </FORM>
		    </c:when>
		    
	        <c:when test="${actVO.sq_member_id != sq_member_id}">
				<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do">
					<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
					<input type="hidden" name="action"value="insert">
					<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
					<input type="submit" value="參加活動" class="btn btn-primary"> 	
				</FORM> 
	        </c:when>
	        <c:otherwise>
	        
	        </c:otherwise>      
	       	</c:choose>
	       	
	       	<c:choose>
	       	<c:when test="${actVO.sq_activity_id == actfavorVO.sq_activity_id && sq_member_id == actfavorVO.sq_member_id}">
		       	<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActFavorServlet.do">
					<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
					<input type="hidden" name="action"value="delete">
					<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
					<input type="submit" value="已收藏" class="btn btn-primary"> 	
				</FORM> 
			</c:when>
			<c:when test="">
		       
			</c:when>
			<c:otherwise>
	        	<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActFavorServlet.do">
					<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
					<input type="hidden" name="action"value="insert">
					<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
					<input type="submit" value="收藏活動" class="btn btn-primary"> 	
				</FORM>	
	        </c:otherwise>
			</c:choose>
			
	       	<input type="submit" value="活動檢舉" class="btn btn-primary"> 
	    </div>
	   

    </div>
    <!-- /.row -->

    <!-- Related Projects Row -->
    <h3 class="my-4">相關路線</h3>

    <div class="row">

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </a>
      </div>

    </div>
    <!-- /.row -->
   
      </div>
    </div>
  </div>  
    
 		
	<%@include file="/front-end/page-file/page-footer"%>

	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	</script>
	<script>
		$("#returnlist").click(function(){
			window.location = '<%=request.getContextPath()%>/front-end/activity/Activity.jsp'
		});
	</script>

</body>
</html>