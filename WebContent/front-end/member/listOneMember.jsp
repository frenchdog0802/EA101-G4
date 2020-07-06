<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member.model.*"%>
<%@ page import="java.util.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
MemVO memVO = (MemVO) request.getAttribute("memVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<html>
<head>
<title>會員資料 - listOneMember.jsp</title>

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
		 <h3>員工資料 - ListOneMember.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/member/selectMember_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>會員編號</th>
		<th>頭像</th>
		<th>姓名</th>
<!-- 		<th>帳號</th> -->
<!-- 		<th>密碼</th> -->
		<th>性別</th>
		<th>生日</th>
		<th>暱稱</th>
		<th>e-mail</th>
		<th>電話</th>
		<th>聯絡地址</th>
		<th>驗證狀態</th>
		<th>註冊時間</th>
		<th>簽名檔圖</th>
		<th>修改</th>
		<th>刪除</th>
		
	</tr>
	
	<tr>
			<td>${memVO.sq_member_id}</td>
			<td><img src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memVO.sq_member_id}"
						width="100"></td>
			<td>${memVO.m_name}</td>
<%-- 			<td>${memVO.member_account}</td> --%>
<%-- 			<td>${memVO.password}</td> --%>
			<td>${memVO.getGender()==1 ? "男" : "女"}</td>
			<td>${memVO.birthday}</td>
			<td>${memVO.nick_name}</td>
			<td>${memVO.m_email}</td>
			<td>${memVO.cellphone}</td> 
			<td>${memVO.address}</td>
			<td>${memVO.getValidation()==0 ? "尚未驗證" : "已驗證"}</td>
			<td>${memVO.registered}</td>
			<div><td><img src="<%=request.getContextPath()%>/member/DBReader2.do?sq_member_id=${memVO.sq_member_id}"
						width="100"></td><div>
			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/member/mem.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="sq_member_id"  value="${memVO.sq_member_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/member/mem.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="sq_member_id"  value="${memVO.sq_member_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
	</tr>
	
</table>

</body>
</html>