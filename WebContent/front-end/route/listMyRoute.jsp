<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.route.model.*"%>
<%@ page import="com.member.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	MemVO memVO = (MemVO) session.getAttribute("MemVO");
	RouteService routeSvc = new RouteService();
	List<RouteVO> list = routeSvc.getAll();
	pageContext.setAttribute("list", list);
%>



<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1, shrink-to-fit=no"
	name="viewport">
<title>所有路線資料 - listAllRou.jsp</title>
<link href="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.js"></script>
<style>
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
	border-radius: 10px;
	width: 1585px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 3px solid #FEDFE1;
	border-collapse: collapse;
}

th {
	padding: 5px;
	text-align: center;
	width: 50px;
}

td {
	text-align: center;
}
</style>

</head>

<body>
	<%@include file="/front-end/page-file/page-nav"%>

<div class="row" style="background-color: white;">

</div>


<center>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<table style="text-align:center">
		<tr>
			<th style="width: 100px">路線編號</th>
			<th style="width: 100px">路線名稱</th>
			<th style="width: 100px">路線總距離</th>
			<th>路線圖片</th>
			<th style="width: 370px">路線簡介</th>
			<th style="width: 100px">路線細節 </th>
			<th>審核狀態</th>
			<th>上架狀態</th>

		</tr>
		<%@ include file="pages/page1.file"%>
		<c:forEach var="rouVO" items="${list}" begin="<%=pageIndex%>"
			end="<%=pageIndex+rowsPerPage-1%>">
			<c:if test="${memVO.sq_member_id == rouVO.sqMemberId}">
				<tr>
					<td>${rouVO.sqRouteId}</td>
					<td>${rouVO.routeName}</td>
					<td>${rouVO.distance}</td>
					<td><img alt=""
						src="<%=request.getContextPath()%>/back-end/route/route.img?SQ_ROUTE_ID=${rouVO.sqRouteId}"
						style="width: 200px; height: 200px"></td>
					<td style="text-align: left">${rouVO.routeIntroduction}</td>
					<td><a
						href="<%=request.getContextPath()%>/front-end/route/route.do?sqRouteId=${rouVO.sqRouteId}&routeName=${rouVO.routeName}&action=getOneRoute_For_Display">查看路線細節</a>
					</td>
					<td>${rouVO.checkFlag}</td>
					<td>${rouVO.addRoute}</td>
					
				</tr>
			</c:if>
		</c:forEach>
	</table>
	<%@ include file="pages/page2.file"%>
	<%@include file="/front-end/page-file/page-footer"%>
</body>
</html>