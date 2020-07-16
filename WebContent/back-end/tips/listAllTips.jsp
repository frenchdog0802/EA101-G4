<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<%@ page import="com.tips.model.*"%>	
<%@ page import="java.util.*"%>			
								<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<jsp:useBean id="tipSvc" class="com.tips.model.TipsService"/>
								<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->    
 <%
	TipsService tipSvc1 = new TipsService();
	List<TipsVO> list = tipSvc1.getAll();
	pageContext.setAttribute("list", list);
%>

<style>
table{
    table-layout : fixed;
}

table tbody tr td,table tbody tr th{
    white-space: nowrap;
    overflow: hidden; 
    text-overflow: ellipsis; 
}
.f-th{
width:100px;
}
.s-th{
width:200px}

</style>	
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
			<div class="container-fluid">
	<div class="table-responsive">
		<table class="table text-center table-bordered table-striped table-hover">
			<thead>
				<tr class="table-info">
					<th class="s-th" scope="col">分類標題</th>
					<th scope="col">內容</th>
					<th class="f-th" scope="col">修改</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="/back-end/tips/page1.file"%>
				<c:forEach var="tipsVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td >${tipSvc.findByTitleStr(tipsVO.tips_title)}</td>
						<td >${tipsVO.tips_description}</td>
						<td style="vertical-align:middle">
							<form action="<%=request.getContextPath()%>/tips/tips.do" method="POST">
								<input type="hidden" name="sq_tips_id" value="${tipsVO.sq_tips_id}">
								<input type="hidden" name="action" value="getOne_For_Update_back">
								<input type="submit"  value="修改" class="btn btn-danger btn-sm">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="/back-end/tips/page3.file"%>
	</div>
</div>
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backFooter----------->
		<%@include file="/back-end/backFrame/backFooter"%>
 			