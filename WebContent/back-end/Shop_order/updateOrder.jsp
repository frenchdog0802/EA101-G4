<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop_order_detail.model.*"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.shop_order.model.*"%>

<% 
// 	@SuppressWarnings("unchecked")
// 	String order_id = (String)session.getAttribute("order_id");
	Shop_orderService order = new Shop_orderService();
 	Shop_orderVO storeVO = order.getOneOrder("OD500001");
 	Shop_order_detailService detailSvc = new Shop_order_detailService();
	List<Shop_order_detailVO> list = detailSvc.getOneOrder_detail("OD500001");
	Shop_order_detailVO vo = list.get(0);
	Shop_productService pSvc = new Shop_productService();
 %>   
 <%@ include file="/back-end/backFrame/backHeader"%>
 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/back-end/Shop_order/backOrderCss.css">
    <title>訂單後台</title>
 <%@ include file="/back-end/backFrame/backBody"%>
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/Shop_product/allShop_product.jsp"><span>商品管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/Shop_order/allOrder.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">訂單管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/BrandBack/BrandBack.jsp"><span>廠牌管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/Product_stock/backProductStock.jsp"><span>庫存管理</span></a>
					  </li>
					</ul>
				</div>
<%@ include file="/back-end/backFrame/backNav" %>
			<div class="container-fluid">
				<div class="row mt-3 ">
                    <div class="col-3 searchbtn mt-1 ml-3">
						<FORM METHOD="post" ACTION="shop_order.do" style="position: relative;">
							<input type="text" name="sq_brand_id" id="search" placeholder="輸入訂單編號 (如560001):"/>
							<input type="hidden" name="action"	value="getOne">
							<input type="submit" value="送出" style="position: absolute; opacity: 0;" class="icon">
							<img src="<%=request.getContextPath()%>/back-end/backFrame/image/search.png" class="img-fluid icon" >
					    </FORM>
					</div>
					<div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back_end/Shop_order/allOrder.jsp'" style="border: 1px black solid;">
                            <img src="<%=request.getContextPath()%>/back-end/backFrame/image/list.png" class="img-fluid">
                        </button>
                    </div>
                </div>
                <div class="row mt-2">
    				<div class="col-12" style="text-align:center;">
    					<h3>訂單內容</h3>
    				</div>
    			</div>
    			<hr style="width:30%; margin-top:6px; margin-bottom:6px;">
		 		<div class="row justify-content-center">
    				<div class="col-10 divbg">
    					<div id="brandcontent">
    						<table style="table-layout:fixed;">
    							<thead>
    								<tr>
    									<th id="td_1"><span>訂單編號</span></th>
    									<th id="td_2"><span>會員編號</span></th>
    									<th id="td_4"><span>取貨地址</span></th>
    									<th id="td_6"><span>訂單日期</span></th>
    									<th id="td_8"><span>訂單總額</span></th>
    									<th id="td_9"><span>付款方式</span></th>
    									<th id="td_10"><span>狀態</span></th>
    								</tr>
    							</thead>		 
				    				<tr>
				    					<td><%=storeVO.getSq_order_id() %></td>
				    					<td><%=storeVO.getSq_member_id() %></td>
				    					<td><%=storeVO.getOrder_address() %></td>
				    					<td><%=storeVO.getOrder_date() %></td>  
				    					<td><%=storeVO.getShop_order_price() %></td>
				    					<td>
				    						<% if(storeVO.getPay_mode() == 1){ %>
				    							超商付款
				    						<%}else if(storeVO.getPay_mode() == 2){ %>
				    							信用卡
				    						<%}%>			    				
										</td>
				    					<td>
				    						<select id="status">
				    							<option value="0">未處理</option>
				    							<option value="1">已出貨</option>
				    							<option value="2">已到門市</option>
				    							<option value="3">已完成</option>
				    							<option value="4">已退費</option>
				    						</select>
				    					</td>         
				    				</tr>			    					
    						</table>
    						<div class="row mt-2">
			    				<div class="col-12" style="text-align:center;">
			    					<h3>購物清單</h3>
			    				</div>
			    			</div>
			    			<hr style="width:30%; margin-top:6px; margin-bottom:6px;">
			    			<table style="table-layout:fixed;">
	    					<tr>
								<th id='td_de5' style='width:15%'><span>產品編號</span></th>
								<th id='td_de1' style='width:45%'><span>產品名稱</span></th>
								<th id='td_de2' style='width:10%'><span>單價</span></th>
								<th id='td_de3' style='width:10%'><span>數量</span></th>
							</tr>
							<tr>
								<td>
									<%=vo.getSq_product_id() %>							
								</td>
								<td>
									<%=pSvc.getOneById(vo.getSq_product_id()).getProduct_name() %>							
								</td>
								<td>
									<%=vo.getProduct_price() %>								
								</td>
								<td>
									<input type="text" id="buytotal" value="<%=vo.getOrder_sum()%>" style="width:60%;">
								</td>
							</tr>
						</table>
						<div class="row mt-3">
		    				<div class="col-11"></div>
		    				<div class="col-1">
		    					<button class="btn btn-primary" id="saveBtn">
		    						Save
		    					</button>
		    				</div>
		    			</div>
    					</div>
    				</div>
    			</div>
		 	</div>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  	 <script>
  	 	var key = <%=storeVO.getOrder_status()%>;
  		$('#status option[value='+key+']').attr('selected', 'selected');
  	 	$(".chose").click(function(){
  	 		var a = $(this).val();
  	 	});
  	 	$('#saveBtn').click(function(){
			var a =  $("#status option:selected").val();
			console.log(a);
// 				$.ajax({
// 					type :"POST",
<%-- 					url  : "<%=request.getContextPath()%>/shop_order_detail.do", --%>
// 					dataType: 'json',
// 					data : {
// 						action : "update",
// 						order_id : "",
// 						product_id,
// 						price,
// 						number,
// 					},
// 					success : function() {
// 						windows.alert("保存成功");
// 					}
// 				});
			});
  	 </script>
<%@ include file="/back-end/backFrame/backFooter" %>