<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.act.model.*"%>

<%
  ActVO actVO = (ActVO) request.getAttribute("actVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>活動資料新增 - addAct.jsp</title>


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
  textarea#textarea1 {
  resize: none;
  }
</style>


</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>活動新增 - addAct.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/back-end/activity/select_page.jsp"><img src="<%=request.getContextPath()%>/back-end/activity/images/tomcat.png" width="100" height="100" border="0">回首頁</a></h4>
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

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" name="form1" enctype="multipart/form-data">
<table>
	<tr>
		<td>活動標題:</td>
		<td><input type="TEXT" name="act_title" size="45" 
			 value="<%= (actVO==null)? "請填入標題" : actVO.getAct_title()%>" /></td>
	</tr>
	<jsp:useBean id="actSvc" scope="page" class="com.act.model.ActService" />
	<tr>
		<td>活動路線:</td>
		<td><select size="1" name="sq_route_id">
			<c:forEach var="actVO" items="${actSvc.all}">
				<option value="${actVO.sq_route_id}" >${actVO.sq_route_id}</option>
												<% //用EL寫法才可以KEEP原本的資料,就算出錯也不用重新填寫,用java寫法會出錯%>
			</c:forEach>
		</select></td>
	</tr>
	<tr>
		<td>會員編號:</td>
		<td><input type="TEXT" name="sq_member_id" size="45" 
			 value="<%= (actVO==null)? "(如910001),但之後要改成servlet取值填進這裡" : actVO.getSq_member_id()%>" /></td>
	</tr>
	<tr>
		<td>上限人數:</td>
		<td><input type="TEXT" name="max_population" size="3"
			 value="<%= (actVO==null)? "1" : actVO.getMax_population()%>" /></td>
	</tr>
	<tr>
		<td>最低人數:</td>
		<td><input type="text" name="min_population" size="3" 
			 value="<%= (actVO==null)? "1" : actVO.getMax_population()%>" /></td>
	</tr>
	<tr>
		<td>參加人數:</td>
		<td><input type="text" name="population" size="3" 
			 value="<%= (actVO==null)? "1" : actVO.getPopulation()%>" /></td>
	</tr>
	<tr>
		<td>報名起始時間:</td>
		<td><input name="start_time" id="f_date1" type="text" /></td>
	</tr>
	<tr>
		<td>報名結束時間:</td>
		<td><input name="end_time" id="f_date2" type="text" /></td>
	</tr>
	<tr>
		<td>活動開始時間:</td>
		<td><input name="act_start_time" id="f_date3" type="text" /></td>
	</tr>
	<tr>
		<td>活動結束時間:</td>
		<td><input name="act_end_time" id="f_date4" type="text" /></td>
	</tr>

	<tr>
		<td>活動說明:</td>
		<td><textarea name="act_description" id="textarea1" rows=10 cols=47><%= (actVO==null)? "" :actVO.getAct_description()%></textarea></td>
	</tr>
	
	<tr>
		<td>活動圖片:</td>
		<td>
		<input type="FILE" name="act_picture" accept=".jpg,.png,.jpeg" onchange="loadImageFile(event)">
		<img id="image" src="" >
		</td>
	</tr>

</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="送出新增"></FORM>
</body>



<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->

<% 
  java.sql.Date start_time = null;
  try {
	  start_time = actVO.getStart_time();
   } catch (Exception e) {
	   start_time = new java.sql.Date(System.currentTimeMillis());
   }
  
  java.sql.Date end_time = null;
  try {
	  end_time = actVO.getEnd_time();
   } catch (Exception e) {
	   end_time = new java.sql.Date(System.currentTimeMillis());
   }
  
  java.sql.Date act_start_time = null;
  try {
	  act_start_time = actVO.getAct_start_time();
   } catch (Exception e) {
	   act_start_time = new java.sql.Date(System.currentTimeMillis());
   }
  
  java.sql.Date act_end_time = null;
  try {
	  act_end_time = actVO.getAct_end_time();
   } catch (Exception e) {
	   act_end_time = new java.sql.Date(System.currentTimeMillis());
   }
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>

<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:false,       //timepicker:true,
	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
		   value: '<%=start_time%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        $.datetimepicker.setLocale('zh');
        $('#f_date2').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:false,       //timepicker:true,
	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
		   value: '<%=end_time%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        $.datetimepicker.setLocale('zh');
        $('#f_date3').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:false,       //timepicker:true,
	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
		   value: '<%=act_start_time%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        $.datetimepicker.setLocale('zh');
        $('#f_date4').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:false,       //timepicker:true,
	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
		   value: '<%=act_end_time%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        //圖片預覽
        function loadImageFile(event){ 
  			var image = document.getElementById('image'); 
  			image.src = URL.createObjectURL(event.target.files[0]);
  			image.width = 250;
  			image.height = 150;
  			};

	// ----------------------------------------------------------以下用來排定無法選擇的日期-----------------------------------------------------------

	//      1.以下為某一天之前的日期無法選擇
	//      var somedate1 = new Date('2017-06-15');
	//      $('#f_date1').datetimepicker({
	//          beforeShowDay: function(date) {
	//        	  if (  date.getYear() <  somedate1.getYear() || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
	//              ) {
	//                   return [false, ""]
	//              }
	//              return [true, ""];
	//      }});

	//      2.以下為某一天之後的日期無法選擇
	//      var somedate2 = new Date('2017-06-15');
	//      $('#f_date1').datetimepicker({
	//          beforeShowDay: function(date) {
	//        	  if (  date.getYear() >  somedate2.getYear() || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
	//              ) {
	//                   return [false, ""]
	//              }
	//              return [true, ""];
	//      }});

	//      3.以下為兩個日期之外的日期無法選擇 (也可按需要換成其他日期)
	//      var somedate1 = new Date('2017-06-15');
	//      var somedate2 = new Date('2017-06-25');
	//      $('#f_date1').datetimepicker({
	//          beforeShowDay: function(date) {
	//        	  if (  date.getYear() <  somedate1.getYear() || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
	//		             ||
	//		            date.getYear() >  somedate2.getYear() || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
	//              ) {
	//                   return [false, ""]
	//              }
	//              return [true, ""];
	//      }});
</script>
</html>