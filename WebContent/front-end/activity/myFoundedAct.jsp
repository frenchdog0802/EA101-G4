<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%@ page import="com.actjoin.model.*"%>
<%@ page import="com.member.model.*"%>
<jsp:useBean id="actreportSvc" class="com.actreport.model.ActReportService"/>
<%
	MemVO memVO = (MemVO)session.getAttribute("MemVO");
	String sq_member_id = memVO.getSq_member_id();
	if(sq_member_id==null) {
		session.setAttribute("sq_member_id", "910003");
	}
    ActJoinService actjoinSvc = new ActJoinService();
    ActService actSvc = new ActService();
    List<ActVO> listact = actSvc.getAll();
    List<ActJoinVO> listjoin = actjoinSvc.getMyActJoin(sq_member_id);
    List<ActVO> list2 = new LinkedList<ActVO>();
    for(ActVO actVO:listact){
    	for(ActJoinVO actjoinVO:listjoin){
    		if(actVO.getSq_activity_id().contains(actjoinVO.getSq_activity_id()) && actVO.getSq_member_id().contains(actjoinVO.getSq_member_id())){
    			list2.add(actVO);
    		}
    	}
    }
    pageContext.setAttribute("list2",list2);
%>


<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>主辦的活動 | 鐵馬PAPAGO</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
<style>
	.mr-3 {
		width:64px;
		height:64px;
	}
	li.media{
		width:800px;
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
				活動管理 <small>Actmanagement</small>
			</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="<%=request.getContextPath()%>/front-end/activity/Actmanagement.jsp">活動管理</a>
				</li>
				<li class="breadcrumb-item active">主辦的活動</li>
			</ol>

			<div class="row">
				<!-- Sidebar Column -->
				<div class="col-lg-3 mb-4">
					<div class="list-group">
						<a href="<%=request.getContextPath()%>/front-end/activity/Actmanagement.jsp" class="list-group-item">參加的活動</a> 
						<a href="<%=request.getContextPath()%>/front-end/activity/myFoundedAct.jsp" class="list-group-item active">主辦的活動</a> 
						<a href="<%=request.getContextPath()%>/front-end/activity/myFavorAct.jsp" class="list-group-item">收藏的活動</a> 
						<a href="<%=request.getContextPath()%>/front-end/activity/myReportAct.jsp" class="list-group-item">檢舉的活動</a> 
					</div>
				</div>
				<!-- Content Column -->
				<div class="col-lg-9 mb-4">

					<div class="row">
						<%@ include file="page1.file"%>

						<c:forEach var="actVO" items="${list2}" begin="<%=pageIndex%>"
							end="<%=pageIndex+rowsPerPage-1%>">
							<ul class="list-unstyled">
								<li class="media">
									<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
										<img src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" class="mr-3" alt="這個是活動圖片">
									</a>
									<div class="media-body">
										<h5 class="mt-0 mb-1">
											<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
												${actVO.act_title}
											</a>
										</h5>
										${actVO.act_description}
										<div class="form-inline">
										<c:if test="${actVO.gp_status == 2}">
												<input type="submit" value="已取消活動" class="btn btn-primary" disabled> 	
										</c:if>
										<c:if test="${actVO.gp_status != 2}">
											<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActServlet.do">
												<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
												<input type="hidden" name="action"value="cancel">
												<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
												<input type="submit" value="取消活動" class="btn btn-primary"> 	
											</FORM>
										</c:if>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
						<c:if test="${list2.size() == 0}">
							<div class="media-body">
								<h1>您還沒主辦活動唷!!</h1>
							</div>
						</c:if>
					</div>

					<!-- Pagination -->
					<ul class="pagination justify-content-center">
						<li class="page-item <%if (whichPage <= 1) {%> disabled <%}%>">
							<a class="page-link" id="previous"
							href="<%=request.getRequestURI()%>?whichPage=<%=whichPage-1%>"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a>
						</li>
						<%@ include file="page2.file"%>
						<li
							class="page-item <%if (whichPage >= pageNumber) {%> disabled <%}%>">
							<a class="page-link"
							href="<%=request.getRequestURI()%>?whichPage=<%=whichPage+1%>"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a>
						</li>
					</ul>
					<%@ include file="page3.file"%>
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



	<!-- 	<script type="text/javascript"> -->

	<!-- </script> -->

</body>
</html>