<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.type.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<jsp:useBean id="BikeTypeVO" class="com.bike.type.model.BikeTypeVO" scope="request" /> 
 

<%
BikeTypeService bikeDao = new BikeTypeService();
List<BikeTypeVO> list = bikeDao.getAll();
pageContext.setAttribute("list", list);

if (BikeTypeVO.getSq_bike_type_id() != null) {
	pageContext.removeAttribute("list");
	List<BikeTypeVO> list1 = Arrays.asList(BikeTypeVO);
	pageContext.setAttribute("list", list1);
}
%>
<html>
<head>
	<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<!-- Bootstrap CSS -->

	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
	<style>
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
	<body>

		<div class="container-fluid">
			<form class="form-inline"
			ACTION="<%=request.getContextPath()%>/bike/BikeTypeServlet.do">
			<div class="form-group mx-sm-3 mt-3">
				<label for="inputbike_type_id" class="sr-only">請輸入車種編號</label> <input
				type="text" class="form-control" id="inputbike_type_id"
				name="sq_bike_type_id" placeholder="請輸入車種編號">
			</div>
			<input type="hidden" name="action" value="getOne_For_Display">
			<input type="submit" class="btn btn-primary mt-3" value="查詢"></input>
			<a
			href="<%=request.getContextPath()%>/back-end/bikeType/addBikeType.jsp"
			class="btn btn-success mt-3 mx-3">新增</a>
		</form>
	</div>

	<div class="container-fluid">
		<div class="table-responsive">
			<table
			class="table text-center table-bordered table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">圖片</th>
					<th scope="col">車種名稱</th>
					<th scope="col">車種標題</th>
					<th scope="col">車種敘述</th>
					<th scope="col">價格/天</th>
					<th scope="col">修改</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="page1.file"%>
				<c:forEach var="bikeVO" items="${list}" begin="<%=pageIndex%>"
				end="<%=pageIndex+rowsPerPage-1%>">
				<tr>
					<td><img
						src="<%=request.getContextPath()%>/photo/DBReader.do?sq_bike_type_id=${bikeVO.sq_bike_type_id}"
						height="50%"></td>
						<td class="align-middle">${bikeVO.bike_type_name}</td>
						<td class="align-middle">${bikeVO.bike_title}</td>
						<td class="mydescription align-middle">${bikeVO.bike_description}</td>
						<td class="align-middle">${bikeVO.price}</td>
						<td class="align-middle">
							<FORM METHOD="post"
							ACTION="<%=request.getContextPath()%>/bike/BikeTypeServlet.do"
							style="margin-bottom: 0px;">
							<input type="submit" value="修改" class="btn btn-danger ">
							<input type="hidden" name="sq_bike_type_id"
							value="${bikeVO.sq_bike_type_id}"> <input
							type="hidden" name="action" value="getOne_For_Update">
						</FORM>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<%@ include file="page3.file"%>
	<div class="w-100 m-3"></div>
</div>
</div>



<!-- 			<td> -->
	<%-- 			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/emp/emp.do" style="margin-bottom: 0px;"> --%>
		<!-- 			     <input type="submit" value="刪除"> -->
		<%-- 			     <input type="hidden" name="empno"  value="${bikeVO.empno}"> --%>
		<!-- 			     <input type="hidden" name="action" value="delete"></FORM> -->
		<!-- 			</td> -->


		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
		<script>
			$(function(){
				$("tbody tr").click(function(){	
					$("tbody tr").css({"background-color":"inherit",
						"color":"inherit"});
					$(this).css({"background-color":"#CCDDFF",
						"color":"#fff"});	
				});
			})	
		</script>
	</body>
	</html>