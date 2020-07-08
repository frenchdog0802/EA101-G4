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
					<th scope="col">結帳時間</th>
					<th scope="col">綠界交易編號</th>
					<th scope="col">查看明細</th>
				</tr>
			</thead>
			<tbody id="masterTbody">
					
			</tbody>
		</table>
	</div>
</div>
<div class="show">
<div class="modal fade" id="DetailModel" tabindex="-1" role="dialog" aria-labelledby="basicModal" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
				
			<div class="modal-header">
                <h3 class="modal-title" id="myModalLabel">訂單成立</h3>
            </div>
			
			<div class="modal-body">
<!-- =========================================以下為原bikeDetailResv.jsp的內容========================================== -->
<%--                <jsp:include page="bikeDetailResv.jsp" /> --%>
<!-- =========================================以上為原bikeDetailResv.jsp的內容========================================== -->
			</div>
			
			<div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
            </div>
		
		</div>
	</div>
</div>
</div>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script
src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>
<script type="text/javascript">
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
			var storeMasterList = data.storeMaster;
			var str = "";
			for(var i =0 ; i<storeMasterList.length;i++){
				var storeMaster = storeMasterList[i];
				var sq_rent_id = storeMaster.sq_rent_id;
				var rent_name = storeMaster.rent_name;
				var rent_phone = storeMaster.rent_phone;
				var rent_od_status = storeMaster.rent_od_status;
				//取得訂單狀態中文
				var rent_od_statusStr = getValue(rent_od_status);
				var order_date = storeMaster.order_date;
				var order_date_spilt = order_date.split(" ");
				var tradeno = storeMaster.tradeno;
				str+="<tr>";
				str+="<td>"+sq_rent_id+"</td>";
				str+="<td>"+rent_name+"</td>";
				str+="<td>"+rent_phone+"</td>";
				str+="<td class='text-danger'>"+rent_od_statusStr+"<input type='hidden' value='"+rent_od_status+"'>"+"</td>";
				str+="<td>"+order_date_spilt[0]+"</td>";
				str+="<td>"+tradeno+"</td>";
				str+="<td><button class='btn btn-sm btn-primary btn-sub' type='button' data-toggle='modal' data-target='#DetailModel'>查看</button></td>";
				str+="</tr>";
			}
			$("#masterTbody").html(str);
		},complete:function(){
			//查看submit
			$(".btn-sub").click(function(){
				var rent_od_status = $(this).closest("tr").find("td").eq(3).find("input").val();
				var sq_rent_id = $(this).closest("tr").find("td").eq(0).text();
				//狀態為未租車
				if(rent_od_status==0){
					$.ajax({
						url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
						type :"POST",
						data : {
							action:"initResv",
							sq_rent_id : sq_rent_id,
						},
						success:function(){
							$(".modal-body").load("bikeDetailResv.jsp");
						},
					})
				}else{
					$.ajax({
						url:"<%=request.getContextPath()%>/bike/BikeRentDetailServlet.do",
						type :"POST",
						data : {
							action:"findDetail",
							rent_od_status : rent_od_status,
						},
						success:function(){
// 							$(".modal-body").load("bikeDetailEx.jsp");
						},
					})
				} 
				
			})
			
		}
	})
})

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

