<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.waterStation.model.*"%>

<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%-- 取出 Concroller WaterStationServlet.java已存入request的WaterStationVO物件--%>
<%
	WaterStationVO wsVO = (WaterStationVO) request.getAttribute("wsVO");
%>



<html>
<head>
<title>補給站資料 - listOneWs.jsp</title>

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
	width: 800px;
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
</style>

</head>
<body bgcolor='white'>

	<h4>此頁暫練習採用 Script 的寫法取值:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>補給站資料 - listOneWs.jsp</h3>
				<h4>
					<a href="<%=request.getContextPath()%>/back-end/waterStation/select.jsp"><img
						src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

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
		</tr>
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

		</tr>
	</table>

</body>
</html>