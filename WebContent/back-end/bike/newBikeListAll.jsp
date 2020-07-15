<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.stream.Collectors"%>
<%@ page import="com.bike.bike.model.*"%>
<%@ page import="com.bike.store.model.*"%>

<jsp:useBean id="bikeTypeSvc" scope="page"
	class="com.bike.type.model.BikeTypeService" />
<jsp:useBean id="BikeVO" class="com.bike.bike.model.BikeVO"
	scope="request" />
<%
	BikeService bikeDao = new BikeService();
	List<BikeVO> list = bikeDao.getAll();
	
	
	//獲取店家編號 
	BikeStoreVO BikeStoreVO = (BikeStoreVO) session.getAttribute("BikeStoreVO");
	String sq_bike_store_id = BikeStoreVO.getSq_bike_store_id();
	List<BikeVO> storeBikeVOList = list.stream()
							.filter(e->e.getSq_bike_store_id().equals(sq_bike_store_id))
							.collect(Collectors.toList());
							
	
	pageContext.setAttribute("list", storeBikeVOList);

	if (BikeVO.getSq_bike_type_id() != null) {
		List<BikeVO> list1 = Arrays.asList(BikeVO);
		pageContext.setAttribute("list", list1);
	}
%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->

<!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/masterBackBody"%>
<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item "><a class="nav-link"
			href="<%=request.getContextPath()%>/back-end/bike/bikeTypeListAll.jsp">
				<span>車種管理</span>
		</a></li>
		<li class="nav-item "><a class="nav-link active"
			href="<%=request.getContextPath()%>/back-end/bike/newBikeListAll.jsp">
				<span style="padding-bottom: 8px; border-bottom: 3px blue solid;">車輛管理</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#collapseExample" role="button" aria-expanded="false"
			aria-controls="collapseExample"> <span>訂單管理</span>
		</a></li>
		<li class="nav-item"><a class="nav-link active"
			href="<%=request.getContextPath()%>/bike/BikeStoreServlet.do?action=bikeStoreOwner&sq_bike_store_id=${BikeStoreVO.sq_bike_store_id}"><span>店家資訊</span></a>
		</li>
	</ul>
</div>
<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
<!-----------backNav----------->
<%@include file="/back-end/backFrame/masterBackNav"%>
<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->
<!-- 	<div class="container"> -->
<%-- 		<form action="<%=request.getContextPath()%>/bike/BikeServlet.do" method="POST"> --%>
<!-- 		<div class="form-group row"> -->
<!-- 			<label for="choose_bikeType" class="col-form-label">選擇車種</label> -->
<!-- 				<select  id="sq_bike_type_id" name="sq_bike_type_id"> -->
<%-- 					<c:forEach var="bikeTypeVO" items="${bikeTypeSvc.getAll()}"> --%>
<%-- 						<option value="${bikeTypeVO.sq_bike_type_id}">${bikeTypeVO.bike_type_name}</option> --%>
<%-- 					</c:forEach> --%>
<!-- 				</select> -->
<!-- 			<input type="hidden" name="action" value="choose_type"> -->
<!-- 			<input type="submit" value="送出"> -->
<!-- 		</div> -->
<!-- 		</form> -->
<!-- 	</div> -->
<div class="container-fluid">

	<div class="row collapse" id="collapseExample">
		<div class="col-1"></div>
		<div class="col-6 my-1">
			<button class="btn bg-primary mx-2"
				onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeMaster.jsp'">訂單(未取車)</button>
			<button class="btn bg-primary mx-2"
				onclick="location.href='<%=request.getContextPath()%>/back-end/bike/MasterEx.jsp'">訂單(已取車,未還車)</button>
			<button class="btn bg-primary mx-2"
				onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeRentHistory.jsp'">歷史訂單</button>
		</div>
	</div>

	<form class="form-inline"
		ACTION="<%=request.getContextPath()%>/bike/BikeServlet.do">
		<div class="form-group mx-sm-3 mt-3">
			<label for="inputbike_type_id" class="sr-only">請輸入車輛編號</label> <input
				type="text" class="form-control" id="inputbike_type_id"
				name="sq_bike_id" placeholder="請輸入車種編號">
		</div>
		<input type="hidden" name="action" value="getOne_For_Display">
		<input type="submit" class="btn btn-primary mt-3" value="查詢"></input>
		<a href="<%=request.getContextPath()%>/back-end/bike/addBike.jsp"
			class="btn btn-success mt-3 mx-3">新增</a>
	</form>
</div>
<div class="container-fluid mt-3">
	<div class="table-responsive">
		<table
			class="table text-center table-bordered table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">車輛編號</th>
					<th scope="col">車種</th>
					<th scope="col">車輛狀態</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="/back-end/bike/pagebike.file"%>
				<c:forEach var="bikeVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td class="align-middle">${bikeVO.sq_bike_id}</td>
						<td class="align-middle">${bikeTypeSvc.findByPrimaryKey(bikeVO.sq_bike_type_id).bike_type_name}</td>
						<td class="mydescription align-middle">

							${bikeTypeSvc.findBikeStatus(bikeVO.bike_status)}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="/back-end/bike/page3.file"%>
		<div class="w-100 m-3"></div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<%-- <script src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script> --%>

<script>
	$(function() {
		//whichPage-1 不然會多一個index
		$(".page-index").eq(
<%=whichPage - 1%>
	).addClass("text-danger");

	})
</script>
<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>
