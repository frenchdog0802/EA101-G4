<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.shop_order.model.*"%>
<%@ page import="com.shop_order_detail.model.*"%>
<%@ page import="com.member.model.*" %>
<%@ page import="java.util.*"%>
<%
	MemVO memVO = (MemVO)session.getAttribute("MemVO");
	String sq_member_id = memVO.getSq_member_id();	

	Shop_orderService shop_orderSvc = new Shop_orderService();
	List<Shop_orderVO> orderList = shop_orderSvc.getByMemberID(sq_member_id);
	pageContext.setAttribute("orderList", orderList);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/index/index.css">

    <title>Welcome to EA101-G4</title>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
	
 	<div class="container my-5">
 		<div class="container-fluid">
 			<div class="col-12">
 				<h1 class="mt-4 mb-3">
					商城訂單
				</h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a
						href="<%=request.getContextPath()%>/front-end/member/orderHistory.jsp">Home</a>
					</li>
					<li class="breadcrumb-item active">商城訂單</li>
				</ol>
 				<div class="col-12" style="text-align: center;">
						<div class="mt-3 pl-3 pr-3">
							<%for(int i=0 ; i<orderList.size() ; i++){ %>
							<%if(orderList.get(i).getOrder_status() == 3 || orderList.get(i).getOrder_status() == 4){%>
							<table class="table">
							    <tbody>			    	
							        <tr style="background-color:#f1c40f;">
							            <th>訂單編號</th>
							            <th>訂單詳情</th>
							            <th>送達地址</th>
							           	<th>訂購日期</th>
							            <th>總價格</th>
							            <th>付款方式</th>
							            <th>訂單狀態</th>
							        </tr>
							        <tr style="background-color: #ecf0f1;">
							        	<td><%=orderList.get(i).getSq_order_id()%></td>
							        	<td  style="padding-top:6px; padding-bottom:6px;">
							        		<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#<%=orderList.get(i).getSq_order_id()%>" aria-expanded="false" aria-controls="collapseExample">
												點擊查看
											</button>
							        	</td>
							        	<td><%=orderList.get(i).getOrder_address()%></td>
							        	<td>
							        		<fmt:formatDate value="<%=orderList.get(i).getOrder_date()%>" pattern="yyyy-MM-dd"/>
							        	</td>
							        	<td><%=orderList.get(i).getShop_order_price()%></td>
							        	<td>信用卡</td>
							        	<td>
							        		 <%if(orderList.get(i).getOrder_status() == 3){%>
							        			已完成
							        		<%}else if(orderList.get(i).getOrder_status() == 4){%>
							        			以退費
							        		<%}%>
							        	</td>
							        </tr>
							    </tbody>
							</table>
							<div class="collapse mb-3" id="<%=orderList.get(i).getSq_order_id()%>">
								<%
									Shop_order_detailService detailSvc = new Shop_order_detailService();
									List<Shop_order_detailVO> detaiList = detailSvc.getOneOrder_detail(orderList.get(i).getSq_order_id());									
									Shop_productService productSvc = new Shop_productService();
								%>
								<div class="card card-body" style="padding-top:10px; padding-bottom:10px;">
									<table class="table" style="margin-bottom:0px;">
										<tr style="background-color:#f39c12;">
											<th>商品名稱</th>
											<th>商品單價</th>
											<th>購買數量</th>
										</tr>
										<%for( int a=0 ; a<detaiList.size() ; a++){%>
										<tr style="background-color: #ecf0f1;">				
											<td><%=productSvc.getOneById(detaiList.get(a).getSq_product_id()).getProduct_name()%></td>
											<td><%=detaiList.get(a).getProduct_price() %></td>
											<td><%=detaiList.get(a).getOrder_sum() %></td>
										</tr>
										<%}%>
									</table>
								</div>
							</div>
							<%}%>
							<%}%>
						</div>
					</div>
 			</div>
 		</div>

 	</div>
 
 
 		
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	jquery已經引入  -->
<!-- 	sweetAlert已經引入   -->
<!-- 	boostrap4已經引入   -->


	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>