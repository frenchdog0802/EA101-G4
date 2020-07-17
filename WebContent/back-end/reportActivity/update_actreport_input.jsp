<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.actreport.model.*"%>

<%
  ActReportVO actreportVO = (ActReportVO) request.getAttribute("actreportVO"); //ActServlet.java (Concroller) 存入req的actVO物件 (包括幫忙取出的actVO, 也包括輸入資料錯誤時的actVO物件)
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>活動檢舉資料修改 </title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
  textarea#textarea1 {
  resize: none;
  }
</style>
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span>活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span>參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">檢舉活動管理</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>
<div class="container my-5">
	<h3>資料修改:</h3>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<form METHOD="post"
		ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do"
		name="form1">
		<div class="form-group row">
			<label for="inputActivityReportId3" class="col-sm-2 col-form-label">活動檢舉編號<font
				color=red><b>*</b></font></label>
			<div class="col-sm-10">
				<%=actreportVO.getSq_activityreport_id()%>
			</div>
		</div>
		<jsp:useBean id="actreportSvc" scope="page"
			class="com.actreport.model.ActReportService" />
		<div class="form-group row">
			<label for="inputActivityId3" class="col-sm-2 col-form-label">活動編號</label>
			<div class="col-sm-10">
				<input type="hidden" name="sq_activity_id" size="45" value="<%=actreportVO.getSq_activity_id()%>" />
				<%=actreportVO.getSq_activity_id()%>
			</div>
		</div>
		<!-- 	----此欄是會員編號,但不論前台或後台都不給改(因為已經綁定主揪者的會員編號) -->
		<div class="form-group row">
			<label for="inputMemberId3" class="col-sm-2 col-form-label">會員編號</label>
			<div class="col-sm-10">
			<input type="hidden" name="sq_member_id" size="45" value="<%=actreportVO.getSq_member_id()%>" />
				<%=actreportVO.getSq_member_id()%>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputReportReason3" class="col-sm-2 col-form-label">檢舉原因</label>
			<div class="col-sm-10">
				<input type="hidden" name="report_reason" size="45" value="<%=actreportVO.getReport_reason()%>" />
				<%=actreportVO.getReport_reason()%>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputReportResponse3" class="col-sm-2 col-form-label">檢舉回應<font
				color=red><b>*</b></font></label>
			<div class="col-sm-10">
				<input type="TEXT" name="report_response"
					value="<%=(actreportVO.getReport_response()==null) ? "" : actreportVO.getReport_response()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputReportStatusReason3" class="col-sm-2 col-form-label">檢舉狀態<font
				color=red><b>*</b></font></label>
			<div class="col-sm-10">
				<input type="TEXT" name="report_status" id="report_status"
					value="<%=actreportVO.getReport_status()%>" />
					0.「檢舉未處理」
					1.「檢舉成功」
					2.「檢舉失敗」
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="hidden" name="action" value="update"> <input
					type="hidden" name="sq_activityreport_id"
					value="<%=actreportVO.getSq_activityreport_id()%>"> <input
					type="submit" value="送出修改" class="btn btn-primary">

			</div>
		</div>
	</form>
</div>
<%@include file="/back-end/backFrame/backFooter"%>