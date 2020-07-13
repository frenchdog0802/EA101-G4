<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.waterStation.model.*"%>
<%@ page import="com.member.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	MemVO memVO = (MemVO) session.getAttribute("MemVO");
	WaterStationService waterStationSvc = new WaterStationService();
	List<WaterStationVO> list = waterStationSvc.getAll();
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
			<th>補給站編號</th>
			<th>補給站名稱</th>
			<th>補給站地址</th>
			<th>經度</th>
			<th>緯度</th>
			<th>國家</th>
			<th>縣市</th>
			<th>圖片</th>
			<th>營業時間</th>
			<th>審核狀態</th>
			<th>上架狀態</th>

		</tr>
		<%@ include file="pages/page1.file"%>
		<c:forEach var="wsVO" items="${list}" begin="<%=pageIndex%>"
			end="<%=pageIndex+rowsPerPage-1%>">
			<c:if test="${memVO.sq_member_id == wsVO.insertBy}">
				<tr>
					<td>${wsVO.sqStationId}</td>
					<td>${wsVO.stationName}</td>
					<td>${wsVO.stationAddress}</td>
					<td>${wsVO.longitude}</td>
					<td>${wsVO.latitude}</td>
					<td>${wsVO.country}</td>
					<td>${wsVO.area}</td>
	
					<td><img alt=""
						src="<%=request.getContextPath()%>/back-end/waterStation/water.stationImage?SQ_STATION_ID=${wsVO.sqStationId}"
						style="width: 150px; height: 150px"> <%--    ${memVO.mPic} 圖片記憶體位置 --%>
					</td>
					<td>${wsVO.businessHours}</td>
					<td>${wsVO.checkFlag}</td>
					<td>${wsVO.addStation}</td>
	
				</tr>
			</c:if>
		</c:forEach>
	</table>
	<%@ include file="pages/page2.file"%>
	<%@include file="/front-end/page-file/page-footer"%>
</body>
</html>