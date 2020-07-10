<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.staff.model.*"%>

<%
	StaffVO staffVO = (StaffVO) request.getAttribute("addstaff");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>員工資料新增</title>

<style>
body {
	background-color: #f1f1f1;
}

#box {
	padding: 26px 24px 36px;
	color: #444;
	background: #fff;
	wudth: 500px;
	height: auto;
	text-align: left;
	font-size: 20px;
	border-radius: 8px;
	box-shadow: 0px 0px 2px #666;
	font-family: "Microsoft JhengHei", Arial, serif;
	/* 	position: absolute; */
	/*  	left: 50%;   */
	/*    	top:  40%;   */
	/*  	margin-left: -250px;  */
	clear: both;
}

input[type=text], input[type=password], select {
	box-shadow: 0 0 0 transparent;
	border-radius: 4px;
	/*     border: 1px solid #7e8993; */
	background-color: #fff;
	color: #32373c;
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
</style>


</head>
<center>
	<body>
		<table id="table-1">
			<tr>
				<td>
					<h3>鐵馬PAPAGO</h3>
				</td>
				<td style="text-align: center">
					<h4>
						<a
							href="<%=request.getContextPath()%>/back-end/staff/selectStaff_page.jsp"><img
							src="images/tomcat.png" width="100" height="100" border="0">回首頁</a>
					</h4>
				</td>
			</tr>
		</table>

		<h3>新增員工:</h3>


		
		<table id="box">
		<%-- 錯誤表列 --%>
			<tr>
				<div id="error">
					<c:if test="${not empty errorMsgs}">
						<strong>請修正以下錯誤:</strong>
						<ul>
							<c:forEach var="message" items="${errorMsgs}">
								<li style="color: red">${message}</li>
							</c:forEach>
						</ul>
					</c:if>
				</div>
			</tr>
				

			<FORM METHOD="post"
				ACTION="<%=request.getContextPath()%>/staff/staff.do">
				<tr>
					<td>
						<div class="input">
							<label for="sf_name">姓名:</label> <input type="TEXT"
								name="sf_name" size="40"
								value="<%=(staffVO == null) ? "Peter6" : staffVO.getSf_name()%>" />
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="input">
							<label for="sf_account">帳號:</label> <input type="TEXT"
								name="sf_account" size="40"
								value="<%=(staffVO == null) ? "staff011" : staffVO.getSf_account()%>" />
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="input">
							<label for="sf_password">密碼:</label> <input type="password"
								name="sf_password" size="40"
								value="<%=(staffVO == null) ? "member123" : staffVO.getSf_account()%>" />
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<input type="hidden" name="sf_name" value="0"> <input
								type="hidden"> <input type="hidden" name="action"
								value="insert">
							<button type="submit" class="btn btn-primary mb-2">確定送出</button>
						</div>
					</td>
				</tr>
			</FORM>
			
		</table>
			





	</body>
</html>