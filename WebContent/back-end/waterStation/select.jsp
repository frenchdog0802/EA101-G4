<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>補水站查詢</title>

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
   <tr><td><h3>IBM Emp: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for IBM Emp: Home</p>

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
  <li><a href='<%=request.getContextPath()%>/back-end/waterStation/listAllWs.jsp'>List</a> 所有補水站.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/waterStation/water.do" >
        <b>輸入補水站編號 (如WS130002):</b>
        <input type="text" name="sqStationId">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="waterStationSvc" scope="page" class="com.waterStation.model.WaterStationService" />
   
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/waterStation/water.do" >
       <b>選擇補水站編號:</b>
       <select size="1" name="sqStationId">
         <c:forEach var="wsVO" items="${waterStationSvc.all}" > 
          <option value="${wsVO.sqStationId}">${wsVO.sqStationId}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/waterStation/water.do" >
       <b>選擇補給站名稱:</b>
       <select size="1" name="sqStationId">
         <c:forEach var="wsVO" items="${waterStationSvc.all}" > 
          <option value="${wsVO.sqStationId}">${wsVO.stationName}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>


<h3>補水站管理</h3>

<ul>
  <li><a href='<%=request.getContextPath()%>/back-end/waterStation/addWs.jsp'>Add</a> a new Station.</li>
</ul>

</body>
</html>