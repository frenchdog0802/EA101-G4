<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tips.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
TipsVO tipsVo = (TipsVO) request.getAttribute("tipsVo"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<html>
<head>
<title>提示單筆資料 - listOneTips.jsp</title>

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
	<tr><td>
		 <h3>提示單筆資料 - ListOneTips.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/tips/select_pageTips.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>內容編號</th>
		<th>圖片</th>
		<th>描述</th>
		<th>主題</th>
		
	</tr>
	<tr>
		<td><%=tipsVo.getSq_tips_id()%></td>
		<td><%=tipsVo.getTips_picture()%></td>
		<td><%=tipsVo.getTips_description()%></td>
		<td><%=tipsVo.getTips_title()%></td>
		<td><img src="<%=request.getContextPath()%>/tips/DBGifReader2?SQ_TIPS_ID='${tipsVO.sq_tips_id}'" width=100% height="100"></td>
		<td>${tipsVo.gp_status}</td>
		
	</tr>
</table>

</body>
</html>