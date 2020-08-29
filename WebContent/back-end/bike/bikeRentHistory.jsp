<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->

<!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/masterBackBody"%>
<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item "><a class="nav-link" href="<%=request.getContextPath()%>/back-end/bike/bikeTypeListAll.jsp"><span>車種管理</span></a>
		<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item "><a class="nav-link" href="<%=request.getContextPath()%>/back-end/bike/newBikeListAll.jsp"><span>車輛管理</span></a>
		</li>
		<li class="nav-item"><a class="nav-link active" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"><span style="padding-bottom: 8px; border-bottom: 3px blue solid;">訂單管理</span></a>
		</li>
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/bike/BikeStoreServlet.do?action=bikeStoreOwner&sq_bike_store_id=${BikeStoreVO.sq_bike_store_id}" ><span>店家資訊</span></a>
		</li>
	</ul>
</div>
<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
<!-----------backNav----------->
<%@include file="/back-end/backFrame/masterBackNav"%>
<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->
<div class="container-fluid mx-3">
	<div class="row collapse" id="collapseExample">
		<div class="col-1"></div>
		<div class="col-6 my-1">
			<button class="btn bg-primary mx-2" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeMaster.jsp'">訂單(未取車)</button>
			<button class="btn bg-primary mx-2" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/MasterEx.jsp'">訂單(已取車,未還車)</button> 
			<button class="btn bg-primary mx-2" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeRentHistory.jsp'">歷史訂單</button>
		</div>
	</div>
	<div class="row mt-1">
		<form class="form-inline">
			<div class="form-group mx-sm-3 mb-2">
				<input id="searchRentId" class="form-control" type="text"
					autocomplete="off" placeholder="輸入訂單編號">
			</div>
			<button type="button" id="searchRentIdBtn"
				class="btn btn-primary mb-2">搜尋</button>
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
					<th scope="col">綠界交易編號</th>
					<th scope="col">訂單金額</th>
				</tr>
			</thead>
			<tbody id="historyTbody">

			</tbody>
		</table>
	</div>
</div>
<script>
$(document).ready(function() {
	
	//init history
	$.ajax({
		url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
		type :"POST",
		data : {
			action:"initHistoryMaster",
		},
		dataType: "JSON",
		success : function(data) {
			handleJSON(data);
		},
	})
})
//處理回傳的JSON table
function handleJSON(data){
	var storeMasterList = data.storeMaster;
	var str = "";
	for(var i =0 ; i<storeMasterList.length;i++){
		var storeMaster = storeMasterList[i];
		var sq_rent_id = storeMaster.sq_rent_id;
		var rent_name = storeMaster.rent_name;
		var rent_phone = storeMaster.rent_phone;
		var rent_od_status = storeMaster.rent_od_status;
		var rent_price = storeMaster.od_total_price;
		//取得訂單狀態中文
		var rent_od_statusStr = getValue(rent_od_status);

		var tradeno = storeMaster.tradeno;
		str+="<tr>";
		str+="<td>"+sq_rent_id+"</td>";
		str+="<td>"+rent_name+"</td>";
		str+="<td>"+rent_phone+"</td>";
		str+="<td class='text-danger'>"+rent_od_statusStr+"</td>";
		str+="<td>"+tradeno+"</td>";
		str+="<td>"+rent_price+"</td>";
		str+="</tr>";
	}
	$("#historyTbody").html(str);
}

function getValue(rent_od_status){
	switch (rent_od_status) {
	  case 0:
		  return "訂單成立";
	      break;
	  case 1:
		  return "訂單進行";
	      break;
	  case 2:
		  return "訂單完成";
	      break;
	  case 3:
		  return "訂單取消";
	      break;
	}
}
</script>
<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>
