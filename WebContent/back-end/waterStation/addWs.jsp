<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.waterStation.model.*"%>

<%
	WaterStationVO wsVO = (WaterStationVO) request.getAttribute("wsVO");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>補水站資料新增 - addWs.jsp</title>

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
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
</head>

<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>補水站資料新增 - addWs.jsp</h3>
			</td>
			<td>
				<h4>
					<a href="<%=request.getContextPath()%>/back-end/waterStation/select.jsp"><img
						src="images/tomcat.png" width="100" height="100" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>資料新增:</h3>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post" ACTION="water.do" name="form1"
		enctype="multipart/form-data">
		<table>
			<tr>
				<td>補給站名稱</td>
				<td><input type="TEXT" name="stationName" size="45"
					value="<%=(wsVO == null) ? "補給站" : wsVO.getStationName()%>" /></td>
			</tr>
			<tr>
				<td>補給站地址</td>
				<td><input type="TEXT" name="stationAddress" size="45"
					value="<%=(wsVO == null) ? "台灣某個角落" : wsVO.getStationAddress()%>" /></td>
			</tr>
			<tr>
				<td>補給站經度</td>
				<td><input type="TEXT" name="longitude" size="45"
					value="<%=(wsVO == null) ? "187.987" : wsVO.getLongitude()%>" /></td>
			</tr>
			<tr>
				<td>補給站緯度</td>
				<td><input type="TEXT" name="latitude" size="45"
					value="<%=(wsVO == null) ? "87.987" : wsVO.getLatitude()%>" /></td>
			</tr>
			<tr>
				<td>補給站位於國家</td>
				<td><input type="TEXT" name="country" size="45"
					value="<%=(wsVO == null) ? "台灣" : wsVO.getCountry()%>" /></td>
			</tr>
			<tr>
				<td>補給站位於縣市</td>
				<td><input type="TEXT" name="area" size="45"
					value="<%=(wsVO == null) ? "台北市" : wsVO.getArea()%>" /></td>
			</tr>
			<tr>
				<td>補給站營業時間</td>
				<td><input type="TEXT" name="businessHours" size="45"
					value="<%=(wsVO == null) ? "8:00-23:00" : wsVO.getBusinessHours()%>" /></td>
			</tr>
			<tr>
				<td>補給站照片</td>
				<td><input id="file" type="file" name="stationImage" size="45"
					/><img id="demo" style="width:150px; height:150px;"/></td>
			</tr>
			
			
			
			<br> <input type="hidden" name="checkFlag" value="0">
			<br> <input type="hidden" name="addStation" value="0">

		</table>
		<br> <input type="hidden" name="action" value="insert"> <input
			type="submit" value="送出新增">
	</FORM>
	<script>
		$('#file').change(function() {
			var file = $('#file')[0].files[0];
			var reader = new FileReader;
			reader.onload = function(e) {
				$('#demo').attr('src', e.target.result);
			};
			reader.readAsDataURL(file);
		});
	</script>
	
</body>
</html>