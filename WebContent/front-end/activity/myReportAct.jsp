<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%@ page import="com.actreport.model.*"%>
<%@ page import="com.member.model.*"%>
<%
	MemVO memVO = (MemVO)session.getAttribute("MemVO");
	String sq_member_id = memVO.getSq_member_id();
	if(sq_member_id==null) {
		session.setAttribute("sq_member_id", "910003");
	}
    ActReportService actreportSvc = new ActReportService();
    ActService actSvc = new ActService();
    List<ActVO> listact = actSvc.getAll();
    List<ActReportVO> listreport = actreportSvc.getOneActReportForMember(sq_member_id);
    List<ActVO> list2 = new LinkedList<ActVO>();
    List<ActReportVO> list3 = new LinkedList<ActReportVO>();
    ActReportVO actreportVO2 = new ActReportVO();
    for(ActVO actVO:listact){
    	for(ActReportVO actreportVO:listreport){
    		if(actVO.getSq_activity_id().contains(actreportVO.getSq_activity_id()) && sq_member_id.contains(actreportVO.getSq_member_id())){
    			list2.add(actVO);
    			list3.add(actreportVO);
    		}
    	}
    }
    pageContext.setAttribute("list2",list2);
    pageContext.setAttribute("list3", list3);
%>


<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>檢舉的活動 | 鐵馬PAPAGO</title>
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
	.modal-footer{
		float:left;
		height:100px;
	
	}
	#status0{
		float:left;
		color:#EA0000;
	}
	#status1{
		float:left;
		color:#EA0000;
		width:400px;
	}
	#status2{
		float:left;
		color:#EA0000;
		width:400px;
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
				<li class="breadcrumb-item active">檢舉的活動</li>
			</ol>

			<div class="row">
				<!-- Sidebar Column -->
				<div class="col-lg-3 mb-4">
					<div class="list-group">
						<a href="<%=request.getContextPath()%>/front-end/activity/Actmanagement.jsp" class="list-group-item">參加的活動</a> 
						<a href="<%=request.getContextPath()%>/front-end/activity/myFoundedAct.jsp" class="list-group-item">主辦的活動</a> 
						<a href="<%=request.getContextPath()%>/front-end/activity/myFavorAct.jsp" class="list-group-item">收藏的活動</a> 
						<a href="<%=request.getContextPath()%>/front-end/activity/myReportAct.jsp" class="list-group-item active">檢舉的活動</a> 
					</div>
				</div>
				<!-- Content Column -->
				<div class="col-lg-9 mb-4">

					<div class="row">
						<%@ include file="page1.file"%>
						<jsp:useBean id="actreportSvc2" class="com.actreport.model.ActReportService"/>
						<c:forEach var="actVO" items="${list2}" begin="<%=pageIndex%>"
							end="<%=pageIndex+rowsPerPage-1%>" varStatus="vs">
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
										<p class="description">${actVO.act_description}</p>
										<div class="form-inline">
										<button type="button" id="viewDetailButton${vs.index}" class="btn btn-primary" data-toggle="modal" data-target="#myModal${vs.index}">查看檢舉</button>
										</div>
										<div class="modal fade" id="myModal${vs.index}" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title" id="myModalLabel">檢舉內容</h4>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">×</span>
														</button>
													</div>
													<div class="modal-body">
														<c:forEach var="actreportVO2" items="${list3}" varStatus="vs">
															<c:if test="${actVO.sq_activity_id.contains(actreportVO2.sq_activity_id)}">
																<p>${actreportVO2.report_reason}</p>
															</c:if>
														</c:forEach>
													</div>
													<div class="modal-footer" style="position:relative">
														<c:forEach var="actreportVO2" items="${list3}" varStatus="vs">
															<c:choose>
															<c:when test="${actVO.sq_activity_id.contains(actreportVO2.sq_activity_id) && actreportVO2.report_status == 0}">
																<div id="status0" style="position:absolute;left:0;top:0">檢舉狀態:尚未處理</div>
															</c:when>
															<c:when test="${actVO.sq_activity_id.contains(actreportVO2.sq_activity_id) && actreportVO2.report_status == 1}">
																<div id="status1" style="position:absolute;left:0;top:0">檢舉狀態:檢舉成功</div>
																<div id="status1" style="position:absolute;left:0;top:25%">官方回覆:${actreportVO2.report_response}</div>
															</c:when>
															<c:when test="${actVO.sq_activity_id.contains(actreportVO2.sq_activity_id) && actreportVO2.report_status == 2}">
																<div id="status2" style="position:absolute;left:0;top:0">檢舉狀態:檢舉失敗</div>
																<div id="status2" style="position:absolute;left:0;top:25%">官方回覆:${actreportVO2.report_response}</div>
															</c:when>
															</c:choose>
														</c:forEach>
														<button type="button" class="btn btn-default"
															data-dismiss="modal" style="position:absolute;bottom:0;">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
							<c:if test="${list2.size() ==0 }">
								<h1>您沒有檢舉過活動唷!!</h1>
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
	$("#actreport").click(function(){
		$("#basicModal").modal({show: true});
	});
	</script>
	
	


	<!-- 	<script type="text/javascript"> -->

	<!-- </script> -->

</body>
</html>