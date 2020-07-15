<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tips.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    TipsService tipsSvc = new TipsService();
    List<TipsVO> list = tipsSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>所有提示資料 - listAllTips.jsp</title>

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
	width: 800px;
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

<h4>此頁練習採用 EL 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>所有提示資料 - listAllTips.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/tips/select_pageTips.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table>
	<tr>
		<th>內容編號</th>
		<th>圖片</th>
		<th>描述</th>
		<th>主題</th>
		
		
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="tipsVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${tipsVO.sq_tips_id}</td>
			<td>${tipsVO.tips_picture}</td>
			<td>${tipsVO.tips_desciption}</td>
			<td>${tipsVO.tips_title}</td>
			
			<td>
				<img src="<%=request.getContextPath()%>/tips/DBGifReader2.do?SQ_TIPS_ID=${tipsVO.sq_tips_id}" width=100px height="100px">
			</td>
			<td>${tipsVo.gp_status}</td>
			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/tips/tips.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="sq_tips_id"  value="${tipsVO.sq_tips_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/tips/tips.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="sq_tips_id"  value="${tipsVO.sq_tips_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>