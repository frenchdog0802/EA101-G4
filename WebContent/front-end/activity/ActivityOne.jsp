<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%@ page import="com.actjoin.model.*"%>

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
    <h1 class="mt-4 mb-3">${actVO.act_title}</h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
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
          <li>活動路線:</li>
          <li>上限人數:${actVO.max_population}</li>
          <li>最低開團人數:${actVO.min_population}</li>
          <li>目前參加人數:${actVO.population}</li>
          <li>報名起始時間:${actVO.start_time}</li>
          <li>報名結束時間:${actVO.end_time}</li>
          <li>活動開始時間:${actVO.act_start_time}</li>
          <li>活動結束時間:${actVO.act_end_time}</li>
        </ul>
        <c:if test="${jaVO.joinact_is_join!=1}">
			<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/activity.do">
				<input type="hidden" id="act_no" name="act_no" value="${actVO.act_no}">
				<input type="hidden" name="action"value="readyjoin">
				<input type="submit" value="參加" class="btn btn-primary"> 	
			</FORM>  
		</c:if>
		<c:if test="${jaVO.joinact_is_join==1}">    
			<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/activity/activity.do">
				<input type="button" value="已參加" class="btn btn-primary" disabled='true'> 	
			</FORM>  
		</c:if>
        <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActFavorServlet.do" name="form1">
        <input type="hidden" name="action" value="insert">
        <input type="submit" value="收藏活動">
        </FORM>
        <div>
<%-- 					<c:if test="${not empty memberVO}"> --%>
<%-- 						<% --%>
// 							TravelScoreVO scored = (TravelScoreVO) travelScoreSvc.getCheck(travelVO.getTra_no(),memberVO.getMem_no());
// 							pageContext.setAttribute("scored",scored);
<%-- 						%> --%>
						<div>
		                    <button id="report" class="btn btn-danger btn-lg">檢舉</button>
		                    <input type="hidden" name="tra_no" value="${travelVO.tra_no}">
		                    <input type="hidden" name="mem_no" value="${memberVO.mem_no}">
				    	</div>
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
 		
	<%@include file="/front-end/page-file/page-footer"%>

	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>