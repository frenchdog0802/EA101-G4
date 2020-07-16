<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.forum.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	ForumService forumSvc = new ForumService();
	List<ForumVO> list = forumSvc.getAll();
	pageContext.setAttribute("list", list);
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>所有討論區資料 - listAllForum.jsp</title>


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
		<li class="nav-item">
			<a class="nav-link" href="<%=request.getContextPath()%>/back-end/forum/listAllForum.jsp">
				<span>所有討論區</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link active" href="#">
				<span style="padding-bottom: 8px; border-bottom: 3px blue solid;">test2</span>
			</a>
		</li>
	</ul>
</div>
<%@include file="/back-end/backFrame/backNav"%>

<div class="container-fluid">
	<div class="row mt-3">
		<div class="col-12">
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
					<th>主題編號</th>
					<th>會員編號</th>
					<th>主題名稱</th>
					<th>發文時間</th>
					<th>發文內容</th>
					<th>主題圖片</th>
					<th>主題狀態</th>
					<th>修改</th>

				</tr>
				<%@ include file="pages/page1.file"%>
				<c:forEach var="forumVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
				
				<tr>
					<td>${forumVO.sq_theme_id}</td>
					<td>${forumVO.sq_member_id}</td>
					<td>${forumVO.theme_name}</td>
					<td>${forumVO.theme_time}</td>
					<td>${forumVO.theme_detial}</td>
					<td>
						<img alt=""
							src="<%=request.getContextPath()%>/forum/ForumDBReader.do?sq_theme_id=${forumVO.sq_theme_id}"
							style="width: 150px; height: 150px"> <%--    ${memVO.mPic} 圖片記憶體位置 --%>
					</td>
					<td>${forumVO.theme_display_status}</td>
					<td>
					  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do" style="margin-bottom: 0px;">
					     <input type="submit" value="修改">
					     <input type="hidden" name="sq_theme_id"  value="${forumVO.sq_theme_id}">
					     <input type="hidden" name="action"	value="getOne_For_Update_Staff"></FORM>
					</td>
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
<%@include file="/back-end/backFrame/backFooter"%>				


