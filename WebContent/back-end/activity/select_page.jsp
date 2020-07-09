<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>IBM Act: Home</title>

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

<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
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
<div>
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
<div>
<ul>
  <li><a href='<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp'>List</a> all Acts.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" >
        <b>輸入活動編號 (如ACT-700001):</b>
        <input type="text" name="sq_activity_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="actSvc" scope="page" class="com.act.model.ActService" />
   
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" >
       <b>選擇活動編號:</b>
       <select size="1" name="sq_activity_id">
         <c:forEach var="actVO" items="${actSvc.all}" > 
          <option value="${actVO.sq_activity_id}">${actVO.sq_activity_id}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
</ul>

<div>
<h3>新增活動:</h3>

<ul>
  <li><a href='addAct.jsp'>Add</a> a new Act.</li>
</ul>
</div>
<%@include file="/back-end/backFrame/backFooter"%>