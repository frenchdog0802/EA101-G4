<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.staff.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<jsp:useBean id="StaffService" class="com.staff.model.StaffService" scope="page" /> 
<jsp:useBean id="StaffVO" class="com.staff.model.StaffVO" scope="request" /> 
								<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->    
 
                               <!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->  
								<!-----------backBody----------->
 <%@include file="/back-end/backFrame/backBody"%>
								<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
								<!--分頁自己改-->
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">item1</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item2</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item3</span></a>
					  </li>
					</ul>
				</div>	
								<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backNav----------->
	<%@include file="/back-end/backFrame/backNav"%>
								<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->					
<%
StaffService StaffSvc = new StaffService();
List<StaffVO> list = StaffSvc.getAll();
pageContext.setAttribute("list", list);
%>	
	<div class="container-fluid">
		<div class="table-responsive">
			<table
			class="table text-center table-bordered table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">員工編號</th>
					<th scope="col">員工姓名</th>
					<th scope="col">員工帳號</th>
					<th scope="col">員工郵件</th>
					<th scope="col">員工電話</th>
					<th scope="col">員工地址</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="page1.file"%>
				<c:forEach var="staffVO" items="${list}" begin="<%=pageIndex%>"
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
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backFooter----------->
		<%@include file="/back-end/backFrame/backFooter"%>
 			