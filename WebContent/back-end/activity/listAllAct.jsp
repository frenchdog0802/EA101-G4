<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    ActService actSvc = new ActService();
    List<ActVO> list = actSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<%@include file="/back-end/backFrame/backHeader"%>
<title>所有活動資料 - listAllAct.jsp</title>

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
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item2</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item3</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>
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
	<%@ include file="page1.file" %>
	<c:forEach var="actVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">	
		<tr>
			<td>${actVO.sq_activity_id}</td>
			<td>${actVO.sq_route_id}</td>
			<td>${actVO.sq_member_id}</td>
			<td>${actVO.act_title}</td>
			<td>${actVO.max_population}</td>
			<td>${actVO.min_population}</td> 
			<td>${actVO.population}</td>
			<td>${actVO.start_time}</td>
			<td>${actVO.end_time}</td>
			<td>${actVO.act_start_time}</td>
			<td>${actVO.act_end_time}</td>
			<td class="des">${actVO.act_description}</td>
			<td>
				<img src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" width=100% height="100">
			</td>
			<td>${actVO.gp_status}</td>
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
	</c:forEach>
</table>
<%@ include file="page2.file" %>
<%@include file="/back-end/backFrame/backFooter"%>