<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.question.model.*"%>

<%
QuestionVO questionVo = (QuestionVO) request.getAttribute("questionVo"); //EmpServlet.java (Concroller) 存入req的empVO物件 (包括幫忙取出的empVO, 也包括輸入資料錯誤時的empVO物件)
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>問題資料修改 - update_qus_input.jsp</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
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
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="#"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">item1</span></a>
		<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link" href="#"><span>item2</span></a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#"><span>item3</span></a>
		</li>
	</ul>
</div>
<%@include file="/back-end/backFrame/backNav"%>
<div class="container my-5">
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

	<form METHOD="post"
		ACTION="<%=request.getContextPath()%>/question/question.do"
		name="form1">

		<div class="form-group row">
			<label for="inputActivityId3" class="col-sm-2 col-form-label">問題編號<font
				color=red><b>*</b></font></label>
			<div class="col-sm-10">
				<%=questionVo.getSq_question_id()%>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputQuestionTitle3" class="col-sm-2 col-form-label">問題標題</label>
			<div class="col-sm-10">
				<input type="TEXT" name="question_title" class="form-control"
					id="inputQuestionTitle3"
					value="<%=questionVo.getQuestion_title()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputQuestionDescription3"
				class="col-sm-2 col-form-label">問題回答</label>
			<div class="col-sm-10">
				<input type="TEXT" name="question_description" class="form-control"
					id="inputQuestionDescription3"
					value="<%=questionVo.getQuestion_description()%>" />
			</div>
		</div>


		<%-- 	<jsp:useBean id="deptSvc" scope="page" class="com.dept.model.DeptService" /> --%>
		<!-- 	<tr> -->
		<!-- 		<td>部門:<font color=red><b>*</b></font></td> -->
		<!-- 		<td><select size="1" name="deptno"> -->
		<%-- 			<c:forEach var="deptVO" items="${deptSvc.all}"> --%>
		<%-- 				<option value="${deptVO.deptno}" ${(empVO.deptno==deptVO.deptno)?'selected':'' } >${deptVO.dname} --%>
		<%-- 			</c:forEach> --%>
		<!-- 		</select></td> -->
		<!-- 	</tr> -->


		<div class="form-group row">
			<label class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="hidden" name="action" value="update"> <input
					type="hidden" name="sq_question_id"
					value="<%=questionVo.getSq_question_id()%>"> <input
					type="submit" value="送出修改" class="btn btn-primary">
			</div>
		</div>
	</form>
</div>
<%@include file="/back-end/backFrame/backFooter"%>
