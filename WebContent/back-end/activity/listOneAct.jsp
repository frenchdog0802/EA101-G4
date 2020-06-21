<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.act.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
  ActVO actVO = (ActVO) request.getAttribute("actVO"); //ActServlet.java(Concroller), 存入req的actVO物件
%>

<html>
<head>
<title>活動資料 - listOneAct.jsp</title>

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
		 <h3>活動資料 - ListOneAct.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/back-end/activity/select_page.jsp"><img src="<%=request.getContextPath()%>/back-end/activity/images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table class="table1">
	<tr>
		<th>活動編號</th>
		<th>路線編號</th>
		<th>會員編號</th>
		<th>活動標題</th>
		<th>上限人數</th>
		<th>最低人數</th>
		<th>參加人數</th>
		<th>報名起始時間</th>
		<th>報名結束時間</th>
		<th>活動開始時間</th>
		<th>活動結束時間</th>
		<th>活動說明</th>
		<th>活動圖片</th>
		<th>成團狀態</th>
		<th>修改</th>
		<th>下架</th>
		<th>備註</th>
	</tr>
	<tr>
		<td><%=actVO.getSq_activity_id()%></td>
		<td><%=actVO.getSq_route_id()%></td>
		<td><%=actVO.getSq_member_id()%></td>
		<td><%=actVO.getAct_title()%></td>
		<td><%=actVO.getMax_population()%></td>
		<td><%=actVO.getMin_population()%></td>
		<td><%=actVO.getPopulation()%></td>
		<td><%=actVO.getStart_time()%></td>
		<td><%=actVO.getEnd_time()%></td>
		<td><%=actVO.getAct_start_time()%></td>
		<td><%=actVO.getAct_end_time()%></td>
		<td class="des"><%=actVO.getAct_description()%></td>
		<td><img src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" width=100% height="100"></td>
		<td><%=actVO.getGp_status()%></td>
		<td>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" style="margin-bottom: 0px;">
			<input type="submit" value="修改">
			<input type="hidden" name="sq_activity_id"  value="${actVO.sq_activity_id}">
			<input type="hidden" name="action"	value="getOne_For_Update"></FORM>
		</td>
		<td>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" style="margin-bottom: 0px;">
			<input type="submit" id="dyn_tr" value="下架">
			<input type="hidden" name="sq_activity_id"  value="${actVO.sq_activity_id}">
			<input type="hidden" name="action" value="delete"></FORM>
		</td>
		<td>
			<p>0.成團</p>
			<p>1.未成團</p>
			<p>2.取消揪團</p>
			<p>3.人數已滿</p>
			<p>4.下架</p>
		</td>
	</tr>
</table>

</body>
</html>