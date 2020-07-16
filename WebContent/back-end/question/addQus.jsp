<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.question.model.*"%>

<%
QuestionVO questionVo = (QuestionVO) request.getAttribute("questionVo");
%>

<%@include file="/back-end/backFrame/backHeader"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>員工資料新增 - addQus.jsp</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">

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
<div class="container my-5">
	<h3>FAQ新增:</h3>

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
		ACTION="<%=request.getContextPath()%>/question/question.do"
		name="form1">
		<div class="form-group row">
			<label for="inputQuestionTitle3" class="col-sm-2 col-form-label">問題標題</label>
			<div class="col-sm-10">

				<input type="TEXT" name="question_title" class="form-control"
					id="inputQuestionTitle3"
					value="<%=(questionVo == null) ? "請輸入標題" : questionVo.getQuestion_title()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputQuestionDescription3"
				class="col-sm-2 col-form-label">問題回答</label>
			<div class="col-sm-10">
				<input type="TEXT" name="question_description" class="form-control"
					id="inputQuestionDescription3"
					value="<%=(questionVo == null) ? "請輸入問題" : questionVo.getQuestion_description()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="hidden" name="action" value="insert"> <input
					type="submit" class="btn btn-primary" value="送出新增"> <input
					type="button" value="返回列表" class="btn btn-primary" id="returnlist">
				<input type="button" value="神奇小按鈕" class="btn btn-primary"
					id="magic">
			</div>
		</div>
	</form>
</div>
<%@include file="/back-end/backFrame/backFooter"%>
<script>
$("#magic").click(function(){
	$("#inputQuestionTitle3").val("安裝攜車架有什麼該注意的事項嗎?");
	$("#inputQuestionDescription3").val("小客車裝置攜車架,其長度不應超過後側車身外50公分(寛),不超出車後30公分,以不擋住車牌或後車燈為合格;如裝置車頂,總高不得超過2.85公尺(需向監理站申請,請見交通安全規則第38條)");
});
</script>
