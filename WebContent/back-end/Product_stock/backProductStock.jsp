<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.product_stock.model.*"%>
<%@ page import="com.shop_product.model.*"%>
 <% 
 	Product_stockService stock = new Product_stockService();
 	List<Product_stockVO> list = stock.getAll();
 	pageContext.setAttribute("list", list);
 %>   
 <jsp:useBean id="productSvc" scope="page" class="com.shop_product.model.Shop_productService" />	
 <%@ include file="/back-end/backFrame/backHeader"%>
<<<<<<< HEAD
 	<link rel="stylesheet" href="<%=request.getContextPath()%>/back-end/Product_stock/backProductStockCss.css">
=======
 	<link rel="stylesheet" href="<%=request.getContextPath()%>/back-end/Product_stock/stockCss/backProductStockCss.css">
>>>>>>> 85f75fd51f23558fc66b4395be3bfaf3368e1f6c
    <title>庫存後台</title>
 <%@ include file="/back-end/backFrame/backBody"%>
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/Shop_product/allShop_product.jsp"><span>商品管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/Shop_order/allOrder.jsp"><span>訂單管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/BrandBack/BrandBack.jsp"><span>廠牌管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/Product_stock/backProductStock.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">庫存管理</span></a>
					  </li>
					</ul>
				</div>
<%@ include file="/back-end/backFrame/backNav" %>
			<div class="container-fluid">
				<div class="row mt-3">
                    <div class="col-3 searchbtn mt-1 ml-3">
						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/stockServlet.do" style="position: relative;">
							<input type="text" name="sq_brand_id" id="search" placeholder="輸入員工編號 (如560001):"/>
							<input type="hidden" name="action"	value="getOne">
							<input type="submit" value="送出" style="position: absolute; opacity: 0;" class="icon">
							<img src="<%=request.getContextPath()%>/back-end/backFrame/image/search.png" class="img-fluid icon" >
					    </FORM>
					</div>
					<div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back-end/Product_stock/backProductStock.jsp'" style="border: 1px black solid;">
                            <img src="<%=request.getContextPath()%>/back-end/backFrame/image/list.png" class="img-fluid">
                        </button>
                    </div>
                    <div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back-end/Product_stock/addProductStock.jsp'" style="border: 1px black solid;">
                            <img src="<%=request.getContextPath()%>/back-end/backFrame/image/addbrand.png" class="img-fluid">
                        </button>
                    </div>
<!--                     <div class="col-3"> -->
<%--                     	<jsp:useBean id="stockService" scope="page" class="com.product_stock.model.Product_stockService" />   --%>
<%-- 						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/stockServlet.do" class="mt-2"> --%>
<!-- 						    <b>選擇庫存編號:</b> -->
<!-- 						    <select size="1" name="sq_product_id"> -->
<%-- 							    <c:forEach var="stockVO" items="${list}" >  --%>
<%-- 							         <option value="${stockVO.sq_stock_id}">${stockVO.sq_stock_id} --%>
<%-- 							    </c:forEach>    --%>
<!-- 						    </select> -->
<!-- 						    <input type="hidden" name="action" value="getOne"> -->
<!-- 						    <input type="submit" value="送出"> -->
<!-- 						</FORM>	 -->
<!--                     </div> -->
                </div>
		 		<div class="row mt-3 justify-content-center">
    				<div class="col-12 divbg">
    					<div id="brandcontent">
    						<table style="table-layout:fixed;">
    							<thead>
    								<tr>
    									<th id="td_id"><span>庫存編號</span></th>
<!--     									<th id="td_id2"><span>商品編號</span></th> -->
    									<th id="td_name"><span>產品名稱</span></th>
    									<th id="td_color"><span>產品顏色</span></th>
    									<th id="td_model"><span>產品型號</span></th>
    									<th id="td_total"><span>庫存數量</span></th>
    									<th id="td_lastbtn"></th>
    									<th id="td_lastbtn"></th>
    								</tr>
    							</thead>
<%@ include file="page1.file" %> 
				    			<c:forEach var="stockVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
				    				<tr>
				    					<td>${stockVO.sq_stock_id}</td>
<%-- 				    					<td>${stockVO.sq_product_id}</td> --%>
				    					<td>${productSvc.getOneById(stockVO.sq_product_id).product_name}</td>
				    					<td>${stockVO.product_color}</td>
				    					<td>${stockVO.product_model}</td>
				    					<td>${stockVO.stock_total}</td>     
				    					<td>
				    						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/stockServlet.do" style="position: relative;">
											    <input type="submit" value="修改" style="position: absolute; opacity: 0;">
											    <input type="image" src="<%=request.getContextPath()%>/back-end/backFrame/image/changeicon.png" alt="Submit" align="right" class="img-fluid"/>
											    <input type="hidden" name="sq_stock_id"  value="${stockVO.sq_stock_id}">
											    <input type="hidden" name="action"	value="getOneForUpdate">
											</FORM>
				    					</td>
				    					<td>
										 	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/stockServlet.do" style="position: relative;">
										    	<input type="submit" value="修改" style="position: absolute; opacity: 0;">
											    <input type="image" src="<%=request.getContextPath()%>/back-end/backFrame/image/delicon.png" alt="Submit" align="right" class="img-fluid"/>
										    	<input type="hidden" name="sq_stock_id" value="${stockVO.sq_stock_id}">
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
     
<%@ include file="/back-end/backFrame/backFooter" %>