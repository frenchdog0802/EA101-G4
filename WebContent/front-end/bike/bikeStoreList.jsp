<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.store.model.*"%>
<link rel="stylesheet"
href="<%=request.getContextPath()%>/front-end/css/bikeStoreList.css">
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService" />
<style>

html,
body {
  font-family: 'Noto Sans TC', sans-serif !important;
  height: 100%;
}
::-webkit-scrollbar {
  display:none;
}

.jumbotron {
  margin-bottom: 0;
  background-image: url("\EA101-G4\WebContent\front-end\img\18-1.jpg");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}



.jumbotron .container {
  font-size: 32px !important;
  padding: 4rem;
}




/*調整底部footer*/
#footer-main {
  background: #222;
  color: white;
  font-size: 0.8rem;
  padding: 2.5rem 0;
  font-family: "Microsoft YaHei", cursive;
}


/*導覽列顏色+透明度*/

nav {
  background-color: #fff933;
  font-family: "Microsoft YaHei", cursive;
  margin-right: auto;
  margin-left: auto;
  line-height: 1rem;
}
.dropdown-menu {
  width: auto;
  height: auto;
  background-color: #fff933;
  font-family: "Microsoft YaHei", cursive;
  font-size: 16px;
  margin: 2px;
  padding-top: 5px;
  overflow: hidden;
  float: left;
  line-height: 35px;
  min-width: 100%;
  border: 0px;
}
#submenu >li a {
  cursor: pointer;
  width: 100%;
  text-align:center;
  color:black;
}
.dropdown-item{
 color: black;
 width: 100%;
}
.sidebarYellow-1{
  background-color: #fff933;
}
.sidebarYellow-2{
  background-color: #fff000;
}
</style>
<%
BikeStoreService BikeStoreDAOService = new BikeStoreService();
List<BikeStoreVO> list = BikeStoreDAOService.getAll();
pageContext.setAttribute("list", list);
%>
<html lang="en">
<head>
</head>
<body>
	<%@include file="/front-end/bike/page-nav"%>
	
	<img src="/EA101-G4/WebContent/front-end/img/18-1.jpg">
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<div class="row text-center">
					<div class="col">
						<label for="startDate">取車日期&時間 : </label> <input id="startDate"
						name="startDate" type="text" autocomplete="off">
					</div>
					<div class="col">
						<label for="endDate">還車日期&時間 : </label> <input type="text"
						id="endDate" name="endDate" autocomplete="off">
					</div>
				</div>
			</div>
		</div>
		<!-- 分頁 -->
		<div class="row mt-4">
			<div class="col-8">
				<nav class="nav nav-pills nav-fill nav-tabs nav-area">
					<a href="#" class=" nav-item nav-link  active" data-toggle="pill">全臺</a>
					<a href="#" class=" nav-item nav-link " data-toggle="pill">北部</a> <a
					href="#" class=" nav-item nav-link " data-toggle="pill">中部</a> <a
					href="#" class=" nav-item nav-link " data-toggle="pill">南部</a> <a
					href="#" class=" nav-item nav-link " data-toggle="pill">東部</a>

				</nav>
			</div>
			<div class="col-4">
				<div class="form-group row mt-1 mb-1">
					<label for="Search" class="col-form-label">Search : </label>
					<div>
						<input type="text" class="form-control search" placeholder="收尋店家"
						id="Search">
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="table-responsive">
				<table
				class="table table-striped table-hover text-center table-bordered ">
				<thead class="thead-light">
					<tr>
						<th scope="col">店家</th>
						<th scope="col">地址</th>
						<th scope="col">電話</th>
						<th scope="col">營業時間</th>
						<th scope="col">車輛數量</th>
					</tr>
				</thead>
				<tbody id="tbody">
					<c:forEach var="BikeStoreVO" items="${list}" varStatus="e">
					<tr>
						<th>${BikeStoreVO.bike_store_name }</th>
						<th>${BikeStoreVO.location }</th>
						<th>${BikeStoreVO.phone }</th>
						<th>${BikeStoreVO.store_opentime }</th>
						<th>${BikeSvc.findStoreBikeEmpty(BikeStoreVO.sq_bike_store_id)}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>


</div>

<%@include file="/front-end/bike/page-footer"%>

<script>
	
	$.datetimepicker.setLocale('zh');
	$(function() {
		
		//ajax SearchArea
		$(".nav-area>a").click(function() {
			var area = $(this).text();
			$.ajax({
				type :"POST",
				url  : "<%=request.getContextPath()%>/bike/BikeStoreAjaxServlet.do",
				data : {
					action:"searchArea",
					area : area,                            
				},
				dataType: "JSON",
				success : function(data) {
					let str = "";
					　$.each(data.returnValue, function(index, json) { 
						str+="<tr>";
						str+=
						"<td>"+json.bike_store_name+"</td>"+
						"<td>"+json.location+"</td>"+
						"<td>"+json.phone+"</td>"+
						"<td>"+json.store_opentime+"</td>"+
						"<td>"+json.empty_bike+"</td>";
						str+="</tr>";
					　　}); 
					$("tbody").empty();
					$("tbody").append(str);
				}
			})
		});
		


			//ajax SearchDate
			var startDate;
			var endDate;
			$('#startDate').change(function(){
				startDate =  $(this).val();
			})
			$('#endDate').change(function(){
				endDate =  $(this).val();
				$.ajax({
					type :"POST",
					url  :"<%=request.getContextPath()%>/bike/BikeStoreAjaxServlet.do",
					dataType : "JSON",
					data : {
						action : "searchDate",
						startDate : startDate,
						endDate : endDate,
					},
					success : function(data) {
						
						//獲取表格資料
						var tbody = document.getElementById("tbody");
						let rows = tbody.rows.length;

						for(let i =0 ; i <rows ; i++){
							for(let j=0 ; j<tbody.rows[i].cells.length ; j++){
								let storeName = tbody.rows[i].cells[0].innerHTML;
								tbody.rows[i].cells[4].innerHTML = data[storeName];
							}
						}
					}
				})
			})

			

			//ajax submit data
			$("#tbody tr").click(function(e){
				console.log($(this).text());
			})
			
			//table hover
			$("#tbody tr").hover(function(){
				$(this).css('cursor', 'pointer');
				$(this).css('color', 'blue');
			},function(){
				$(this).css('color', 'inherit');
			})

				
			

			//datetimepicker
			$('#startDate').datetimepicker(
			{
						timepicker : true, //timepicker: false,
						step : 60, //step: 60 (這是timepicker的預設間隔60分鐘)
						format : 'Y-m-d H:i',
						value : '',
						minDate : '-1970-01-01',
						timepicker : true,
						onShow : function() {
							this.setOptions({
								maxDate : $('#endDate').val() ? $('#endDate')
								.val() : false
							})
						}
					//minDate:           '-1970-01-01', // 去除今日(不含)之前
					//maxDate:           '+1970-01-01'  // 去除今日(不含)之後
				});

			$('#endDate').datetimepicker(
			{
				format : 'Y-m-d H:i',
				onShow : function() {
					this.setOptions({
						minDate : $('#startDate').val() ? $(
							'#startDate').val() : false
					})
				},

				timepicker : true,
				step : 60
			})
		});
	</script>

</body>
</html>
