<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.question.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
QuestionVO questionVo = (QuestionVO) request.getAttribute("questionVo"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>問題查詢 - listOneQus.jsp</title>

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
	width: 100%;
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

<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">item1</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item2</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item3</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>

<table>
	<tr>
		<th>問題編號</th>
		<th>問題標題</th>
		<th>問題回答</th>
		<th>修改</th>
		<th>刪除</th>
	</tr>
	<tr>
		<td><%=questionVo.getSq_question_id()%></td>
		<td><%=questionVo.getQuestion_title()%></td>
		<td><%=questionVo.getQuestion_description()%></td>
		<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/question/question.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="sq_question_id"  value="${questionVo.sq_question_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/question/question.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="sq_question_id"  value="${questionVo.sq_question_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
	</tr>
</table>
<%@include file="/back-end/backFrame/backFooter"%>