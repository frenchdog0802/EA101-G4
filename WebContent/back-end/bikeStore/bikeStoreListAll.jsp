<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.bike.store.model.*"%>
<%@ page import="java.util.*"%>
<%@include file="/back-end/backFrame/backHeader"%>
<jsp:useBean id="bikeStoreSvc" class="com.bike.store.model.BikeStoreService"/>
<!---------放自己的CSS與title----------->
<%
	BikeStoreService bikeStoreService = new BikeStoreService();
	List<BikeStoreVO> list = bikeStoreService.getAll();
	pageContext.setAttribute("list", list);
%>

<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/back-end/bikeStore/bikeStoreListAll.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">全部商家</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/bikeStore/addBikeStore.jsp"><span>新增商家</span></a>
		</li>
	</ul>
</div>
<!--分頁自己改-->
<%@include file="/back-end/backFrame/backNav"%>
<!-- 自由發揮處 -->
<div class="container-fluid ">
	<div class="table-responsive">
		<table
			class="table text-center table-bordered table-striped table-hover">
			<thead >
				<tr class="table-info">
					<th scope="col">商家相片</th>
					<th scope="col">商家編號</th>
					<th scope="col">商家名稱</th>
					<th scope="col">商家帳號</th>
					<th scope="col">商家電話</th>
					<th scope="col">商家郵件</th>
					<th scope="col">商家地址</th>
					<th scope="col">營業時間</th>
					<th scope="col">商家狀態</th>
					<th scope="col">修改</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="/back-end/bikeStore/page1.file"%>
				<c:forEach var="bikeStoreVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td class="align-middle"><img src="<%=request.getContextPath()%>/bike/BikeStoreDBReader.do?sq_bike_store_id=${bikeStoreVO.sq_bike_store_id}" class="img-fluid" height=100 width=100></td>
						<td class="align-middle">${bikeStoreVO.sq_bike_store_id}</td>
						<td class="align-middle">${bikeStoreVO.bike_store_name}</td>
						<td class="align-middle">${bikeStoreVO.store_account}</td>
						<td class="align-middle">${bikeStoreVO.phone}</td>
						<td class="align-middle">${bikeStoreVO.store_email}</td>
						<td class="align-middle">${bikeStoreVO.location}</td>
						<td class="align-middle">${bikeStoreVO.store_opentime}</td>
						<td class="align-middle" >${bikeStoreSvc.store_status(bikeStoreVO.store_status)}</td>
						<td style="vertical-align:middle">
							<form action="<%=request.getContextPath()%>/bike/BikeStoreServlet.do" method="POST">
								<input type="hidden" name="sq_bike_store_id" value="${bikeStoreVO.sq_bike_store_id}">
								<input type="hidden" name="action" value="getOne_For_Display">
								<input type="submit"  value="修改" class="btn btn-danger btn-sm">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="/back-end/bikeStore/page3.file"%>
	</div>
</div>

<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>