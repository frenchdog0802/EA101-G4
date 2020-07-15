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
			歷史訂單
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="<%=request.getContextPath()%>/front-end/bike/memberOrder.jsp">Home</a>
			</li>
			<li class="breadcrumb-item active">歷史訂單</li>
		</ol>
	</div>

	<div class="container my-5">
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
						<th scope="col">訂單狀態</th>
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
		$(function() {
			//init table
			$.ajax({
				url:"<%=request.getContextPath()%>/bike/BikeRentMasterServlet.do",
				type : "POST",
				data : {
					action : "memberOrderAllInit"
				},
				dataType : "JSON",
				success : function(data) {
					console.log(data);
					var str ;
					for (var i = 0; i < Object.keys(data).length; i++) {
						var json = data[i];
						var Sq_rent_id = json.Sq_rent_id;
						var Rsved_rent_date = json.Rsved_rent_date.slice(0,16);
						var Ex_return_date = json.Ex_return_date.slice(0,16);
						var bike_store_name = json.bike_store_name;
						var Od_total_price = json.Od_total_price;
						var Od_rent_status = json.Od_rent_status;
						var total = json.total;
						str += "<tr>";
						str += "<td>" + Sq_rent_id + "</td>";
						str += "<td>" + bike_store_name + "</td>";
						str += "<td>" + Rsved_rent_date + "</td>";
						str += "<td>" + Ex_return_date + "</td>";
						str += "<td>" + total + "</td>";
						str += "<td>" + Od_total_price + "</td>";
						str += "<td class='text-danger'>" + Od_rent_status + "</td>";
						str += "</tr>";
					}
					$("#masterTbody").html(str);
				},
			})
		});
	</script>

</body>
</html>

