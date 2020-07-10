<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.product_stock.model.*"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.shop_order.model.*"%>

<% 
 	Shop_orderService order = new Shop_orderService();
 	List<Shop_orderVO> list = order.getAll();
 	pageContext.setAttribute("list", list);
 %>   
 <%@ include file="/back-end/backFrame/backHeader"%>
 	<link rel="stylesheet" type="text/css" href="backOrderCss.css">
    <title>訂單後台</title>
 <%@ include file="/back-end/backFrame/backBody"%>
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>商品管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">訂單管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>廠牌管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>庫存管理</span></a>
					  </li>
					</ul>
				</div>
<%@ include file="/back-end/backFrame/backNav" %>
			<div class="container-fluid">
				<div class="row mt-3">
                    <div class="col-3 searchbtn mt-1 ml-3">
						<FORM METHOD="post" ACTION="shop_order.do" style="position: relative;">
							<input type="text" name="sq_brand_id" id="search" placeholder="輸入訂單編號 (如560001):"/>
							<input type="hidden" name="action"	value="getOne">
							<input type="submit" value="送出" style="position: absolute; opacity: 0;" class="icon">
							<img src="<%=request.getContextPath()%>/back_end/backFrame/image/search.png" class="img-fluid icon" >
					    </FORM>
					</div>
					<div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back_end/Shop_order/allOrder.jsp'" style="border: 1px black solid;">
                            <img src="<%=request.getContextPath()%>/back_end/backFrame/image/list.png" class="img-fluid">
                        </button>
                    </div>
                    <div class="col-3">
                    	<jsp:useBean id="orderService" scope="page" class="com.shop_order.model.Shop_orderService" />  
						<FORM METHOD="post" ACTION="shop_order.do" class="mt-2">
						    <b>選擇訂單編號:</b>
						    <select size="1" name="sq_brand_id">
							    <c:forEach var="orderVO" items="${list}" > 
							         <option value="${orderVO.sq_order_id}">${orderVO.sq_order_id}
							    </c:forEach>   
						    </select>
						    <input type="hidden" name="action" value="getOne">
						    <input type="submit" value="送出">
						</FORM>	
                    </div>
                </div>
		 		<div class="row mt-3 justify-content-center">
    				<div class="col-12 divbg">
    					<div id="brandcontent">
    						<table style="table-layout:fixed;">
    							<thead>
    								<tr>
    									<th id="td_1"><span>訂單編號</span></th>
    									<th id="td_2"><span>會員編號</span></th>
    									<th id="td_4"><span>取貨地址</span></th>
    									<th id="td_5"><span>明細</span></th>
    									<th id="td_6"><span>訂單日期</span></th>
    									<th id="td_7"><span>訂單截止日</span></th>
    									<th id="td_8"><span>訂單總額</span></th>
    									<th id="td_9"><span>付款方式</span></th>
    									<th id="td_10"><span>狀態</span></th>
    									<th id="td_lastbtn"></th>
    									<th id="td_lastbtn"></th>
    								</tr>
    							</thead>
<%@ include file="page1.file" %> 
				    			<c:forEach var="orderVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
				    				<tr>
				    					<td>${orderVO.sq_order_id}</td>
				    					<td>${orderVO.sq_member_id}</td>
				    					<td>${orderVO.order_address}</td>
				    					<td>
				    						<button value="${orderVO.sq_order_id}" type="button" class="btn btn-primary detail" data-toggle="modal" data-target="#Modal${orderVO.sq_order_id}">
                                               	 明細
                                            </button>
                                            <div class="modal fade" id="Modal${orderVO.sq_order_id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                                	<div class="modal-content">
                                                    	<div class="modal-header">
                                                        	<h5 class="modal-title" id="exampleModalCenterTitle">訂單明細</h5>
                                                        	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            	<span aria-hidden="true">&times;</span>
                                                       		</button>
                                                    	</div>
                                                	<div class="modal-body">
                                                   	
                                                	</div>
                                                    	<div class="modal-footer">
                                                    		<button type="button" class="btn btn-secondary" data-dismiss="modal">Save</button>
                                                       		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    	</div>
                                                	</div>
                                            	</div>
                                        	</div>
				    					</td>
				    					<td>${orderVO.order_date}</td>
				    					<td>${orderVO.pay_deadline}</td>   
				    					<td>${orderVO.shop_order_price}</td>
				    					<td>
				    						<c:if test="${orderVO.pay_mode == 1}">
				    							超商付款
				    						</c:if>
				    						<c:if test="${orderVO.pay_mode == 2}">
				    							信用卡
				    						</c:if>			    				
										</td>
				    					<td>
				    						<c:if test="${orderVO.order_status == 0}">
				    							未處理
				    						</c:if>
				    						<c:if test="${orderVO.order_status == 1}">
				    							已出貨
				    						</c:if>
				    						<c:if test="${orderVO.order_status == 2}">
				    							已到門市
				    						</c:if>
				    						<c:if test="${orderVO.order_status == 3}">
				    							已完成
				    						</c:if>
				    						<c:if test="${orderVO.order_status == 4}">
				    							已退費
				    						</c:if>
				    					</td>
				    					<td>
				    						<FORM METHOD="post" ACTION="shop_order.do" style="position: relative;">
											    <input type="submit" value="修改" style="position: absolute; opacity: 0;">
											    <input type="image" src="<%=request.getContextPath()%>/back_end/backFrame/image/changeicon.png" alt="Submit" align="right" class="img-fluid"/>
											    <input type="hidden" name="sq_stock_id"  value="${orderVO.sq_order_id}">
											    <input type="hidden" name="action"	value="getOneForUpdate">
											</FORM>
				    					</td>
				    					<td>
										 	<FORM METHOD="post" ACTION="shop_order.do" style="position: relative;">
										    	<input type="submit" value="修改" style="position: absolute; opacity: 0;">
											    <input type="image" src="<%=request.getContextPath()%>/back_end/backFrame/image/delicon.png" alt="Submit" align="right" class="img-fluid"/>
										    	<input type="hidden" name="sq_stock_id" value="${orderVO.sq_order_id}">
										    	<input type="hidden" name="action" value="delete">
										    </FORM>
										</td>          
				    				</tr>
				    			</c:forEach>				    					
    						</table>
    						<div class="row pr-3">
    							<%@ include file="page2.file" %> 
    						</div>
    					</div>
    				</div>
    			</div>
		 	</div>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     <script>
     $(document).ready(function() {
			$('.modal').modal({
				backdrop:'static', keyboard: false
			});
			$(".detail").click(function() {
		        $.ajax({
		        	type : "POST",
		        	url  : "<%=request.getContextPath()%>/shop_order_detail.do",
		        	dataType: 'json',
		        	data : {
		        		action : "getById",
		        		order_id : $(this).val(),
		        	},
		        	success : function(data){
		        		console.log(data);
		        		console.log(data.length);
			        		let str = "";
			        		str += "<table>"+
						            	"<thead>"+
							    			"<tr>"+
							    				"<th id='td_de1' style='width:50%'><span>產品編號</span></th>"+
							    				"<th id='td_de2' style='width:15%'><span>名稱</span></th>"+
							    				"<th id='td_de3' style='width:15%'><span>數量</span></th>"+
							    				"<th id='td_de4' style='width:10%'></th>"+
							    				"<th id='td_de4' style='width:10%'></th>"+
							    			"</tr>"+
						    			"</thead>";
						    for(let index = 0 ; index < data.length ; index++) {
						    str+=	
						    	"<tr>"+
						    		"<td>" + data[index].name + "</td>"+
						    		"<td>" + data[index].price + "</td>"+
						    		"<td>" + data[index].sum + "</td>"+			
						    	    "<td>"+
						    			"<FORM METHOD='post' ACTION='shop_order_detail.do' style='position: relative;'>"+
						    				"<input type='submit' value='修改' style='position: absolute; opacity: 0;'>"+
						    				"<input type='image' src='<%=request.getContextPath()%>/back_end/backFrame/image/changeicon.png' alt='Submit' align='right' class='img-fluid'/>"+
						   					"<input type='hidden' name='sq_stock_id'  value='${orderVO.sq_order_id}'>"+
											"<input type='hidden' name='action'	value='getOneForUpdate'>"+
						  				"</FORM>"+
						   			 "</td>"+
						   			 "<td>"+
					    				"<FORM METHOD='post' ACTION='shop_order_detail.do' style='position: relative;'>"+
					    					"<input type='submit' value='修改' style='position: absolute; opacity: 0;''>"+
					    					"<input type='image' src='<%=request.getContextPath()%>/back_end/backFrame/image/delicon.png' alt='Submit' align='right' class='img-fluid'/>"+
					    					"<input type='hidden' name='sq_stock_id' value='${orderVO.sq_order_id}'>"+
					    					"<input type='hidden' name='action' value='delete'>"+
					   					"</FORM>"+
					   				"</td>"  +        
						   		"</tr>";
						    }				    					
						    str+= "</table>";
						    
						    $(".modal-body").empty();
	  						$(".modal-body").append(str);
		        	}
		        });
		    });
		});

     </script>
<%@ include file="/back-end/backFrame/backFooter" %>