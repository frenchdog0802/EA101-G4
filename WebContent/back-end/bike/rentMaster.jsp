<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.bike.type.model.*"%>

<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">

	<title>Hello, world!</title>
</head>
<body>
		<div class="container">
		<div class="row ">
			<div class="col">
						<div class="row text-center">
							<div class="col">
								<label for="startDate">出發日期 : </label>
								<input type="date"  id="startDate">
							</div>
							<div class="col">
								<label for="endDate">結束日期 : </label>
								<input type="date"  id="endDate">
							</div>
						</div>

						<!-- 分頁 -->
						<div class="row">
							<div class="col-9">
								<nav class="nav nav-pills nav-fill nav-tabs">
									<a href="#" class=" nav-item nav-link  active" data-toggle="pill">全臺</a>
									<a href="#" class=" nav-item nav-link " data-toggle="pill">北部</a>
									<a href="#" class=" nav-item nav-link " data-toggle="pill">南部</a>
									<a href="#" class=" nav-item nav-link " data-toggle="pill">東部</a>
									<a href="#" class=" nav-item nav-link " data-toggle="pill">西部</a>
								</nav>
							</div>
							<div class="col-3 mt-2">
								<label for="Search">Search : </label>
								<input type="text"  placeholder="key Word" id="Search">
							</div>
						</div>
					</div>

		</div>
		<div class="row">
			<div class="col">
				<table class="table table-striped table-hover text-center ">
					<thead class="thead-light">
						<tr>
							<th scope="col">區域</th>
							<th scope="col">店家</th>
							<th scope="col">地址</th>
							<th scope="col">剩餘車輛</th>
						</tr>
					</thead>
					<tbody>
					
						<tr>
							<th>aaa</th>
							<th>bbb</th>
							<th>aa</th>
							<th>bb</th>
						</tr>
						<tr>
							<th>aa</th>
							<th>aa</th>
							<th>aaa</th>
							<th>aa</th>
						</tr>
						<tr>
							<th>aaaaaaaaaa</th>
							<th>aaaaaaaaaa</th>
							<th>aaaaaaa</th>
							<th>aaaaaaaa</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>