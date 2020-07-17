<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.act.model.*"%>

<%
  ActVO actVO = (ActVO) request.getAttribute("actVO");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>新增活動 | 鐵馬PAPAGO</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
<style>
#inputTextArea3 {
	resize: none;
}
</style>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container my-5">
		<!-- Page Content -->
		<h2>新增活動:</h2>
		<br>
		<%-- 錯誤表列 --%>
		<c:if test="${not empty errorMsgs}">
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
				<label for="inputActivityTitle3" class="col-sm-2 col-form-label">活動標題</label>
				<div class="col-sm-10">
					<input type="TEXT" class="form-control" id="inputActivityTitle3"
						name="act_title"
						value="<%=(actVO == null) ? "請填入標題" : actVO.getAct_title()%>" />
				</div>
			</div>
			<jsp:useBean id="routeSvc" scope="page" class="com.route.model.RouteService" />
			<div class="form-group row">
				<label for="selectActRoute3" class="col-sm-2 col-form-label">活動路線</label>
				<div class="col-sm-10">
					<select class="custom-select" id="selectActRoute3"
						name="sq_route_id">
						<c:forEach var="routeVO" items="${routeSvc.all}">
							<option value="${routeVO.sqRouteId}">${routeVO.routeName}</option>
						</c:forEach>
					</select>
					<input type="button" id="addroute" class="btn btn-primary" value="建立路線"/>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputMaxPopulation3" class="col-sm-2 col-form-label">上限人數</label>
				<div class="col-sm-10">
					<input type="TEXT" class="form-control" id="inputMaxPopulation3"
						name="max_population"
						value="<%=(actVO == null) ? "1" : actVO.getMax_population()%>" />
				</div>
			</div>
			<div class="form-group row">
				<label for="inputMinPopulation3" class="col-sm-2 col-form-label">最低人數</label>
				<div class="col-sm-10">
					<input type="text" id="inputMinPopulation3" name="min_population"
						class="form-control"
						value="<%=(actVO == null) ? "1" : actVO.getMax_population()%>" />
				</div>
			</div>
			<div class="form-group row">
				<label for="inputStartTime3" class="col-sm-2 col-form-label">報名起始時間</label>
				<div class="col-sm-10">
					<input name="start_time" class="form-control" id="inputStartTime3"
						type="text" onchange="function1()" />
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEndTime3" class="col-sm-2 col-form-label">報名結束時間</label>
				<div class="col-sm-10">
					<input name="end_time" class="form-control" id="inputEndTime3"
						type="text" onchange="function2()" readonly="readonly" />
				</div>
			</div>
			<div class="form-group row">
				<label for="inputActStartTime3" class="col-sm-2 col-form-label">活動開始時間</label>
				<div class="col-sm-10">
					<input name="act_start_time" class="form-control"
						id="inputActStartTime3" type="text" onchange="function3()"
						readonly="readonly" />
				</div>
			</div>
			<div class="form-group row">
				<label for="inputActEndTime3" class="col-sm-2 col-form-label">活動結束時間</label>
				<div class="col-sm-10">
					<input name="act_end_time" class="form-control"
						id="inputActEndTime3" type="text" readonly="readonly" />
				</div>
			</div>
			<div class="form-group row">
				<label for="inputTextArea3" class="col-sm-2 col-form-label">活動說明</label>
				<div class="col-sm-10">
					<textarea name="act_description" class="form-control"
						id="inputTextArea3" rows=10 cols=47><%=(actVO == null) ? "" : actVO.getAct_description()%></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label for="exampleFormControlFile1" class="col-sm-2 col-form-label">活動圖片</label>
				<div class="col-sm-10">
					<input type="FILE" class="form-control-file"
						id="exampleFormControlFile1" name="act_picture"
						accept=".jpg,.png,.jpeg" onchange="loadImageFile(event)">
					<img id="image" src="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label"></label>
				<div class="col-sm-10">
					<input type="hidden" name="action" value="front-end-insert">
					<input type="submit" class="btn btn-primary" value="送出新增">
					<input type="button" value="返回列表" class="btn btn-primary"
						id="returnlist"> <input type="button" value="神奇小按鈕"
						class="btn btn-primary" id="magic">
				</div>
			</div>
		</form>
	</div>
	<%@include file="/front-end/page-file/page-footer"%>
</body>

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
			window.location = '<%=request.getContextPath()%>/front-end/activity/Activity.jsp'
		});
		
		$("#actreport").click(function(){
			$("#basicModal").modal({show: true});
		});
		
		//神奇小按鈕
		$("#magic").click(function(){
			$("#inputActivityTitle3").val("新店溪自行車道口袋地圖帶路吃喝玩樂");
			$("#selectActRoute3").val("RP110010");
			$("#inputMaxPopulation3").val("40");
			$("#inputMinPopulation3").val("5");
			$("#inputStartTime3").val("2020-07-23");
			$("#inputEndTime3").val("2020-07-27");
			$("#inputActStartTime3").val("2020-08-10");
			$("#inputActEndTime3").val("2020-08-15");
			$("#inputTextArea3").val("新店溪自行車道是條輕鬆悠閒的自行車道，橫跨雙北的新店溪自行車道，串連北市萬華區、中正區、文山區及新北新店區，新北市推出口袋地圖，不論吃、喝、玩等景點一目了然。");
		});
		
		//建立路線按鈕
		$("#addroute").click(function(){
			window.location = '<%=request.getContextPath()%>/front-end/route/setRouteBySelf.jsp'
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