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

<%@include file="/back-end/backFrame/backHeader"%>
<title>所有補水站資料 - listAllWs.jsp</title>

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

<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active"
			href="<%=request.getContextPath()%>/back-end/route/listAllRouDe.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">所有路線資料</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link active"
			href="<%=request.getContextPath()%>/back-end/waterStation/listAllWs.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">所有補水站資料</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
	</ul>
</div>
<%@include file="/back-end/backFrame/backNav"%>

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
			<th>審核狀態</th>
			<th>上架狀態</th>
			<th>送出修改</th>
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
				
				<FORM METHOD="post"	ACTION="<%=request.getContextPath()%>/back-end/waterStation/water.do" name="form1">
				<td><select name="checkFlag" size="1" id="checkFlag"
					onChange="change()">
						<c:choose>
							<c:when test="${wsVO.checkFlag == 0}">
								<option value="0" selected>未審核</option>
								<option value="1">審核通過</option>
								<option value="2">審核未通過</option>
							</c:when>
							<c:when test="${wsVO.checkFlag == 1}">
								<option value="0">未審核</option>
								<option value="1" selected>審核通過</option>
								<option value="2">審核未通過</option>
							</c:when>
							<c:when test="${wsVO.checkFlag == 2}">
								<option value="0">未審核</option>
								<option value="1">審核通過</option>
								<option value="2" selected>審核未通過</option>
							</c:when>
						</c:choose>
				</select></td>
				<td>
					<select name="addStation" size="1" id="addStation" onChange="change()">
						<c:choose>
							<c:when test="${wsVO.addStation == 0}">
								<option value="0" selected>未上架</option>
								<option value="1">已上架</option>
							</c:when>
							<c:when test="${wsVO.addStation == 1}">
								<option value="0">未上架</option>
								<option value="1" selected>已上架</option>
							</c:when>
						</c:choose>
					</select>
				</td>
				<td>
						<br> <input type="hidden" name="action" value="update">
						<input type="hidden" name="sqStationId"
							value="${wsVO.sqStationId}"> <input type="submit"
							value="送出修改">
					</FORM>
				</td>

			</tr>
		</c:forEach>
	</table>
	<%@ include file="pages/page2.file"%>
	<%@include file="/back-end/backFrame/backFooter"%>