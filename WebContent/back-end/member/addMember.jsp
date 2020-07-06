<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member.model.*"%>

<%
	MemVO memVO = (MemVO) request.getAttribute("memVO");
%>
<%-- 	<%=memVO == null%>--${memVO.sq_member_id}--  --%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>會員資料新增 - addMember.jsp</title>

<style>
body {
	background-color: #f1f1f1;
}

#box {
	padding: 26px 24px 36px;
	color: #444;
	background: #fff;
	wudth: 500px;
	height: auto;
	text-align: left;
	font-size: 20px;
	border-radius: 8px;
	box-shadow: 0px 0px 2px #666;
	font-family: "Microsoft JhengHei", Arial, serif;
	/* 	position: absolute; */
	/*  	left: 50%;   */
	/*    	top:  40%;   */
	/*  	margin-left: -250px;  */
	clear: both;
}

input[type=text], input[type=password], select {
	box-shadow: 0 0 0 transparent;
	border-radius: 4px;
	/*     border: 1px solid #7e8993; */
	background-color: #fff;
	color: #32373c;
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

table#table-1 {
	width: 450px;
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

table {
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

div#error {
	border-left: 4px solid #dc3232;
	padding: 12px;
	margin-left: 0;
	margin-bottom: 20px;
	background-color: #fff;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	font-family: "Microsoft JhengHei", Arial, serif;
	font-size: 16px;
	width: 500px;
	/*     position: absolute; */
	/*  	left: 50%;   */
	/*  	margin-left: -250px;  */
	height: auto;
	clear: both;
}

button {
	background-color: #0080FF;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}
</style>

</head>
<center>
<body>

	<table id="table-1">
		<tr>
			<td>
				<h3>鐵馬PAPAGO</h3>
			</td>
			<td style="text-align: center">
				<h4>
					<a
						href="<%=request.getContextPath()%>/back-end/member/selectMember_page.jsp"><img
						src="images/tomcat.png" width="100" height="100" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>會員註冊:</h3>

	<%-- 錯誤表列 --%>
	<table id="box">
	<div id="error">
		<c:if test="${not empty errorMsgs}">
			<strong>請修正以下錯誤:</strong>
			<ul>
				<c:forEach var="message" items="${errorMsgs}">
					<li style="color: red">${message}</li>
				</c:forEach>
			</ul>
		</c:if>
	</div>

	<!-- 	<div id="box"> -->
	
		<FORM METHOD="post"
			ACTION="<%=request.getContextPath()%>/member/mem.do"
			enctype="multipart/form-data">
			<tr>
				<td>
					<div class="input">
						<label for="name">姓名:</label> <input type="TEXT" name="m_name"
							size="40"
							value="<%=(memVO == null) ? "Peter2" : memVO.getM_name()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="account">帳號:</label> <input type="TEXT"
							name="member_account" size="40"
							value="<%=(memVO == null) ? "member12" : memVO.getMember_account()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="password">密碼:</label> <input type="password"
							name="password" size="40"
							value="<%=(memVO == null) ? "member123" : memVO.getPassword()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="m_email">電子信箱:</label> <input type="TEXT"
							name="m_email" size="40"
							value="<%=(memVO == null) ? "member123account@ggmail.com" : memVO.getM_email()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="gender">性別:</label> <select name="gender" id="gender">
							<option value="1" ${memVO.getGender()==1?"selected" : ""}>男</option>
							<option value="2" ${memVO.getGender()==2?"selected" : ""}>女</option>
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="birthday">出生日期:</label> <input name="birthday"
							id="b_date1" type="text">
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="cellphone">電話:</label> <input type="TEXT"
							name="cellphone" size="40"
							value="<%=(memVO == null) ? "0919611233" : memVO.getCellphone()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="nick_name">暱稱:</label> <input type="TEXT"
							name="nick_name" size="40"
							value="<%=(memVO == null) ? "tomcat" : memVO.getNick_name()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="">聯絡地址:</label> <input type="TEXT" name="address"
							size="45"
							value="<%=(memVO == null) ? "桃園市桃園區中大路300號" : memVO.getAddress()%>" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="">頭像圖片:</label> <input type="file" name="m_photo"
							id="m_photo_id" accept="image/gif, image/jpeg, image/png">
					</div>
					<div class="input">
						<c:if test="${empty errorMsgs}">
							<img id="member_avatar"
								src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memVO.sq_member_id}"
								style="height: 100px;">
						</c:if>
						<c:if test="${not empty errorMsgs}">
							<img id="member_avatar"
								src="<%=request.getContextPath()%>/member/MemSessionImg.do"
								class="img-fluid" style="height: 100px;">
						</c:if>

					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input">
						<label for="">名片背景圖:</label> <input type="file" name="back_img"
							id="back_img_id" />
					</div>
					<div class="input">
						<c:if test="${empty errorMsgs}">
							<img id="Signature_file"
								src="<%=request.getContextPath()%>/member/DBReader2.do?sq_member_id=${memVO.sq_member_id}"
								style="height: 100px;">
						</c:if>
						<c:if test="${not empty errorMsgs}">
							<img id="Signature_file"
								src="<%=request.getContextPath()%>/member/MemSessionBackImg.do"
								class="img-fluid" style="height: 100px;">
						</c:if>
				</td>
			</tr>
			</div>
			<tr>
				<td>
					<div>
						<input type="hidden" name="validation" value="0"> <input
							type="hidden"> <input type="hidden" name="action"
							value="insert">
						<button type="submit" class="btn btn-primary mb-2">確定送出</button>
					</div>
				</td>
			</tr>
		</FORM>
	</table>
	<!-- 	</div> -->

</body>



<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->

<%
	java.sql.Date birthday = null;
	try {
		birthday = memVO.getBirthday();
	} catch (Exception e) {
		birthday = new java.sql.Date(System.currentTimeMillis());
	}
%>
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
        $.datetimepicker.setLocale('zh');
        $('#b_date1').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:false,       //timepicker:true,
	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
		   value: '<%=birthday%>',
	// value:   new Date(),
	//disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
	//startDate:	            '2017/07/10',  // 起始日
	//minDate:               '-1970-01-01', // 去除今日(不含)之前
	//maxDate:               '+1970-01-01'  // 去除今日(不含)之後
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

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#member_avatar').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#m_photo_id").change(function() {
		readURL(this);
	});

	function readURL2(input) {
		if (input.files && input.files[0]) {
			var reader2= new FileReader();

			reader2.onload = function(e) {
				$('#Signature_file').attr('src', e.target.result);
			}

			reader2.readAsDataURL(input.files[0]);
		}
	}
	$("#back_img_id").change(function() {
		readURL2(this);
	});
</script>

</html>