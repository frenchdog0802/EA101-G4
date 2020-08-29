<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>IBM Qus: Home</title>

<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
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

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>IBM Qus: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for IBM Qus: Home</p>

<h3>資料查詢:</h3>
	
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='listAllQus.jsp'>List</a> all Qus.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/question/question.do" >
        <b>輸入問題編號 (如310001):</b>
        <input type="text" name="sq_question_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="qusSvc" scope="page" class="com.question.model.QuestionService" />
   
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/question/question.do" >
       <b>選擇問題編號:</b>
       <select size="1" name="sq_question_id">
         <c:forEach var="questionVo" items="${qusSvc.all}" > 
          <option value="${questionVo.sq_question_id}">${questionVo.sq_question_id}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  
</ul>


<h3>問題管理</h3>

<ul>
  <li><a href='addQus.jsp'>Add</a> a new Qus.</li>
</ul>

</body>
</html>