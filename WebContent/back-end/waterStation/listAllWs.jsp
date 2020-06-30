<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.waterStation.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	WaterStationService waterStationSvc = new WaterStationService();
	List<WaterStationVO> list = waterStationSvc.getAll();
	pageContext.setAttribute("list", list);
%>

<html>
<head>
<title>所有補水站資料 - listAllWs.jsp</title>

<style>
table#table-1 {
	background-color: #FEDFE1;
	border-radius: 10px;
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
	border-radius: 10px;
	width: 1400px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 3px solid #FEDFE1;
	border-collapse : collapse;
	
}

th, td {
	padding: 5px;
	text-align: center;
	width:100px;
}
</style>

</head>
<body bgcolor='white'>
	<center>
	<table id="table-1">
		<tr>
			<td>
				<h3>所有補水站資料</h3>
				<h4>
					<a
						href="<%=request.getContextPath()%>/back-end/waterStation/select.jsp">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>
	
	<table>
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
			<th>修改</th>
			<th>刪除</th>
		</tr>
		<%@ include file="pages/page1.file"%>
		<c:forEach var="wsVO" items="${list}" begin="<%=pageIndex%>"
			end="<%=pageIndex+rowsPerPage-1%>">

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



				<td>

					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/back-end/waterStation/water.do"
						style="margin-bottom: 0px;">
						<input type="submit" value="修改"> <input type="hidden"
							name="sqStationId" value="${wsVO.sqStationId}"> <input
							type="hidden" name="action" value="getOne_For_Update">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/back-end/waterStation/water.do"
						style="margin-bottom: 0px;">
						<input type="submit" value="刪除"> <input type="hidden"
							name="sqStationId" value="${wsVO.sqStationId}"> <input
							type="hidden" name="action" value="delete">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="pages/page2.file"%>

</body>
</html>