<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/index/index.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/shopMall/shoppingCarCss.css">
    <title>購物車</title>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
	<% 
  	 	@SuppressWarnings("unchecked")
  		Vector<Shop_productVO> buylist = (Vector<Shop_productVO>) session.getAttribute("shoppingcar");
  		Integer total = 0;
  	%>
 	<div class="container-fluid my-5">
 		<div class="row mt-3 pl-3 pr-3">
    		<div class="col-1"></div>
    		<div class=" col-10">
    			<div class="row">
					<div class="col-1" style="padding-left: 0; padding-right: 0; padding-top:5px;">
						<button onclick="location.href='<%=request.getContextPath()%>/front-end/shopMall/shopMall.jsp'" class="btn btn-primary" style="width:100%;">商城</button>
					</div>
    				<div class="col-7 searchbtn mt-1">
						<input type="search" id="search" placeholder="Search..." />
						<button type="button" class="icon"><img src="image/search.png" class="img-fluid"></button>
					</div>
					<div class="col-4 mt-2" style="padding-right: 0;">

					</div>
    			</div>

    			<div class="row">
    				<div class="col-12 pagetitle">
    					<span>購物車</span>
    				</div>
    			</div>
    			<div class="row">
    				<div class="col-12">
	    				<table class="shopcar_title">
	    					<tbody>
	    						<tr>
	    							<td class="detail_td">商品明細</td>
									<td class="num_td">數量</td>
									<td class="price_td">商品單價</td>
									<td class="store_td">顏色/型號</td>
	   								<td class="change_td">修改</td>
	   							</tr>
	   						</tbody>
    					</table>
    					<% 
    						if(buylist != null && (buylist.size() > 0)) {
    							for (int i = 0; i < buylist.size(); i++) {
    								Shop_productVO order = buylist.get(i);
    								Integer price = order.getProduct_price();
    								Integer quantity = order.getProduct_quantity();
    								total += (price * quantity);
    					%>
						<table>
							<tr class="pro">
								<td class="pro_pic"><img src="<%=request.getContextPath()%>/showImg4?id=<%=order.getSq_product_id()%>" class="img-fluid"></td>
								<td class="pro_name"><%=order.getProduct_name()%></td>
								<td class="pro_quan"><input type="text" name="quantity" value="<%= order.getProduct_quantity()%>"></td>
								<td class="pro_price"><%=order.getProduct_price()%></td>
								<td class="pro_yn">
									<% if(order.getProduct_color() != "" && order.getProduct_model() != ""){%>
										<%=order.getProduct_color()%>/<%=order.getProduct_model() %>
									<%}%>
								</td>
								<td class="pro_del">
									<form name="deleteForm" action="<%=request.getContextPath()%>/shopping.do" method="POST">
										<button class="btn bg-primary" style="color:white;">移除</button>
								    	<input type="hidden" name="action"  value="DELETE">
								        <input type="hidden" name="del" value="<%= i %>">
								    </form>
								</td>
							</tr>
						</table>
						<%
    							}
    						}else{
    					%>    					
    					<div style="text-align: center; border: 1px solid black; width: 100%; height:200px; display:table; margin-top:5px;">
    						<div style="height:100%; display:table-cell; vertical-align: middle; text-align:center;">
    							<h3>購物車內無商品</h3>
    						</div>
	    				</div> 
    					<%}%>
    					<div class="row mt-1 pt-2 car_sel" style="margin-right:0px; margin-left:0px;">
    						<div class="col-3 car_price">
    							<span>總額 : </span>
								<span><%=total%></span>
    						</div>
    						<div class="col-6"></div>
	    					<div class="col-3 shopcar_btn">
	    						<form method="POST" action="<%=request.getContextPath()%>/shopping.do">
	    							<button class="btn bg-success mb-2" id="checkBtn">下一步</button>
	    							<% session.setAttribute("shoppingcar", buylist); %>
	    							<input type="hidden" name="total" value="<%=total%>">
	    							<input type="hidden" name="action" value="CHECK">
	    						</form>
	    					</div>
    					</div>
    				</div>
    			</div>
    		</div>
    		<div class="col-1"></div>
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
		function checkResult() {
	        var list = [];
	        var chked = document.querySelectorAll("[type=checkbox]:checked");
	        for (var i = 0; i < chked.length; i++) {
	            list.push(chked[i].value);
	        }
	        document.querySelector(".result").innerHTML = list.join(', ') || "none";
	    }
		$(document).ready(function(){
			<% if(buylist == null || buylist.size() == 0){%>
			$("#checkBtn").attr("disabled", "true");
			<%}else{%>
				$("#checkBtn").removeAttr("disabled");
			<%}%>
		});
	</script>

</body>
</html>
