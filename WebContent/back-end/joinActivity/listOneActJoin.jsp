<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.actjoin.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%@include file="/back-end/backFrame/backHeader"%>
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
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span>活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span>檢舉活動管理</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>

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
<%@include file="/back-end/backFrame/backFooter"%>