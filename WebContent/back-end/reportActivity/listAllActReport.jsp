<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.actreport.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    ActReportService actreportSvc = new ActReportService();
    List<ActReportVO> list = actreportSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<%@include file="/back-end/backFrame/backHeader"%>
<title>所有活動檢舉資料 - listAllActReport.jsp</title>

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
</style>
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span>活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span>參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">檢舉活動管理</span></a>
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
<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do" >
        <b>輸入活動檢舉編號 (如710000):</b>
        <input type="text" name="sq_activityreport_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出" class="btn btn-danger btn-sm">
    </FORM>
<div class="container-fluid mt-3">
	<div class="table-responsive">
		<table
			class="table text-center table-bordered table-striped table-hover">
			<thead>
				<tr class="table-info">
					<th>活動檢舉編號</th>
					<th>活動編號</th>
					<th>會員編號</th>
					<th>檢舉原因</th>
					<th>檢舉回應</th>
					<th>檢舉狀態</th>
					<th>修改狀態</th>
					<th>備註</th>
				</tr>
			</thead>
			<tbody>
				<%@ include file="page1.file"%>
				<c:forEach var="actreportVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>" varStatus="vs">
					<tr>
						<td style="vertical-align: middle">${actreportVO.sq_activityreport_id}</td>
						<td style="vertical-align: middle">${actreportVO.sq_activity_id}</td>
						<td style="vertical-align: middle">${actreportVO.sq_member_id}</td>
						<td class="des" style="vertical-align: middle">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter${vs.index}">查看</button>
							<div class="modal fade" id="exampleModalCenter${vs.index}"
								tabindex="-1" role="dialog"
								aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">檢舉原因</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body" style="text-align: left;">
											<span>${actreportVO.report_reason}</span>
										</div>
										<div class="modal-footer" style="text-align: center;">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td class="des" style="vertical-align: middle">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter1${vs.index}">查看</button>
							<div class="modal fade" id="exampleModalCenter1${vs.index}"
								tabindex="-1" role="dialog"
								aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">檢舉回應</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body" style="text-align: left;">
											<span>${actreportVO.report_response}</span>
										</div>
										<div class="modal-footer" style="text-align: center;">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td style="vertical-align: middle">${actreportVO.report_status}</td>
						<td style="vertical-align: middle">
							<FORM METHOD="post"
								ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do"
								style="margin-bottom: 0px;">
								<input type="submit" value="修改" class="btn btn-danger btn-sm">
								<input type="hidden" name="sq_activityreport_id"
									value="${actreportVO.sq_activityreport_id}"> <input
									type="hidden" name="action" value="getOne_For_Update">
							</FORM>
						</td>
						<td style="vertical-align: middle">0.檢舉未處理<br> 1.檢舉成功<br>
							2.檢舉失敗<br>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="page3.file"%>
	</div>
</div>
<%@include file="/back-end/backFrame/backFooter"%>