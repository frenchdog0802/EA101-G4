<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.type.model.*"%>

<jsp:useBean id="BikeTypeVO" class="com.bike.type.model.BikeTypeVO"
	scope="request" />

<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
<style>
font-good {
    font-size: 16px !important;
} 
@media ( min-width :1000px) {
	.mydescription {
		word-break: break-all;
		max-width: 700px;
	}
}

@media ( max-width :999px) {
	.mydescription {
		word-break: break-all;
		max-width: 960px;
	}
}
</style>
<!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/backBody"%>
<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
<!--分頁自己改-->
<div class="row " style="background-color: white;">
	<ul class="nav nav-tabs ">
		<li class="nav-item ">
			<a class="nav-link active" href="<%=request.getContextPath()%>/back-end/bike/bikeTypeListAll.jsp">
				<span style="padding-bottom: 8px; border-bottom: 3px blue solid;">車種管理</span>
			</a>
		</li>
		<li class="nav-item ">
			<a class="nav-link" href="<%=request.getContextPath()%>/back-end/bike/newBikeListAll.jsp">
				<span>車輛管理</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
				<span>訂單管理</span>
			</a>
		</li>
		<li class="nav-item mt-1">
			<form class="form-inline"
				ACTION="<%=request.getContextPath()%>/bike/BikeTypeServlet.do">
				<div class="form-group mx-sm-3 ">
					<label for="inputbike_type_id" class="sr-only">請輸入車種編號</label> <input
						type="text" class="form-control" id="inputbike_type_id"
						name="sq_bike_type_id" placeholder="請輸入車種編號">
				</div>
				<input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" class="btn btn-primary  " value="查詢"></input>
				<a
					href="<%=request.getContextPath()%>/back-end/bikeType/addBikeType.jsp"
					class="btn btn-success  mx-3">新增</a>
			</form>
		</li>
	</ul>
</div>
<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
<!-----------backNav----------->
<%@include file="/back-end/backFrame/masterBackNav"%>
<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->
<!-- 自由發揮處 -->
<%
	List<BikeTypeVO> list;
	if (BikeTypeVO.getSq_bike_type_id() != null) {
		list = Arrays.asList(BikeTypeVO);
		pageContext.setAttribute("list", list);
	} else {
		BikeTypeService bikeDao = new BikeTypeService();
		list = bikeDao.getAll();
		pageContext.setAttribute("list", list);
	}
%>




<div class="container-fluid mt-1">
	<div class="row collapse" id="collapseExample">
		<div class="col-1"></div>
		<div class="col-6 my-1">
			<button class="btn bg-primary mx-2" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeMaster.jsp'">訂單(未取車)</button>
			<button class="btn bg-primary mx-2" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/MasterEx.jsp'">訂單(已取車,未還車)</button> 
			<button class="btn bg-primary mx-2" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeRentHistory.jsp'">歷史訂單</button>
		</div>
	</div>	
	<div class="table-responsive">
		<table
			class="table text-center table-bordered table-striped table-hover h6" >
			<thead class="thead-dark font-good">
				<tr>
					<th scope="col">圖片</th>
					<th scope="col">名稱</th>
					<th scope="col">車種標題</th>
					<th scope="col">車種敘述</th>
					<th scope="col">價格/天</th>
					<th scope="col">價格/時</th>
					<th scope="col">修改</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="/back-end/bikeType/page1.file"%>
				<c:forEach var="bikeVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td><img
							src="<%=request.getContextPath()%>/photo/DBReader.do?sq_bike_type_id=${bikeVO.sq_bike_type_id}"
							height="50%"></td>
						<td class="align-middle">${bikeVO.bike_type_name}</td>
						<td class="align-middle">${bikeVO.bike_title}</td>
						<td class="mydescription align-middle">${bikeVO.bike_description}</td>
						<td class="align-middle">${bikeVO.bike_daily_price}</td>
						<td class="align-middle">${bikeVO.bike_hourly_price}</td>
						<td class="align-middle">
							<FORM METHOD="post"
								ACTION="<%=request.getContextPath()%>/bike/BikeTypeServlet.do"
								style="margin-bottom: 0px;">
								<input type="submit" value="修改" class="btn btn-danger ">
								<input type="hidden" name="sq_bike_type_id"
									value="${bikeVO.sq_bike_type_id}"> <input type="hidden"
									name="action" value="getOne_For_Update">
							</FORM>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="/back-end/bikeType/page3.file"%>
		<div class="w-100 m-3"></div>
	</div>
</div>
<script>
	$(function() {
		//table 
		$("tbody tr").click(function() {
			$("tbody tr").css({
				"background-color" : "inherit",
				"color" : "inherit"
			});
			$(this).css({
				"background-color" : "#CCDDFF",
				"color" : "#fff"
			});
		});
		//pagelink
		$(".page-index").eq(
<%=whichPage - 1%>
	).addClass("text-danger");

	})
</script>
<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>
