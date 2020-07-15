<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.staff.model.*"%>
<%@ page import="java.util.*"%>
<%@include file="/back-end/backFrame/backHeader"%>
<jsp:useBean id="staffSvc" class="com.staff.model.StaffService"/>
<!---------放自己的CSS與title----------->
<%
	StaffService StaffService = new StaffService();
	List<StaffVO> list = StaffService.getAll();
	pageContext.setAttribute("list", list);
%>


<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/back-end/staff/listAllStaff.jsp"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">全部員工</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/staff/addStaff.jsp"><span>新增員工</span></a>
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
					<th scope="col">員工編號</th>
					<th scope="col">員工狀態</th>
					<th scope="col">員工姓名</th>
					<th scope="col">員工帳號</th>
					<th scope="col">員工電話</th>
					<th scope="col">員工郵件</th>
					<th scope="col">員工地址</th>
					<th scope="col">員工相片</th>
					<th scope="col">修改</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="/back-end/staff/page1.file"%>
				<c:forEach var="staffVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td class="align-middle">${staffVO.sq_staff_id}</td>
						<td class="align-middle">${staffSvc.fine_status_name(staffVO.sf_status)}</td>
						<td class="align-middle">${staffVO.sf_name}</td>
						<td class="align-middle">${staffVO.sf_account}</td>
						<td class="align-middle">${staffVO.sf_phone}</td>
						<td class="align-middle">${staffVO.sf_email}</td>
						<td class="align-middle">${staffVO.sf_address}</td>
						<td class="align-middle"><img width=100 height=100
							src="<%=request.getContextPath()%>/staff/StaffDBReader.do?sq_staff_id=${staffVO.sq_staff_id}"
							class="img-fluid"></td>
						<td style="vertical-align:middle">
							<form action="<%=request.getContextPath()%>/staff/staff.do" method="POST">
								<input type="hidden" name="sq_staff_id" value="${staffVO.sq_staff_id}">
								<input type="hidden" name="action" value="getOne_For_Update">
								<input type="submit"  value="修改" class="btn btn-danger btn-sm">
							</form>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<%@ include file="/back-end/staff/page3.file"%>
	</div>
</div>

<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>