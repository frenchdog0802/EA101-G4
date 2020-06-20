<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.store.model.*"%>
<jsp:useBean id="BikeSvc" class="com.bike.bike.model.BikeService" />
<%
BikeStoreService BikeStoreDAOService = new BikeStoreService();
List<BikeStoreVO> list = BikeStoreDAOService.getAll();
pageContext.setAttribute("list",list);
%>
<html lang="en">
<head>
</head>
<body>
	<%@include file="/front-end/bike/page-nav" %>
	<div class="container mt-2">
		<div class="row">
			<div class="col">
				<div class="row text-center">
					<div class="col">
						<label for="startDate">出發日期&取車時間 : </label>
						<input type="datetime-local"  id="startDate">
					</div>
					<div class="col">
						<label for="endDate">結束日期&還車時間  : </label>
						<input type="datetime-local"  id="endDate">
					</div>
				</div>
			</div>
		</div>
		<!-- 分頁 -->
		<div class="row">
			<div class="col-8">
				<nav class="nav nav-pills nav-fill nav-tabs nav-area">
					<a href="#" class=" nav-item nav-link  active" data-toggle="pill">全臺</a>
					<a href="#" class=" nav-item nav-link " data-toggle="pill">北部</a>
					<a href="#" class=" nav-item nav-link " data-toggle="pill">南部</a>
					<a href="#" class=" nav-item nav-link " data-toggle="pill">東部</a>
					<a href="#" class=" nav-item nav-link " data-toggle="pill">西部</a>
				</nav>
			</div>
			<div class="col-4 ">
				<div class="form-group row mt-1">
					<label for="Search" class="col-form-label ">Search : </label>
					<div>
						<input type="text" class="form-control "  placeholder="key Word" id="Search">
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="table-responsive">
				<table class="table table-striped table-hover text-center table-bordered ">
					<thead class="thead-light">
						<tr>
							<th scope="col">店家</th>
							<th scope="col">地址</th>
							<th scope="col">電話</th>
							<th scope="col">營業時間</th>
							<th scope="col">車輛數量</th>
						</tr>
					</thead>
					<tbody>
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

<%@include file="/front-end/bike/page-footer" %>
<script>
	$(".nav-area>a").click(function() {
            
                var area = $(this).text() ;       
    
                // $.ajax({
                //         type :"POST",
                //         url  : "/testServlet/myServlet",
                //         data : { 
                //             datafromtestFile : $("#input").val(),                            
                //             },
                //         dataType: "text",
                //         success : function(happy) {
                //             $("#output").html(happy);                            
                //     }
                //     })
            });
	
// 	  $.datetimepicker.setLocale('zh'); // kr ko ja en
//       $('#f_date1').datetimepicker({
//          theme: '',          //theme: 'dark',
//          timepicker: true,   //timepicker: false,
//          step: 60,            //step: 60 (這是timepicker的預設間隔60分鐘)
// 	       format: 'Y-m-d H:i:s',
// 	       value: new Date(),
//          //disabledDates:    ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
//          //startDate:	        '2017/07/10',  // 起始日
//          //minDate:           '-1970-01-01', // 去除今日(不含)之前
//          //maxDate:           '+1970-01-01'  // 去除今日(不含)之後
//       });
</script>

</body>
</html>	