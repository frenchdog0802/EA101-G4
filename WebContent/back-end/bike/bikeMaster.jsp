<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
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
		<li class="nav-item "><a class="nav-link active" href="#"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">車種管理</span></a>
		<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item "><a class="nav-link " href="#"><span>車輛管理</span></a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#"><span>訂單管理</span></a>
		</li>
	</ul>
</div>



<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
<!-----------backNav----------->
<%@include file="/back-end/backFrame/backNav"%>

<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->
<div class="container-fluid mx-3">
	<div class="row mt-1">
		<form class="form-inline">
			<div class="form-group mb-2">
				<input id="searchDate" class="form-control" type="text"
					autocomplete="off" placeholder="選擇日期">
			</div>
			<button type="button" class="btn btn-primary mx-2 mb-2">搜尋</button>
			<div class="form-group mx-sm-3 mb-2">
				<input id="searchRentID" class="form-control" type="text"
					autocomplete="off" placeholder="輸入訂單編號">
			</div>
			<button type="button" class="btn btn-primary mb-2">搜尋</button>
		</form>
	</div>
	<div class="row">
		<table class="table text-center table-hover">
			<thead>
				<tr>
					<th scope="col">訂單編號</th>
					<th scope="col">姓名</th>
					<th scope="col">電話</th>
					<th scope="col">訂單狀態</th>
					<th scope="col">取車時間</th>
					<th scope="col">綠界交易編號</th>
				</tr>
			</thead>
			<tbody id="masterTbody">
					
			</tbody>
		</table>
	</div>
</div>

<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script
src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
<script type="text/javascript">
<script>
$(document).ready(function() {

	//initValue
	$.ajax({
		url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
		type :"POST",
		data : {
			action:"initMaster",
		},
		dataType: "JSON",
		success : function(data) {
		
		}
	})
	
</script>


<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->

<%@include file="/back-end/backFrame/backFooter"%>

