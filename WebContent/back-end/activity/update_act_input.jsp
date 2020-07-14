<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.act.model.*"%>

<%
  ActVO actVO = (ActVO) request.getAttribute("actVO"); //ActServlet.java (Concroller) 存入req的actVO物件 (包括幫忙取出的actVO, 也包括輸入資料錯誤時的actVO物件)
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>活動資料修改 - update_act_input.jsp</title>
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
  textarea#textarea1 {
  resize: none;
  }
</style>
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span>參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span>檢舉活動管理</span></a>
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
		ACTION="<%=request.getContextPath()%>/act/ActServlet.do" name="form1"
		enctype="multipart/form-data">
		<div class="form-group row">
			<label for="inputActivityId3" class="col-sm-2 col-form-label">活動編號<font
				color=red><b>*</b></font></label>
			<div class="col-sm-10">
				<%=actVO.getSq_activity_id()%>
			</div>
		</div>
		<jsp:useBean id="routeSvc" scope="page" class="com.route.model.RouteService" />
		<div class="form-group row">
			<label for="selectActRoute3" class="col-sm-2 col-form-label">活動路線</label>
			<div class="col-sm-10">
				<select class="custom-select" id="selectActRoute3"
					name="sq_route_id">
					<c:forEach var="routeVO" items="${routeSvc.all}">
						<option value="${routeVO.sqRouteId}" ${(actVO.sq_route_id==routeVO.sqRouteId)?'selected':'' }>${routeVO.routeName}</option>
					</c:forEach>
				</select>
			</div>
		</div>

		<!-- 	----此欄是會員編號,但不論前台或後台都不給改(因為已經綁定主揪者的會員編號) -->
			<input type="hidden" name="sq_member_id" size="45" value="<%=actVO.getSq_member_id()%>" />
				
		<div class="form-group row">
			<label for="inputActivityTitle3" class="col-sm-2 col-form-label">活動標題</label>
			<div class="col-sm-10">
				<input type="TEXT" name="act_title" size="45"
					value="<%=actVO.getAct_title()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputMaxPopulation3" class="col-sm-2 col-form-label">上限人數</label>
			<div class="col-sm-10">
				<input type="TEXT" name="max_population" size="3"
					value="<%=actVO.getMax_population()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputMinPopulation3" class="col-sm-2 col-form-label">最低人數</label>
			<div class="col-sm-10">
				<input type="TEXT" name="min_population" size="3"
					value="<%=actVO.getMin_population()%>" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputStartTime3" class="col-sm-2 col-form-label">報名起始時間</label>
			<div class="col-sm-10">
				<input name="start_time" id="start_time" type="text"
					value="<%=actVO.getStart_time()%>" onchange="function1()" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEndTime3" class="col-sm-2 col-form-label">報名結束時間</label>
			<div class="col-sm-10">
				<input name="end_time" id="end_time" type="text"
					value="<%=actVO.getEnd_time()%>" onchange="function2()"
					readonly="readonly" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputActStartTime3" class="col-sm-2 col-form-label">活動開始時間</label>
			<div class="col-sm-10">
				<input name="act_start_time" id="act_start_time" type="text"
					value="<%=actVO.getAct_start_time()%>" onchange="function3()"
					readonly="readonly" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputActEndTime3" class="col-sm-2 col-form-label">活動結束時間</label>
			<div class="col-sm-10">
				<input name="act_end_time" id="act_end_time" type="text"
					value="<%=actVO.getAct_end_time()%>" readonly="readonly" />
			</div>
		</div>
		<div class="form-group row">
			<label for="inputTextArea3" class="col-sm-2 col-form-label">活動說明</label>
			<div class="col-sm-10">
				<textarea name="act_description" id="textarea1" rows=10 cols=47><%=actVO.getAct_description()%></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label for="originalimg" class="col-sm-2 col-form-label">原本圖片</label>
			<div class="col-sm-10">
				<img
					src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'"
					width=250 height="150">
			</div>
		</div>
		<div class="form-group row">
			<label for="exampleFormControlFile1" class="col-sm-2 col-form-label">活動圖片</label>
			<div class="col-sm-10">
				<input type="FILE" name="act_picture" accept=".jpg,.png,.jpeg"
					onchange="loadImageFile(event)"> <input type="hidden"
					name="act_picture" size="45"
					value="<%=(actVO == null) ? "" : actVO.getAct_picture()%>" /> <img
					id="image" src="">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputGp_Status3" class="col-sm-2 col-form-label">成團狀態</label>
			<div class="col-sm-10">
				<input type="TEXT" name="gp_status" size="45"
					value="<%=actVO.getGp_status()%>" />
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-2 col-form-label"></label>
			<div class="col-sm-10">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="sq_activity_id"
					   value="<%=actVO.getSq_activity_id()%>">
				<input type="submit" value="送出修改" class="btn btn-primary">
				<input type="button" value="返回列表" class="btn btn-primary"
						id="returnlist"> 
			</div>
		</div>
	</form>
</div>
<%@include file="/back-end/backFrame/backFooter"%>


<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
<style>
.xdsoft_datetimepicker .xdsoft_datepicker {
	width: 300px; /* width:  300px; */
}

.xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
	height: 151px; /* height:  151px; */
}
</style>

<script>
$.datetimepicker.setLocale('zh'); // kr ko ja en
$(function(){
	 $('#inputStartTime3').datetimepicker({
	  format:'Y-m-d',
	  onShow:function(){
	   this.setOptions({
	    maxDate:$('#inputEndTime3').val()?$('#inputEndTime3').val():false
	   })
	  },
	  minDate:'-1970-01-01',
	  validateOnBlur: true,
	  timepicker:false,
	  scrollMonth : false,
	  scrollInput : false
	 });
	 
	 $('#inputEndTime3').datetimepicker({
	  format:'Y-m-d',
	  onShow:function(){
	   this.setOptions({
	    minDate:$('#inputStartTime3').val()?$('#inputStartTime3').val():false,
	    maxDate:$('#inputActStartTime3').val()?$('#inputActStartTime3').val():false	
	   })
	  },
	  validateOnBlur: true,
	  timepicker:false,
	  scrollMonth : false,
	  scrollInput : false
	 });
	 
	 $('#inputActStartTime3').datetimepicker({
		  format:'Y-m-d',
		  onShow:function(){
		   this.setOptions({
		    minDate:$('#inputEndTime3').val()?$('#inputEndTime3').val():false,
		   	maxDate:$('#inputActEndTime3').val()?$('#inputActEndTime3').val():false		
		   })
		  },
		  validateOnBlur: true,
		  timepicker:false,
		  scrollMonth : false,
		  scrollInput : false
		 });
	 
	 $('#inputActEndTime3').datetimepicker({
		  format:'Y-m-d',
		  onShow:function(){
		   this.setOptions({
		    minDate:$('#inputActStartTime3').val()?$('#inputActStartTime3').val():false
		   })
		  },
		  validateOnBlur: true,
		  timepicker:false,
		  scrollMonth : false,
		  scrollInput : false
		 });
});
	//當日期有輸入資料時解索下一格日期資料
	$("#inputStartTime3").change(function myfunction1(){		
		if(!($(this).val() == "")){
			$("#inputEndTime3").prop('readonly', false);
		}
		if(($(this).val() == "")){
			$("#inputEndTime3").prop('readonly', true);
		}
	});
	$("#inputEndTime3").change(function myfunction2(){
		if(!($(this).val() == "")){
			$("#inputActStartTime3").prop('readonly', false);
		}
		if(($(this).val() == "")){
			$("#inputActStartTime3").prop('readonly', true);
		}
	});
	$("#inputActStartTime3").change(function myfunction3(){
		if(!($(this).val() == "")){
			$("#inputActEndTime3").prop('readonly', false);
		}
		if(($(this).val() == "")){
			$("#inputActEndTime3").prop('readonly', true);
		}	
	});
        
        //圖片預覽
        function loadImageFile(event){ 
  			var image = document.getElementById('image'); 
  			image.src = URL.createObjectURL(event.target.files[0]);
  			image.width = 250;
  			image.height = 150;
  		};
  		
  		//返回列表
  		$("#returnlist").click(function(){
			window.location = '<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp'
		});
		
		$("#actreport").click(function(){
			$("#basicModal").modal({show: true});
		});
		
		//神奇小按鈕
		$("#magic").click(function(){
			$("#inputActivityTitle3").val("平台推薦新手風景漂亮路線");
			$("#selectActRoute3").val("RP110007");
			$("#inputMaxPopulation3").val("10");
			$("#inputMinPopulation3").val("5");
			$("#inputStartTime3").val("2020-07-23");
			$("#inputEndTime3").val("2020-07-27");
			$("#inputActStartTime3").val("2020-08-10");
			$("#inputActEndTime3").val("2020-08-15");
			$("#inputTextArea3").val("主要的生態特色為濕地生態系統，包括埤塘、水田、鹽田、河口沼澤、沿岸沙洲、潟湖、潮汐灘地等，例如外傘頂洲、好美寮溼地、鰲鼓濕地、北門潟湖。七股潟湖的周圍景觀是此風景區的重點");
		});
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