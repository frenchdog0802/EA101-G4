<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/front-end/index/index.css">

	<title>Welcome to EA101-G4</title>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container mt-3">
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			租車訂單  <a class="btn btn-primary float-right mt-1"
				href="<%=request.getContextPath()%>/front-end/bike/memberOderHistory.jsp">歷史訂單</a>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="<%=request.getContextPath()%>/front-end/bike/memberOrder.jsp">Home</a>
			</li>
			<li class="breadcrumb-item active">租車訂單</li>
		</ol>
	</div>

	<div class="container mb-5 mt-3">
		<div class="row">
			<table class="table text-center table-hover">
				<thead>
					<tr>
						<th scope="col">訂單編號</th>
						<th scope="col">店家</th>
						<th scope="col">取車時間</th>
						<th scope="col">還車時間</th>
						<th scope="col">租車數量</th>
						<th scope="col">金額</th>
						<th scope="col">取消訂單</th>
					</tr>
				</thead>
				<tbody id="masterTbody">

				</tbody>
			</table>
		</div>


	</div>



	<%@include file="/front-end/page-file/page-footer"%>
	<!-- 	jquery已經引入  -->
	<!-- 	sweetAlert已經引入   -->
	<!-- 	boostrap4已經引入   -->


	<script>
		$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
		
	//init table
	$.ajax({
		url:"<%=request.getContextPath()%>/bike/BikeRentMasterServlet.do",
		type : "POST",
		data : {
			action : "memberOrderInit"
		},
		dataType : "JSON",
		success : function(data) {
			var str ;
			for (var i = 0; i < Object.keys(data).length; i++) {
				var json = data[i];
				var Sq_rent_id = json.Sq_rent_id;
				var Rsved_rent_date = json.Rsved_rent_date.slice(0,16);
				var Ex_return_date = json.Ex_return_date.slice(0,16);
				var bike_store_name = json.bike_store_name;
				var Od_total_price = json.Od_total_price;
				var total = json.total;
				str += "<tr>";
				str += "<td>" + Sq_rent_id + "</td>";
				str += "<td>" + bike_store_name + "</td>";
				str += "<td class='text-danger'>" + Rsved_rent_date + "</td>";
				str += "<td class='text-danger'>" + Ex_return_date + "</td>";
				str += "<td>" + total + "</td>";
				str += "<td>" + Od_total_price + "</td>";
				str += "<td><button class='btn btn-sm btn-danger btn-cancel'>取消</button></td>";
				str += "</tr>";
			}
			$("#masterTbody").html(str);
		},
		complete:function(){
			$(".btn-cancel").click(function(){
				var Sq_rent_id = $(this).closest("tr").find("td").eq(0).text();
				Swal.fire({
					title: '確定取消嗎?',
					text: "取消後無法復原!",
					icon: 'warning',
					showCancelButton: true,
					confirmButtonColor: '#3085d6',
					cancelButtonColor: '#d33',
					confirmButtonText: '確定!',
				}).then(function(){
					$.ajax({
						url:"<%=request.getContextPath()%>/bike/BikeRentMasterServlet.do",
						type : "POST",
						data : {
							Sq_rent_id : Sq_rent_id,
							action : "memberCancel"
						},
						complete:function(){
							window.location.href="<%=request.getRequestURL()%>";
						},
					})
				})
			})
		}
	})
});
</script>

</body>
</html>

