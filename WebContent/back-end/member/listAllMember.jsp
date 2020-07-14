<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member.model.*"%>
<%@ page import="java.util.*"%>
<%@include file="/back-end/backFrame/backHeader"%>
<%
	MemService memSvc = new MemService();
	List<MemVO> list = memSvc.getAll();
	pageContext.setAttribute("list", list);
%>								<!-----------backHeader----------->
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
<div class="container-fluid ">
	<div class="table-responsive">
		<table
			class="table text-center table-bordered table-striped table-hover">
			<thead >
				<tr class="table-info">
					<th scope="col">會員相片</th>
					<th scope="col">會員編號</th>
					<th scope="col">會員帳號</th>
					<th scope="col">會員姓名</th>
					<th scope="col">會員性別</th>
					<th scope="col">會員生日</th>
					<th scope="col">會員電話</th>
					<th scope="col">會員郵件</th>
					<th scope="col">會員地址</th>
					<th scope="col">會員驗證</th>
					<th scope="col">註冊日期</th>
					<th scope="col">修改</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="/back-end/staff/page1.file"%>
				<c:forEach var="memVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
					<td class="align-middle"><img width=50 height=50
							src="<%=request.getContextPath()%>/member/DBReader.do?sq_member_id=${memVO.sq_member_id}"
							class="img-fluid"></td>
						<td class="align-middle">${memVO.sq_member_id}</td>
						<td class="align-middle">${memVO.member_account}</td>
						<td class="align-middle">${memVO.m_name}</td>
						<td class="align-middle">${memVO.gender==1?'男':'女'}</td>
						<td class="align-middle">${memVO.birthday}</td>
						<td class="align-middle">${memVO.cellphone}</td>
						<td class="align-middle">${memVO.m_email}</td>
						<td class="align-middle">${memVO.address}</td>
						<th scope="col">${memVO.validation==0?'未驗證':'已驗證'}</th>
						<th scope="col">${memVO.registered}</th>
						<td style="vertical-align:middle">
							<form action="<%=request.getContextPath()%>/member/mem.do" method="POST">
								<input type="hidden" name="sq_member_id" value="${memVO.sq_member_id}">
								<input type="hidden" name="action" value="getOne_For_Update_back">
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
 			