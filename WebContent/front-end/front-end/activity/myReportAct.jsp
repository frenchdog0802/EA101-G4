<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%@ page import="com.actreport.model.*"%>
<%
	String sq_member_id = (String)session.getAttribute("sq_member_id");
	if(sq_member_id==null) {
		session.setAttribute("sq_member_id", "910003");
	}
    ActReportService actreportSvc = new ActReportService();
    ActService actSvc = new ActService();
    List<ActVO> listact = actSvc.getAll();
    List<ActReportVO> listreport = actreportSvc.getOneActReportForMember(sq_member_id);
    List<ActVO> list2 = new LinkedList<ActVO>();
    ActReportVO actreportVO2 = new ActReportVO();
    for(ActVO actVO:listact){
    	for(ActReportVO actreportVO:listreport){
    		if(actVO.getSq_activity_id().contains(actreportVO.getSq_activity_id()) && sq_member_id.contains(actreportVO.getSq_member_id())){
    			list2.add(actVO);
    			actreportVO2.setSq_activity_id(actreportVO.getSq_activity_id());
    			actreportVO2.setReport_reason(actreportVO.getReport_reason());
    			actreportVO2.setSq_member_id(sq_member_id);
    			request.setAttribute("actreportVO2", actreportVO2);
    		}
    	}
    }
    pageContext.setAttribute("list2",list2);
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
										<div style="padding-left:1px">
											<button id="actreport" class="btn btn-primary" onclick="showModal()">查看檢舉</button>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
					</div>
					
			<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
							
						<div class="modal-header">
							<h2 class="modal-title" id="myModalLabel">查看檢舉</h2>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			            </div>
						
						<div class="modal-body">
			<!-- =========================================以下為輸入的內容========================================== -->
			              <textarea name="report_reason" maxlength="65" id="textarea1" rows=5 cols=83 style="resize: none;" disabled></textarea>
			<!-- =========================================以上為原輸入的內容========================================== -->
						</div>
						
						<div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			            </div>
					</div>
				</div>
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