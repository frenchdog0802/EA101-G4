<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="java.util.*"%>
<%@ page import="redis.clients.jedis.Jedis"%>
<%
	Jedis jedis = new Jedis("localhost", 6379);
	jedis.auth("123456");	
	String name = jedis.hget("customer", "name");
	String orderID = request.getParameter("MerchantTradeNo");
	Integer totalPrice = Integer.parseInt(request.getParameter("TradeAmt"));
	String payType = request.getParameter("PaymentType");
	String CustomField2 = request.getParameter("CustomField2");
	int len = Integer.parseInt(CustomField2);
%>
<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
	
 	<div class="container my-5">
 	
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-10">
					<div class="row">
					<div class="col-12" style="text-align: center;">
						<div class="mb-2 mt-2 pl-3" style="text-align: left; border: 1px black solid; font-size: 150%;">訂單編號:
							<span><%= orderID%></span>
						</div>
						<div class="mt-3 pl-3 pr-3" style="border: 1px black solid;">
							<div style="text-align: left; font-size: 150%;">付款資訊</div>
							<hr style="margin-top: 5px; margin-bottom: 15px;">
							<table class="table table-striped">
							    <tbody>			    	
							        <tr>
							            <td style="width: 20%; border-right: 1px #cccccc solid;">收件人姓名</td>
							            <td style="width: 80%;"><%=name%></td>
							        </tr>
							        <tr>
							            <td style="border-right: 1px #cccccc solid;">付款方式</td>
							            <td><%if(payType.equals("Credit_CreditCard")){ %>
							            		信用卡
							            	<%}%>
							            </td>
							        </tr>
							        <tr>
							            <td style="border-right: 1px #cccccc solid;">總金額</td>
							            <td><%= totalPrice%></td>
							        </tr>
							    </tbody>
							</table>
						</div>
	
						<div class="mt-3 pl-3 pr-3" style="border: 1px black solid;">
							<div style="text-align: left; font-size: 150%;">訂單內容</div>
							<hr style="margin-top: 5px; margin-bottom: 15px;">
							<table class="table table-striped">
							    <tbody>			    	
							        <tr>
							            <th style="width: 60%">商品名稱</th>
							            <th style="width: 20%">單價</th>
							            <th style="width: 20%">數量</th>
							        </tr>
							        <%
							        for(int j=1 ; j<= len ; j++) {
								        List<String> data = jedis.hmget("product"+j, "name", "price", "sum");
									%>
										<tr>
									    	<td><%=jedis.hget("product"+j, "name")%></td>
									    	<td><%=jedis.hget("product"+j, "price")%></td>
									    	<td><%=jedis.hget("product"+j, "sum")%></td>
										</tr>
									<%
										}
								        jedis.close();
									%>
							    </tbody>
							</table>
						</div>
	
						<hr style="margin-top: 3px; margin-bottom: 3px;">
	
		    			<div class="pt-2 pl-3 pb-2" style="background-color: #cccccc;">
		    				<div class="finalbtn" style="padding-right: 20px; text-align: right;">
		    					<button class="btn bg-secondary carClear" style="width: 25%; margin-right: 10px;" onclick="location.href='http://www.ea101g4.tk/EA101_G4/front-end/shopMall/shopMall.jsp'">繼續購物</button>
					    		<button class="btn bg-secondary carClear" style="width: 25%;" onclick="location.href='http://www.ea101g4.tk/EA101_G4/front-end/index/index.jsp'">回首頁</button>
					    	</div>
				    	</div>
					</div>
				</div>
				</div>
			</div>	
		</div>

 	</div>
 		
	<%@include file="/front-end/page-file/page-footer"%>

	<script>
		$(function(){
			$(".fun-text").text("結帳完成");  // text("")裡面自己輸入功能名稱 
		});
		$(".carClear").click(function(){
			$.ajax({
				type : "POST",		  
	        	url  : "<%=request.getContextPath()%>/shopping.do",
	        	data : {
	        		action : "clearCar",
	        	},
	        	success : function(){
	        		console.log('clear');
	        	}
			});
		});
	</script>

</body>
</html>