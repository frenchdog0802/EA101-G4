<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>


<jsp:useBean id="bikeRentDetailSvc"
	class="com.bike.rent.detail.model.BikeRentDetailService" />
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
<!-- font style -->
<!---------放自己的CSS與title----------->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />


</head>
<body>
	<!-- 自由發揮處 -->
	<div class="container-fluid">
		<div class="row">
			<table class="table text-center table-hover">
				<thead>
					<tr>
						<th scope="col">訂單編號</th>
						<th scope="col">車種</th>
						<th scope="col">車輛編號</th>
						<th scope="col">時間</th>
						<th scope="col">取消車輛</th>
					</tr>
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col">
				<button class="btn btn-primary btn-block submitBikes">確認取車</button>
			</div>
		</div>
	</div>

		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<!-- 自由發揮處 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/front-end/page-file/js/nav.js"></script>
	<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

		//initValue
		$.ajax({
			url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
			type :"POST",
			data : {
				action:"initResv",
			},
			dataType: "JSON",
			success : function(data) {
				var returnObj = data.returnList
				var component ;
				for(var i =0 ; i<returnObj.length;i++){
					var json = returnObj[i];
					//訂單編號
					var sq_rent_id  = json.sq_rent_id;
					//車種
					var bikeTypeName = json.bikeTypeName;
					//車輛編號list
					var bikeTypeList = json.bikeTypeList;
					//時間
					var rsved_rent_date = json.rsved_rent_date
					var rsved_rent_date_str = rsved_rent_date.slice(0,16);
					//取訂單明細編號
					var sq_rent_detail_id = json.sq_rent_detail_id;
					component += `
					<tr>
					<td>${'${sq_rent_id}'}<input type="hidden" value="${'${sq_rent_detail_id}'}"></td>
					
					<td>${'${bikeTypeName}'}</td>
					<td>
					<select id="SelectBike${'${sq_rent_detail_id}'}">
					<option value="" disabled selected>選擇車輛</option>`;
					
					for(var j =0 ; j<bikeTypeList.length ; j++){
						component += `<option>${'${bikeTypeList[j]}'}</option>`;		
					};
					
					component +=`	
					</select>
					</td>
					<td>${'${rsved_rent_date_str}'}</td>
					`;
					
					component += `
					<td><button class="btn btn-danger btn-sm" onclick="submitfunc(${'${sq_rent_detail_id}'})" >取消</button></td>
					</tr>`;
					
				}
				$("#tbody").html(component);
			},
			complete:function(){
				//判斷時間未到不能取車
				checkTime();
			}
		})
	//確認租車
		$(".submitBikes").click(function(){
			//獲取表格資料
			var tbody = document.getElementById("tbody");
			var rows = tbody.rows.length;
			var sq_rent_id = tbody.rows[1].cells[0].innerText;
			var jsonStr = "{";//組合JSON字串
			for(var i =0 ; i <rows ; i++){	
				
				var sq_rent_detail_id = tbody.rows[i].cells[0].children[0].value;
				var sq_bike_id = tbody.rows[i].cells[2].children[0].value;
				
				if(i!=0){
					jsonStr+=",";
				}
				jsonStr+='"'+sq_rent_detail_id+'"';
				jsonStr+=":";
				jsonStr+='"'+sq_bike_id+'"';
			}
			jsonStr +="}";
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
				data : {
					action:"submitBike",
					jsonStr : jsonStr,
					sq_rent_id : sq_rent_id,
				},complete:function(){
					Swal.fire({
						  icon: 'success',
						  title: '取車成功',
						  timer: 1500,
						  showConfirmButton: true,
						  onClose: () => {
							  window.location.href="<%=request.getContextPath()%>/back-end/bike/bikeMaster.jsp";
						     }
				    });
				}
			})
			
		})
		
		
		
		

	});
		
	//判斷時間未到不能取車
	function checkTime(){
		 var resvTimet = $("#tbody>tr").find("td").eq(3).text();
	     var resvTime = new Date(Date.parse(resvTimet .replace(/-/g,"/")));
	     var curDate = new Date();
	     
	        if(resvTime <=curDate){
	        	$('.submitBikes').attr('disabled', false);
	        }else{
	        	$('.submitBikes').attr('disabled', true);
	        }
	}
		
	//deleteBike取消車輛
	function submitfunc(sq_rent_detail_id){
		//sweetAlert
		Swal.fire({
			title: '確定取消嗎?',
			text: "確認將無法回復!",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			cancelButtonText: '回上一頁!',
			confirmButtonText: '確認!'
		}).then((result) => {
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
				data : {
					action:"deleteBike",
					sq_rent_detail_id : sq_rent_detail_id,
				},	
				success:function(data){
					if (result.value) {
						Swal.fire(
							'已完成!',
							'明細已取消',
							'success',
							).then(function() {
								window.location = "<%=request.getRequestURL()%>";})
						}
					}
				})
		})
	}
	

</script>
</body>
</html>
