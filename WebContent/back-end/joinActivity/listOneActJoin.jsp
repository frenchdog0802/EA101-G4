<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.actjoin.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<html>
<head>
<title>單一活動的參加會員資料 - listOneActjoin.jsp</title>

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

<h4>此頁暫練習採用 Script 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>活動資料 - ListOneActJoin.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/back-end/joinActivity/select_actjoinpage.jsp"><img src="<%=request.getContextPath()%>/back-end/activity/images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table class="table1">
	<tr>
		<th>活動編號</th>
		<th>會員編號</th>
		<th>報名時間</th>
	</tr>
	
	<c:forEach var="actjoinVO" items="${list}">
	<tr>
		<td>${actjoinVO.sq_activity_id}</td>
		<td>${actjoinVO.sq_member_id}</td>
		<td>${actjoinVO.join_time}</td>
		<td>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do" style="margin-bottom: 0px;">
			<input type="submit" id="dyn_tr" value="刪除">
			<input type="hidden" name="sq_activity_id"  value="${actjoinVO.sq_activity_id}">
			<input type="hidden" name="sq_member_id"  value="${actjoinVO.sq_member_id}">
			<input type="hidden" name="action" value="delete"></FORM>
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>