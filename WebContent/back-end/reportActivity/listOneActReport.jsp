<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.actreport.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
  ActReportVO actreportVO = (ActReportVO) request.getAttribute("actreportVO");
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>活動檢舉資料 - listOneActReport.jsp</title>

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
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span>參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">檢舉活動管理</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>

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
	<tr>
		<td><%=actreportVO.getSq_activityreport_id()%></td>
		<td><%=actreportVO.getSq_activity_id()%></td>
		<td><%=actreportVO.getSq_member_id()%></td>
		<td class="des"><%=actreportVO.getReport_reason()%></td>
		<td><%=actreportVO.getReport_status()%></td>
		<td>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do" style="margin-bottom: 0px;">
			<input type="submit" value="修改">
			<input type="hidden" name="sq_activityreport_id"  value="${actreportVO.sq_activityreport_id}">
			<input type="hidden" name="action"	value="getOne_For_Update"></FORM>
		</td>
		<td>
			<p>0.檢舉未處理</p>
			<p>1.檢舉成功</p>
			<p>2.檢舉失敗</p>
		</td>
	</tr>
</table>
<%@include file="/back-end/backFrame/backFooter"%>
