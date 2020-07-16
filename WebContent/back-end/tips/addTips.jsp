<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.tips.model.*"%>

<%
TipsVO tipsVo = (TipsVO) request.getAttribute("tipsVo");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>提示新增 - addTipsEmp.jsp</title>

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
	<tr><td>
		 <h3>提示新增 - addTips.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/tips/select_pageTips.jsp"><img src="images/tomcat.png" width="100" height="100" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>資料新增:</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/tips/tips.do" name="form1" enctype="multipart/form-data">
<table>
	<tr>
		<td>內容圖片:</td>
		<td>
			<input type="file" name="tips_picture" accept=".jpg,.png,.jpeg" onchange="loadImageFile(event)">
			<img id="image" src="" >
		</td>
	</tr>
	<tr>
		<td>內容描述:</td>
		<td><input type="TEXT" name="tips_description" size="45"
			 value="<%= (tipsVo==null)? "請輸入內容描述" : tipsVo.getTips_description()%>" /></td>
	</tr>
	<tr>
		<td>內容主題:</td>
		<td><input type="TEXT" name="tips_title" size="45"
			 value="<%= (tipsVo==null)? "請輸入主題名稱" : tipsVo.getTips_title()%>" /></td>
	</tr>
	

</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="送出新增"></FORM>
</body>

<script>

//圖片預覽
function loadImageFile(event){ 
		var image = document.getElementById('image'); 
		image.src = URL.createObjectURL(event.target.files[0]);
		image.width = 250;
		image.height = 150;
	};
</script>



</html>