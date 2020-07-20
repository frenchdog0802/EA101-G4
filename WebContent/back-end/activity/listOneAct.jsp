<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.act.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
  ActVO actVO = (ActVO) request.getAttribute("actVO"); //ActServlet.java(Concroller), 存入req的actVO物件
%>
<jsp:useBean id="actjoinSvc" class="com.actjoin.model.ActJoinService"/>
<%@include file="/back-end/backFrame/backHeader"%>
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
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span>參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span>檢舉活動管理</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>
<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" >
        <b>輸入活動編號 (如ACT-700001):</b>
        <input type="text" name="sq_activity_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
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
		<td>${actjoinSvc.getOneJoinPeople(actVO.sq_activity_id)}</td>
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
			0.成團<br>
			1.未成團<br>
			2.取消揪團<br>
			3.下架<br>
		</td>
	</tr>
</table>
<%@include file="/back-end/backFrame/backFooter"%>