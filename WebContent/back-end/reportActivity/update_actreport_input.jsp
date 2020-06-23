<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.actreport.model.*"%>

<%
  ActReportVO actreportVO = (ActReportVO) request.getAttribute("actreportVO"); //ActServlet.java (Concroller) 存入req的actVO物件 (包括幫忙取出的actVO, 也包括輸入資料錯誤時的actVO物件)
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>活動檢舉資料修改 </title>

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

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>活動檢舉資料修改 - update_actreport_input.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/back-end/reportActivity/select_actreportpage.jsp"><img src="<%=request.getContextPath()%>/back-end/activity/images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>資料修改:</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do" name="form1">
<table>
	<tr>
		<td>活動檢舉編號:<font color=red><b>*</b></font></td>
		<td><%=actreportVO.getSq_activityreport_id()%></td>
	</tr>
	<jsp:useBean id="actreportSvc" scope="page" class="com.actreport.model.ActReportService" />
	<tr>
		<td>活動編號:<font color=red><b>*</b></font></td>
		<td><%=actreportVO.getSq_activity_id()%></td>
	</tr>
<!-- 	----此欄是會員編號,但不論前台或後台都不給改(因為已經綁定主揪者的會員編號) -->
	<tr>
		<td>會員編號:<font color=red><b>*</b></font></td>
		<td><%= actreportVO.getSq_member_id()%></td>
	</tr>
	<tr>
		<td>檢舉原因:<font color=red><b>*</b></font></td>
		<td><%= actreportVO.getReport_reason()%></td>
	</tr>
	<tr>
		<td>檢舉狀態:</td>
		<td><input type="TEXT" name="report_status" size="3" value="<%=actreportVO.getReport_status()%>" /></td>
	</tr>

</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="sq_activityreport_id" value="<%=actreportVO.getSq_activityreport_id()%>">
<input type="submit" value="送出修改"></FORM>
</body>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>

</html>