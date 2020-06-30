<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="BikeTypeSvc"
	class="com.bike.type.model.BikeTypeService" scope="page" />
<jsp:useBean id="BikeStoreVO" class="com.bike.store.model.BikeStoreVO"
	scope="session" />


<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<style type="text/css" media="screen">
.border-width {
	border-width: 3px !important;
}

.conGray {
	background-color: #fafafa;
}
</style>

</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container my-5">
		<form method="POST" action="<%=request.getContextPath()%>/bike/BikeEcpayServlet.do">
			<div class="row ">
				<div class="col">
					<!-- img -->
					<img
						src="<%=request.getContextPath()%>/photo/DBReader.do?sq_bike_type_id=630001"
						class="img-thumbnail" id="bike-img" alt="" width="300"
						height="300" />
				</div>
				<div class="col">
					<!-- 預定車型 -->
					您預定的車型是:
					<c:forEach var="item" items="${bookMap}">
						<div>
							${BikeTypeSvc.findByPrimaryKey(item.key).bike_type_name} x
							${item.value} 輛</div>
					</c:forEach>
				</div>

			</div>
			<div class="container my-5 ">
				<!-- 取車 -->
				<div class="row text-center">
					<div class="col-md-2">
						<span class="display-4 text-dark">取</span>
						<hr>
					</div>
					<div class="col-md-5 h2 align-self-center">
						<span class="startDate"></span>
					</div>
					<div class="col-md-5 h2 align-self-center">
						<span class="startTime"></span>
					</div>
				</div>

				<div class="row">
					<div class="offset-md-3 col-md-5 text-secondary">
						<p>${BikeStoreVO.bike_store_name}</p>
						<p>${BikeStoreVO.phone}</p>
						<p>${BikeStoreVO.location}</p>
						<p>${BikeStoreVO.store_opentime}</p>
					</div>

				</div>

				<!-- 還車 -->
				<div class="row text-center">
					<div class="col-md-2">
						<span class=" display-4 text-dark ">還</span>
						<hr>
					</div>
					<div class="col-md-5 h2 align-self-center">
						<span class="endDate"></span>
					</div>
					<div class="col-md-5 h2 align-self-center">
						<span class="endTime"></span>
					</div>
				</div>

			</div>

			<div class="container  font-weight-bold p-4 mt-3 conGray">
				<div class="row">
					<div class="col">
						<sapn class="h3 font-weight-bold">確認訂單</sapn>
						<hr>
					</div>

				</div>
				<div class="row">
					<div class="col offset-1 h4">數量:</div>
					<div class="col offset-3 text-danger h4">${bookMap.size()}台</div>
				</div>
				<div class="row">
					<div class="col offset-1 h4">總共:</div>
					<div class="col offset-3 text-danger h4">${days==0?0:days}天
						${hours==0?0:hours}小時</div>
				</div>
				<div class="row">
					<div class="col offset-1 h4">金額:</div>
					<div class="col offset-3 text-danger h4">${totalPrice}元</div>
					<input type="hidden" value = "${totalPrice}" name ="totalPrice"/>
				</div>
			</div>
			<div class="container mt-3">
				<div class="row text-center">
					<div class="col">
						<input type="submit" class="btn btn-danger btn-lg"
							value="修改資訊(還未做功能)">
					</div>
					<div class="col">
						<input type="hidden" name="action" value="pay">
						<input type="submit" class="btn btn-primary btn-lg" value="確認訂單">
					</div>
				</div>
			</div>
		</form>
	</div>
	<%@include file="/front-end/page-file/page-footer"%>
	<!-- 	基本的jquery已經引入  需要datetimepicker再自己引入 -->


	<script>
		$(function() {
			$(".fun-text").text(""); // text("")裡面自己輸入功能名稱 

			//切時間做處理
			var startDate = "${startDate}";
			var startDateStr = startDate.split(" ");//["2020-08-15", "13:00"]
			$(".startDate").text(startDateStr[0]);
			$(".startTime").text(
					getDayOfWeek(startDate) + " " + startDateStr[1]);

			var endDate = "${endDate}";
			var endDateStr = endDate.split(" ");//["2020-08-15", "13:00"]
			$(".endDate").text(endDateStr[0]);
			$(".endTime").text(getDayOfWeek(endDate) + " " + endDateStr[1]);

		});

		function getDayOfWeek(dateStr) {
			var dayOfWeek = "";
			dateStr = dateStr.replace(/-/g, '/');
			var date = new Date(dateStr);
			switch (date.getDay()) {
			case 0:
				dayOfWeek = '週日';
				break;
			case 1:
				dayOfWeek = '週一';
				break;
			case 2:
				dayOfWeek = '週二';
				break;
			case 3:
				dayOfWeek = '週三';
				break;
			case 4:
				dayOfWeek = '週四';
				break;
			case 5:
				dayOfWeek = '週五';
				break;
			case 6:
				dayOfWeek = '週六';
				break;
			}
			return dayOfWeek;
		}
	</script>

</body>
</html>