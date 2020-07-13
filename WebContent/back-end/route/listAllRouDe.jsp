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
	width: 100%;
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
		<li class="nav-item"><a class="nav-link"
			href="<%=request.getContextPath()%>/back-end/waterStation/listAllWs.jsp">
			<span>所有補水站資料</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
	</ul>
</div>
<%@include file="/back-end/backFrame/backNav"%>
	<div class="container-fluid">
		<div class="row mt-3">
			<div class="col-12">
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
						<th style="width: 100px">路線編號</th>
						<th style="width: 100px">路線名稱</th>
						<th style="width: 100px">路線總距離</th>
						<th>路線圖片</th>
						<th style="width: 370px">路線簡介</th>
						<th style="width: 100px">路線細節 </th>
						<th>審核狀態</th>
						<th>上架狀態</th>
						<th>送出修改</th>
					</tr>
				<%@ include file="pages/page1.file"%>
				<c:forEach var="rouVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td>${rouVO.sqRouteId}</td>
						<td>${rouVO.routeName}</td>
						<td>${rouVO.distance}</td>
						<td>
							<img alt=""
								src="<%=request.getContextPath()%>/back-end/route/route.img?SQ_ROUTE_ID=${rouVO.sqRouteId}"
								style="width: 200px; height: 200px">
						</td>
						<td style="text-align: left">${rouVO.routeIntroduction}</td>
						<td>
							<a href="<%=request.getContextPath()%>/front-end/route/route.do?sqRouteId=${rouVO.sqRouteId}&routeName=${rouVO.routeName}&action=getOneRoute_For_Display">查看路線細節</a>
						</td>

						<FORM METHOD="post"	ACTION="<%=request.getContextPath()%>/back-end/route/route.do" name="form1">
							<td>
								<select name="checkFlag" size="1" id="checkFlag" onChange="change()">
									<c:choose>
										<c:when test="${rouVO.checkFlag == 0}">
											<option value="0" selected>未審核</option>
											<option value="1">審核通過</option>
											<option value="2">審核未通過</option>
										</c:when>
										<c:when test="${rouVO.checkFlag == 1}">
											<option value="0">未審核</option>
											<option value="1" selected>審核通過</option>
											<option value="2">審核未通過</option>
										</c:when>
										<c:when test="${rouVO.checkFlag == 2}">
											<option value="0">未審核</option>
											<option value="1">審核通過</option>
											<option value="2" selected>審核未通過</option>
										</c:when>
									</c:choose>
								</select>
							</td>
							<td>
								<select name="addRoute" size="1" id="addRoute" onChange="change()">
									<c:choose>
										<c:when test="${rouVO.addRoute == 0}">
											<option value="0" selected>未上架</option>
											<option value="1">已上架</option>
										</c:when>
										<c:when test="${rouVO.addRoute == 1}">
											<option value="0">未上架</option>
											<option value="1" selected>已上架</option>
										</c:when>
									</c:choose>
								</select>
							</td>
							<td>
								<input type="hidden" name="action" value="update">
								<input  type="hidden" name="sqRouteId" value="${rouVO.sqRouteId}"> 
								<input id="demo3" type="submit"	value="送出修改">
							</td>
						</FORM>
					</tr>
				</c:forEach>
				</table>			
			</div>
		</div>
		<div class="row">
			<div class="col-8"></div>
			<%@ include file="pages/page2.file"%>	
		</div>
	</div>
	<%-- 錯誤表列 --%>
	<script>
		document.getElementById("demo3").onclick = function() {swal("提示", "修改成功", "success")};
	</script>
	<%@include file="/back-end/backFrame/backFooter"%>