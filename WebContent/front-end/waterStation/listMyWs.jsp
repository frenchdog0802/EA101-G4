<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.waterStation.model.*"%>
<%@ page import="com.member.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
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
<link href="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.css"
	rel="stylesheet">
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

</head>

<body>
	<%@include file="/front-end/page-file/page-nav"%>
	<div class="container mt-3">
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">我的補水站</h1>
	</div>

	<div class="container mb-5 mt-3" >
		<div class="row">
			<table class="table text-center table-hover" >
				<thead>
					<tr>
						<th>補給站編號</th>
						<th>補給站名稱</th>
						<th>補給站地址</th>
						<th>縣市</th>
						<th>圖片</th>
						<th>營業時間</th>
						<th>審核狀態</th>
						<th>上架狀態</th>

			</tr>
				</thead>
				<tbody id="masterTbody"  style="height:188px;text-align:center;line-height:188px;">
					<c:forEach var="wsVO" items="${list}">

				<c:if test="${sessionScope.MemVO.sq_member_id == wsVO.insertBy}">
					<tr>
						<td>${wsVO.sqStationId}</td>
						<td>${wsVO.stationName}</td>
						<td>${wsVO.stationAddress}</td>
						<td>${wsVO.area}</td>

						<td><img alt=""
							src="<%=request.getContextPath()%>/back-end/waterStation/water.stationImage?SQ_STATION_ID=${wsVO.sqStationId}"
							style="width: 150px; height: 150px"> <%--    ${memVO.mPic} 圖片記憶體位置 --%>
						</td>
						<td>${wsVO.businessHours}</td>

						<td>
							<c:if test="${wsVO.checkFlag == 0}">未審核</c:if> 
							<c:if test="${wsVO.checkFlag == 1}">審核通過</c:if> 
							<c:if test="${wsVO.checkFlag == 2}">審核未通過</c:if>
						</td>		

						<td>
							<c:if test="${wsVO.addStation == 0}">未上架</c:if> 
							<c:if test="${wsVO.addStation == 1}">已上架</c:if>
						</td>


					</tr>
				</c:if>
			</c:forEach>
				</tbody>
			</table>
		</div>


	</div>

			

		<%@include file="/front-end/page-file/page-footer"%>
</body>
</html>