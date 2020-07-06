<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<%@include file="/back-end/backFrame/backHeader"%>
<jsp:useBean id="bikeRentDetailSvc"
class="com.bike.rent.detail.model.BikeRentDetailService" />


<!---------放自己的CSS與title----------->
<link rel="stylesheet" type="text/css"
href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<%@include file="/back-end/backFrame/backBody"%>
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="#"><span
			style="padding-bottom: 8px; border-bottom: 3px blue solid;">item1</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
			<li class="nav-item"><a class="nav-link" href="#"><span>item2</span></a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#"><span>item3</span></a>
			</li>
		</ul>
	</div>
	<!--分頁自己改-->
	<%@include file="/back-end/backFrame/backNav"%>

	<!-- 自由發揮處 -->

	<div class="container-fluid mx-3">
		<div class="row mt-1">
			<form class="form-inline">
				<div class="form-group mb-2">
					<input id="searchDate" class="form-control" type="text"
					autocomplete="off" placeholder="選擇日期">
				</div>
				<button type="button" class="btn btn-primary mx-2 mb-2">搜尋</button>
				<div class="form-group mx-sm-3 mb-2">
					<input id="searchRentID" class="form-control" type="text"
					autocomplete="off" placeholder="輸入訂單編號">
				</div>
				<button type="button" class="btn btn-primary mb-2">搜尋</button>
			</form>
		</div>

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


	<!-- 自由發揮處 -->

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
			}
		})
		
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
			console.log(jsonStr);
			$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
				data : {
					action:"submitBike",
					jsonStr : jsonStr,
					sq_rent_id : sq_rent_id,
				},
				complete:function(){
					window.location = "<%=request.getRequestURL()%>";
				}
			})
			
		})
		
		
		//dateTimepicker
		$('#searchDate').datetimepicker({
			format : 'Y-m-d',
			onShow : function() {
				this.setOptions({
					minDate : '-1970-01-01',
				})
			},
			timepicker : false,
		});

	});
		
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
<%@include file="/back-end/backFrame/backFooter"%>