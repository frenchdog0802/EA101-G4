<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.staff.model.*" %>
<%@ page import="java.util.*"%>
<%
	StaffVO staffVO = (StaffVO) request.getAttribute("update_staff_input"); //EmpServlet.java (Concroller) 存入req的empVO物件 (包括幫忙取出的empVO, 也包括輸入資料錯誤時的empVO物件)
%>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>員工資料修改 - update_member_input.jsp</title>

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
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>員工資料修改 - update_member_input.jsp</h3>
				<h4>
					<a
						href="<%=request.getContextPath()%>/back-end/staff/selectStaff_page.jsp"><img
						src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>資料修改:</h3>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post"
		ACTION="<%=request.getContextPath()%>/staff/staff.do">
		<table>
			<tr>
				<td>員工編號:<font color=red><b>*</b></font></td>
				<td>${staffVO.sq_staff_id}</td>
			</tr>
			<tr>
				<td>員工姓名:</td>
				<td><input type="TEXT" name="sf_name" size="45"
					value="<%=staffVO.getSf_name()%>" /></td>
			</tr>
			<tr>
				<td>員工帳號:</td>
				<td><input type="TEXT" name="sf_account" size="45"
					value="<%=staffVO.getSf_account()%>" /></td>
			</tr>
			<tr>
				<td>密碼:</td>
				<td><input type="sf_password" name="sf_password" size="45"
					value="<%=staffVO.getSf_password()%>" /></td>
			</tr>
			<tr>
				<td>任職情形:</td>
				<td>
					<select name="sf_status" id="sf_status">
					<option value="0" ${staffVO.getSf_status()==0?"selected" : ""}>在職中</option>
					<option value="1" ${staffVO.getSf_status()==1?"selected" : ""}>已離職</option>
			</select>
			</td>
			</tr>
			

		</table>
		<br> <input type="hidden" name="action" value="update"> <input
			type="hidden" name="sq_staff_id"
			value="<%=staffVO.getSq_staff_id()%>"> <input type="submit"
			value="送出修改">
	</FORM>
</body>


