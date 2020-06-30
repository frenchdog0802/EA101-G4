<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.route.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	RouteService routeSvc = new RouteService();
	List<RouteVO> list = routeSvc.getAll();
	pageContext.setAttribute("list", list);
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>所有路線資料 - listAllRou.jsp</title>

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
	width: 1585px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 3px solid #FEDFE1;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: center;
	width: 50px;
}
</style>


<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/route/listAllRou.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">所有路線資料</span></a><!--在哪一個頁面就哪加active和span的style-->
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
				<th>路線編號</th>
				<th>路線名稱</th>
				<th>路線總距離</th>
				<th>路線圖片</th>
				<th style="width: 300px">路線簡介</th>
				<th>修改</th>
				<th>刪除</th>
			</tr>
			<%@ include file="pages/page1.file"%>
			<c:forEach var="rouVO" items="${list}" begin="<%=pageIndex%>"
				end="<%=pageIndex+rowsPerPage-1%>">

				<tr>
					<td>${rouVO.sqRouteId}</td>
					<td>${rouVO.routeName}</td>
					<td>${rouVO.distance}</td>
					<td><img alt=""
						src="<%=request.getContextPath()%>/back-end/route/route.img?SQ_ROUTE_ID=${rouVO.sqRouteId}"
						style="width: 200px; height: 200px"></td>
					<td style="text-align: left">${rouVO.routeIntroduction}</td>
					<td>

						<FORM METHOD="post"
							ACTION="<%=request.getContextPath()%>/front-end/route/route.do"
							style="margin-bottom: 0px;">
							<input type="submit" value="修改"> <input type="hidden"
								name="sqRouteId" value="${rouVO.sqRouteId}"> <input
								type="hidden" name="action" value="getOne_For_Update">
						</FORM>
					</td>
					<td>
						<FORM METHOD="post"
							ACTION="<%=request.getContextPath()%>/front-end/route/route.do"
							style="margin-bottom: 0px;">
							<input type="submit" value="刪除"> <input type="hidden"
								name="sqRouteId" value="${rouVO.sqRouteId}"> <input
								type="hidden" name="action" value="delete">
						</FORM>
					</td>
				</tr>
			</c:forEach>
		</table>
		<%@ include file="pages/page2.file"%>
<%@include file="/back-end/backFrame/backFooter"%>
