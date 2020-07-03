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
				<input id="searchDate" class="form-control" 
				type="text" autocomplete="off" placeholder="選擇日期">
			</div>
			<button type="button" class="btn btn-primary mx-2 mb-2">搜尋</button>
			 <div class="form-group mx-sm-3 mb-2">
				<input id="searchRentID" class="form-control" 
				type="text" autocomplete="off" placeholder="輸入訂單編號">
			</div>
			<button type="button" class="btn btn-primary mb-2">搜尋</button>
		</form>
	</div>

	<div class="row">
		<table class="table text-center table-hover">
			<thead>
				<tr>
					<th scope="col">順序</th>
					<th scope="col">訂單編號</th>
					<th scope="col">車種</th>
					<th scope="col">車輛編號</th>
					<th scope="col">時間</th>
					<th scope="col">確認車輛</th>
					<th scope="col">取消訂單</th>
				</tr>
			</thead>
			<tbody id="tbody">

			</tbody>
		</table>
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
				action:"initList",
			},
			dataType: "JSON",
			success : function(data) {
				var returnObj = data.returnList
				console.log(returnObj);
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
					component += `
						<tr>
						<td>${'${i+1}'}</td>
						<td>${'${sq_rent_id}'}</td>
						<td>${'${bikeTypeName}'}</td>
						<td>
						<select id='SelectBike'>
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
							<td><button class="btn btn-primary btn-sm">送出</button></td>
							<td><button class="btn btn-danger btn-sm">取消</button></td>
						</tr>`;
					
				}
				$("#tbody").html(component);
				
				
			}
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
</script>
<%@include file="/back-end/backFrame/backFooter"%>
