<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="java.util.*"%>
<%
	@SuppressWarnings("unchecked")
	List<Shop_productVO> buylist = (Vector<Shop_productVO>)session.getAttribute("shoppingcar");
	@SuppressWarnings("unchecked")
	HashMap<String, String> mapCus = (HashMap<String, String>)session.getAttribute("mapCus");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->

</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

 	<div class="container my-5">
		
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-10">
					<div class="row">
						<div class="col-12" style="text-align: center;">
							<div class="mt-3 pl-3 pr-3" style="border: 1px black solid;">
								<div style="text-align: left; font-size: 150%;">購物車內容</div>
								<hr style="margin-top: 5px; margin-bottom: 15px;">
								<table class="table table-striped">
									<tbody>			    	
										<tr>
									    	<th style="width: 60%">商品名稱</th>
									        <th style="width: 20%">單價</th>
									        <th style="width: 20%">數量</th>
									    </tr>
									<%
										for (int i = 0; i < buylist.size(); i++) {
		    								Shop_productVO order = buylist.get(i);
									%>
										<tr>
									    	<td><%=order.getProduct_name()%></td>
									    	<td><%=order.getProduct_price()%></td>
									    	<td><%= order.getProduct_quantity()%></td>
										</tr>
									<%}%>
									</tbody>
								</table>
							</div>
							
							<div class="mt-3 pl-3 pr-3" style="border: 1px black solid;">
								<div style="text-align: left; font-size: 150%;">付款資訊</div>
								<hr style="margin-top: 5px; margin-bottom: 15px;">
								<table class="table table-striped">
								    <tbody>			    	
				    					<tr>
					   						<td style="width: 30%; border-right: 1px #cccccc solid;"><span>收件人</span></td>
				    						<td class="takedt_td"><%= mapCus.get("name")%></td>
				    					</tr>
					   					<tr>
					 						<td class="takedt_t" style="border-right: 1px #cccccc solid;"><span>連絡電話</span></td>
						   					<td class="takedt_td"><%= mapCus.get("phone")%></td>
						    			</tr>
						    			<tr>
				    						<td class="takedt_t" style="border-right: 1px #cccccc solid;"><span>Email</span></td>
					   						<td class="takedt_td"><%= mapCus.get("email")%></td>
					  					</tr>
					  					<tr>
						    				<td class="takedt_t" style="border-right: 1px #cccccc solid;"><span>配送方式</span></td>
						    				<td class="takedt_td"><%= mapCus.get("paymode")%></td>
						    			</tr>
						   				<tr>
						    				<td class="takedt_t" style="border-right: 1px #cccccc solid;"><span>收件地址</span></td>
						    				<td class="takedt_td"><%= mapCus.get("address")%></td>
						  				</tr>
								    </tbody>
								</table>
							</div>
				
			    			<div class="mt-3 mb-2 pt-2 pl-3 pb-2" style="background-color: #cccccc;">
			    				<div class="finalbtn" style="padding-right: 20px; text-align: right;">
			    					<button type="button" class="btn bg-secondary" data-toggle="modal" data-target="#exampleModal" style="width:30%">	確認無誤
									</button>
									<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									 	<div class="modal-dialog modal-dialog-centered">
										    <div class="modal-content">
										    	<div class="modal-header">
										        	<h5 class="modal-title" id="exampleModalLabel">選擇付款方式</h5>
										        	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										        		<span aria-hidden="true">&times;</span>
										        	</button>
										    	</div>
										    	<div class="modal-body">
										     		<div class="finalbtn" style="text-align: center;">
										     			<form method="POST" action="<%=request.getContextPath()%>/shopMall/productEcpayServlet.do">
								    						<button class="btn bg-secondary mb-2" style="width: 50%;" name="action"  value="storePay">超商付款</button>
											    			<button class="btn bg-secondary mt-2" style="width: 50%;" name="action"  value="cardPay">信用卡支付</button>
											    		</form>
											    	</div>
										      	</div>
										    </div>
									  	</div>
									</div>
						    	</div>
					    	</div>
						</div>
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
		$(".fun-text").text("確認資訊");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>
