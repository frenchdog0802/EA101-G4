<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.act.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
  ActVO actVO = (ActVO) request.getAttribute("actVO"); //ActServlet.java(Concroller), 存入req的actVO物件
%>
<jsp:useBean id="actjoinSvc" class="com.actjoin.model.ActJoinService"/>
<%@include file="/back-end/backFrame/backHeader"%>
<title>活動資料 - listOneAct.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

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
  	word-break:b
</style>
<%@include file="/back-end/backFrame/backBody"%>
<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">活動管理</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/joinActivity/listAllActJoin.jsp"><span>參加會員管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/reportActivity/listAllActReport.jsp"><span>檢舉活動管理</span></a>
					  </li>
					</ul>
				</div>	
<%@include file="/back-end/backFrame/backNav"%>
<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" >
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
		<th>路線編號</th>
		<th>會員編號</th>
		<th>活動標題</th>
		<th>上限人數</th>
		<th>最低人數</th>
		<th>參加人數</th>
		<th>報名起始時間</th>
		<th>報名結束時間</th>
		<th>活動開始時間</th>
		<th>活動結束時間</th>
		<th>活動說明</th>
		<th>活動圖片</th>
		<th>成團狀態</th>
		<th>修改</th>
		<th>下架</th>
		<th>備註</th>
	</tr>
			</thead>
			<tbody>
	<tr>
		<td style="vertical-align: middle"><%=actVO.getSq_activity_id()%></td>
		<td style="vertical-align: middle"><%=actVO.getSq_route_id()%></td>
		<td style="vertical-align: middle"><%=actVO.getSq_member_id()%></td>
		<td style="vertical-align: middle"><%=actVO.getAct_title()%></td>
		<td style="vertical-align: middle"><%=actVO.getMax_population()%></td>
		<td style="vertical-align: middle"><%=actVO.getMin_population()%></td>
		<td style="vertical-align: middle">${actjoinSvc.getOneJoinPeople(actVO.sq_activity_id)}</td>
		<td style="vertical-align: middle"><%=actVO.getStart_time()%></td>
		<td style="vertical-align: middle"><%=actVO.getEnd_time()%></td>
		<td style="vertical-align: middle"><%=actVO.getAct_start_time()%></td>
		<td style="vertical-align: middle"><%=actVO.getAct_end_time()%></td>
		<td class="des" style="vertical-align: middle">
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter1${vs.index}">查看</button>
                                        <div class="modal fade" id="exampleModalCenter1${vs.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        	<div class="modal-dialog modal-dialog-centered" role="document">
                                            	<div class="modal-content">
                                                	<div class="modal-header">
                                                     	<h5 class="modal-title" id="exampleModalCenterTitle">活動描述</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        	<span aria-hidden="true">&times;</span>
                                                       	</button>
                                                    </div>
	                                                <div class="modal-body" style="text-align:left;">
	                                                	<span><%=actVO.getAct_description()%></span>
	                                                </div>
	                                                <div class="modal-footer" style="text-align: center;">
	                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                                                </div>
                                           		</div>
                                            </div>
                                        </div>
		</td>
		<td style="vertical-align: middle"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter2${vs.index}">圖片</button>
                                        <div class="modal fade" id="exampleModalCenter2${vs.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        	<div class="modal-dialog modal-dialog-centered" role="document">
                                            	<div class="modal-content">
                                                	<div class="modal-header">
                                                     	<h5 class="modal-title" id="exampleModalCenterTitle">活動圖片</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        	<span aria-hidden="true">&times;</span>
                                                       	</button>
                                                    </div>
	                                                <div class="modal-body">
	                                                	<img src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" class="img-fluid">
	                                                </div>
	                                                <div class="modal-footer">
	                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                                                </div>
                                           		</div>
                                            </div>
                                        </div>
                                        </td>
		<td style="vertical-align: middle"><%=actVO.getGp_status()%></td>
		<td style="vertical-align: middle">
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" style="margin-bottom: 0px;">
			<input type="submit" value="修改" class="btn btn-danger btn-sm">
			<input type="hidden" name="sq_activity_id"  value="${actVO.sq_activity_id}">
			<input type="hidden" name="action"	value="getOne_For_Update"></FORM>
		</td>
		<td style="vertical-align: middle">
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/act/ActServlet.do" style="margin-bottom: 0px;">
			<input type="submit" id="dyn_tr" value="下架" class="btn btn-danger btn-sm">
			<input type="hidden" name="sq_activity_id"  value="${actVO.sq_activity_id}">
			<input type="hidden" name="action" value="delete"></FORM>
		</td>
		<td style="vertical-align: middle">
			0.成團<br>1.未成團<br>2.取消揪團<br>3.下架<br>
		</td>
	</tr>
</tbody>
		</table>
		</div>
</div>
<%@include file="/back-end/backFrame/backFooter"%>