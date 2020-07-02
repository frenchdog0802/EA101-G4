<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="java.util.*"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/shopMall/shoppingCarCss.css">
    <title>購物車</title>

  </head>
  <body>
  	<% 
  	 	@SuppressWarnings("unchecked")
  		Vector<Shop_productVO> buylist = (Vector<Shop_productVO>) session.getAttribute("shoppingcar");
  		Integer total = 0;
  	%>
    <div class="container">
    	<div class="row mt-3 pl-3 pr-3">
    		<div class="col-1"></div>
    		<div class=" col-10">
    			<div class="row">
					<div class="col-1" style="padding-left: 0; padding-right: 0;">
						<button onclick="location.href='<%=request.getContextPath()%>/front-end/shopMall/shopMall.jsp'" class="btn btn-primary">商城</button>
					</div>
    				<div class="col-7 searchbtn mt-1">
						<input type="search" id="search" placeholder="Search..." />
						<button type="button" class="icon"> <img src="image/search.png" class="img-fluid"></button>
					</div>
					<div class="col-4 mt-2" style="padding-right: 0;">
						<span>熱門搜尋 : </span>
						<span>xxx</span>
						<span>xxx</span>
						<span>xxx</span>
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
									<td class="store_td">庫存</td>
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
								<td class="pro_yn">有</td>
								<td class="pro_del">
								<form name="deleteForm" action="<%=request.getContextPath()%>/shopping.do" method="POST">
									<button class="btn bg-primary">移除</button>
							    	<input type="hidden" name="action"  value="DELETE">
							        <input type="hidden" name="del" value="<%= i %>">
							    </form>
								<br>
								<button class="btn bg-primary mt-2">加入收藏</button>
								</td>
							</tr>
						</table>
						<%
    							}
    						}else{
    					%>    					
    					<div style="text-align: center; border: 1px solid black; width: 100%;">
	    						尚未選購商品
	    				</div> 
    					<%}%>
    					<div class="row mt-1 pt-2 pr-3 car_sel">
    						<div class="col-3 car_price">
    							<span>總額 : </span>
								<span><%=total%></span>
    						</div>
    						<div class="col-6"></div>
	    					<div class="col-3 shopcar_btn">
	    						<form method="POST" action="<%=request.getContextPath()%>/shopping.do">
	    							<button class="btn bg-success mb-2">前往結帳</button>
	    							<% session.setAttribute("shoppingcar", buylist); %>
	    							<input type="hidden" name="total" value="<%=total%>">
	    							<input type="hidden" name="action" value="CHECKOUT">
	    						</form>
	    					</div>
    					</div>
    				</div>
    			</div>
    		</div>
    		<div class="col-1"></div>
    	</div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script>
        function checkResult() {
            var list = [];
            var chked = document.querySelectorAll("[type=checkbox]:checked");
            for (var i = 0; i < chked.length; i++) {
                list.push(chked[i].value);
            }
            document.querySelector(".result").innerHTML = list.join(', ') || "none";
        }
    </script>
  </body>
</html>