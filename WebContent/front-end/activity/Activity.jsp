<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<jsp:useBean id="actreportSvc" class="com.actreport.model.ActReportService"/>
<%
    ActService actSvc = new ActService();
    List<ActVO> list = actSvc.getAll();
    List<ActVO> list2 = new LinkedList<ActVO>();
    for(ActVO actVO2 : list){
    	if(actreportSvc.getOneActReportStatus(actVO2.getSq_activity_id()) !=1 && (actVO2.getGp_status()==0 || actVO2.getGp_status()==1)){ 		
    		list2.add(actVO2);
    	}
    }
    pageContext.setAttribute("list2",list2);
%>


<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>活動列表 | 鐵馬PAPAGO</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
			<h1 class="mt-4 mb-3">
				活動列表 <small>Activity List</small>
			</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="<%=request.getContextPath()%>/front-end/index/index.html">Home</a>
				</li>
				<li class="breadcrumb-item active">活動列表</li>
			</ol>

			<div class="row">
				<!-- Sidebar Column -->
				<div class="col-lg-3 mb-4">
					<div class="list-group">
						<a href="<%=request.getContextPath()%>/front-end/activity/Activity.jsp" class="list-group-item active">全部活動</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=基隆市" class="list-group-item">基隆市</a> 
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=台北市" class="list-group-item">台北市</a> 
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=新北市" class="list-group-item">新北市</a> 
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=桃園市" class="list-group-item">桃園市</a> 
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=新竹縣" class="list-group-item">新竹縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=苗栗縣" class="list-group-item">苗栗縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=台中市" class="list-group-item">台中市</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=彰化縣" class="list-group-item">彰化縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=南投縣" class="list-group-item">南投縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=雲林縣" class="list-group-item">雲林縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=嘉義縣" class="list-group-item">嘉義縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=台南市" class="list-group-item">台南市</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=高雄市" class="list-group-item">高雄市</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=屏東縣" class="list-group-item">屏東縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=宜蘭縣" class="list-group-item">宜蘭縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=花蓮縣" class="list-group-item">花蓮縣</a>
						<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontArea_For_Display&area=台東縣" class="list-group-item">台東縣</a>
					</div>
				</div>
				<!-- Content Column -->
				<div class="col-lg-9 mb-4">

					<div class="row">
						<%@ include file="page1.file"%>

						<c:forEach var="actVO" items="${list2}" begin="<%=pageIndex%>"
							end="<%=pageIndex+rowsPerPage-1%>">
							<div
								class="col-lg-4 col-sm-6 portfolio-item ${actVO.sq_activity_id}">
								<div class="card h-100">
									<a
										href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
										<img class="card-img-top" src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'"
										width="200" height="185" alt="">
									</a>
									<div class="card-body">
										<h4 class="card-title">
											<a href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">${actVO.act_title}</a>
										</h4>
										<p class="card-text">${actVO.act_description}</p>
									</div>
								</div>
							</div>
						</c:forEach>
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