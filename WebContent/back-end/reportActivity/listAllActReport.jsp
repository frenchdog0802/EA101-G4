<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.actreport.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    ActReportService actreportSvc = new ActReportService();
    List<ActReportVO> list = actreportSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>所有活動檢舉資料 - listAllActReport.jsp</title>

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
	width: 100%;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
  .table1 {
  	table-layout:fixed;
  	word-break:break-all;
  }
  
  .des {
  	overflow:hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
  }
</style>

</head>
<body bgcolor='white'>

<h4>此頁練習採用 EL 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>所有活動檢舉資料 - listAllActReport.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/back-end/reportActivity/select_ActReportpage.jsp"><img src="<%=request.getContextPath()%>/back-end/activity/images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table class="table1">
	<tr>
		<th>活動檢舉編號</th>
		<th>活動編號</th>
		<th>會員編號</th>
		<th>檢舉原因</th>
		<th>檢舉狀態</th>
		<th>修改狀態</th>
		<th>備註</th>
	</tr>
	<%@ include file="page1.file" %>
	<c:forEach var="actreportVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">	
		<tr>
			<td>${actreportVO.sq_activityreport_id}</td>
			<td>${actreportVO.sq_activity_id}</td>
			<td>${actreportVO.sq_member_id}</td>
			<td class="des">${actreportVO.report_reason}</td>
			<td>${actreportVO.report_status}</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="sq_activityreport_id"  value="${actreportVO.sq_activityreport_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
				<p>0.檢舉未處理</p>
				<p>1.檢舉已處理</p>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>