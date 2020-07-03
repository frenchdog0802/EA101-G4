<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member.model.*"%>
<%@ page import="java.util.*"%>

<%
	MemVO memVO = (MemVO) request.getAttribute("memVO"); //EmpServlet.java (Concroller) 存入req的empVO物件 (包括幫忙取出的empVO, 也包括輸入資料錯誤時的empVO物件)
%>


<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>會員資料修改 - update_member_input.jsp</title>

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

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>會員資料修改 - update_member_input.jsp</h3>
				<h4>
					<a
						href="<%=request.getContextPath()%>/back-end/member/selectMember_page.jsp"><img
						src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

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

	<FORM METHOD="post"
		ACTION="<%=request.getContextPath()%>/member/mem.do"
		enctype="multipart/form-data">
		<table>
			<tr>
				<td>會員編號:<font color=red><b>*</b></font></td>
				<td>${memVO.sq_member_id}</td>
			</tr>
			<tr>
				<td>會員姓名:</td>
				<td><input type="TEXT" name="m_name" size="45"
					value="<%=memVO.getM_name()%>" /></td>
			</tr>
			<tr>
				<td>註冊帳號:</td>
				<td><input type="TEXT" name="member_account" size="45"
					value="<%=memVO.getMember_account()%>" /></td>
			</tr>
			<tr>
				<td>密碼:</td>
				<td><input type="password" name="password" size="45"
					value="<%=memVO.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>電子信箱:</td>
				<td><input type="TEXT" name="m_email" size="45"
					value="<%=memVO.getM_email()%>" /></td>
			</tr>
			<td>性別:</td>
			<td><select name="gender" id="gender">
					<option value="1" ${memVO.getGender()==1?"selected" : ""}>男</option>
					<option value="2" ${memVO.getGender()==2?"selected" : ""}>女</option>
			</select></td>
			<tr>
				<td>生日:</td>
				<td><input name="birthday" id="b_date1" type="text"></td>
			</tr>
			<tr>
				<td>暱稱:</td>
				<td><input type="TEXT" name="nick_name" 
					value="<%=memVO.getNick_name()%>" /></td>
			</tr>
			<tr>
				<td>聯絡電話:</td>
				<td><input type="TEXT" name="cellphone" size="45"
					value="<%=memVO.getCellphone()%>" /></td>
			</tr>
			<tr>
				<td>聯絡地址:</td>
				<td><input type="TEXT" name="address" size="45"
					value="<%=memVO.getAddress()%>" /></td>
			</tr>
			<tr>
				<td>頭像圖片:</td>
				<td><input type="file" name="m_photo" id="m_photo_id"
					accept="image/gif, image/jpeg, image/png" />
					<div>
					<% if(session.getAttribute("m_photo") == null){ %>
						<img id="member_avatar"
								src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memVO.sq_member_id}"
								style="height: 100px;">
					<%}else{%>
					<img id="member_avatar" src="<%=request.getContextPath()%>/member/MemSessionImg.do"
								class="img-fluid" style="height: 100px;">
					<%}%>
					</div></td>
			</tr>
			<tr>
				<td>名片背景圖:</td>
				<td><input type="file" name="back_img" 
					id="back_img_id" accept="image/gif, image/jpeg, image/png" />
					<div>
						<% if(session.getAttribute("back_img") == null){ %>
						<img id="Signature_file"
								src="<%=request.getContextPath()%>/member/DBReader2.do?sq_member_id=${memVO.sq_member_id}"
								style="height: 100px;">
					<%}else{%>
							<img id="Signature_file" src="<%=request.getContextPath()%>/member/MemSessionBackImg.do"
								class="img-fluid" style="height: 100px;">
					<%}%>
					</div>
			</tr>

		</table>
		<br> <input type="hidden" name="action" value="update"> <input
			type="hidden" name="sq_member_id"
			value="<%=memVO.getSq_member_id()%>"> <input type="submit"
			value="送出修改">
	</FORM>
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
        $.datetimepicker.setLocale('zh');
        $('#b_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value:'<%=memVO.getBirthday()%>',

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
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#Signature_file').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#back_img_id").change(function() {
		readURL2(this);
	});
</script>
</html>