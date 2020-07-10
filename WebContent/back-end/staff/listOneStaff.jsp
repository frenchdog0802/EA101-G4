<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page import="com.staff.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
	StaffVO staffVO = (StaffVO) request.getAttribute("staffVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<html>
<head>
<title>員工資料 - listOnestaff.jsp</title>

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
	width: 600px;
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
				<h3>員工資料 - ListOnestaff.jsp</h3>
				<h4>
					<a
						href="<%=request.getContextPath()%>/back-end/staff/selectStaff_page.jsp"><img
						src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>員工編號</th>
			<th>員工姓名</th>
			<th>帳號</th>
			<th>密碼</th>
			<th>任職情形</th>
			<th>修改</th>
		</tr>
		<tr>
			<td><%=staffVO.getSq_staff_id()%></td>
			<td><%=staffVO.getSf_name()%></td>
			<td><%=staffVO.getSf_account()%></td>
			<td><%=staffVO.getSf_password()%></td>
			<td>${staffVO.getSf_status()==0 ? "在職中": "已離職" }</td>
			<td>
				<FORM METHOD="post"
					ACTION="<%=request.getContextPath()%>/staff/staff.do"
					style="margin-bottom: 0px;">
					<input type="submit" value="修改"> <input type="hidden"
						name="sq_staff_id" value="${staffVO.sq_staff_id}"> <input
						type="hidden" name="action" value="getOne_For_Update">
				</FORM>
			</td>
		</tr>

	</table>

</body>
</html>