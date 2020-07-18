<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.actjoin.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    ActJoinService actjoinSvc = new ActJoinService();
    List<ActJoinVO> list = actjoinSvc.getAll();
    pageContext.setAttribute("list",list);
%>

<%@include file="/back-end/backFrame/backHeader"%>
<title>所有活動的參加會員資料 - listAllActjoin.jsp</title>

<style>
  table {
	width: 100%;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
	table-layout : fixed;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
  .table {
  	table-layout:fixed;
  	word-break:break-all;
  }
  
  .des {
  	overflow:hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
  }
</style>

<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span>活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span>檢舉活動管理</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>
<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do" >
        <b>輸入活動編號 (如ACT-700001):</b>
        <input type="text" name="sq_activity_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出" class="btn btn-danger btn-sm">
    </FORM>
<div class="container-fluid mt-3">
	<div class="table-responsive">
		<table
			class="table text-center table-bordered table-striped table-hover">
			<thead>
				<tr class="table-info">
					<th>活動編號</th>
					<th>會員編號</th>
					<th>報名時間</th>
					<th>刪除</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="page1.file"%>

				<c:forEach var="actjoinVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
					<tr>
						<td style="vertical-align: middle">${actjoinVO.sq_activity_id}</td>
						<td style="vertical-align: middle">${actjoinVO.sq_member_id}</td>
						<td style="vertical-align: middle">${actjoinVO.join_time}</td>
						<td style="vertical-align: middle">
							<FORM METHOD="post"
								ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do"
								style="margin-bottom: 0px;">
								<input type="submit" id="dyn_tr" value="刪除"
									class="btn btn-danger btn-sm"> <input type="hidden"
									name="sq_activity_id" value="${actjoinVO.sq_activity_id}">
								<input type="hidden" name="sq_member_id"
									value="${actjoinVO.sq_member_id}"> <input type="hidden"
									name="action" value="delete2">
							</FORM>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="page3.file"%>
	</div>
</div>
<%@include file="/back-end/backFrame/backFooter"%>