<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.brand.model.*"%>
<%
	Shop_productService shop_productSvc = new Shop_productService();
	List<Shop_productVO> list = shop_productSvc.getAll();
	pageContext.setAttribute("list", list);

%>
<jsp:useBean id="brandSvc" scope="page" class="com.brand.model.BrandService" />	
<%@ include file="/back-end/backFrame/backHeader"%>
 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/back-end/Shop_product/backProduct.css">
    <title>商品後台</title>
<%@ include file="/back-end/backFrame/backBody"%>
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/Shop_product/allShop_product.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">商品管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="<%=request.getContextPath()%>/back-end/Shop_order/allOrder.jsp"><span>訂單管理</span></a>
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
			<div class="row mt-3">
            	<div class="col-3 searchbtn mt-1 ml-3">
					<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/shop_product.do" style="position: relative;">
						<input type="text" name="sq_product_id" id="search" placeholder="輸入產品編號 (如510001):"/>
						<input type="hidden" name="action"	value="getOneById">
						<input type="submit" value="送出" style="position: absolute; opacity: 0;" class="icon">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/search.png" class="img-fluid icon" >
				    </FORM>
				</div>
				<div class="col-1 ml-3" style="padding: 0;">
              		<button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back-end/Shop_product/allShop_product.jsp'" style="border: 1px black solid;">
                    	<img src="<%=request.getContextPath()%>/back-end/backFrame/image/list.png" class="img-fluid">
                    </button>
                </div>
                <div class="col-1 ml-3" style="padding: 0;">
                	<button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back-end/Shop_product/addProduct.jsp'" style="border: 1px black solid;">
                    	<img src="<%=request.getContextPath()%>/back-end/backFrame/image/addbrand.png" class="img-fluid">
                    </button>
                </div>
                <div class="col-3">
                	<jsp:useBean id="shop_productService" scope="page" class="com.shop_product.model.Shop_productService" />  
					<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/shop_product.do" class="mt-2">
						<b>選擇產品編號:</b>
						<select size="1" name="product_kind_name">
								<option value="登山車">登山車
								<option value="公路車">公路車
								<option value="混和路面型">混和路面型
								<option value="騎行服">騎行服
								<option value="外套/風衣">外套/風衣
								<option value="雨衣/雨褲">雨衣/雨褲
								<option value="太陽眼鏡">太陽眼鏡
								<option value="手套">手套/袖套"
								<option value="口罩/脖圍/帽套">口罩/脖圍/帽套
								<option value="安全帽">安全帽
								<option value="打氣筒">打氣筒
								<option value="水壺/水壺架">水壺/水壺架
								<option value="外胎/內胎">外胎/內胎
								<option value="坐墊">坐墊
								<option value="維修保養工具">維修保養工具 
						</select>
						<input type="hidden" name="action" value="getByKindName">
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
    								<th id="td_id"><span>產品編號</span></th>
    								<th id="td_id"><span>廠牌編號</span></th>
    								<th id="td_kind"><span>種類</span></th>
    								<th id="td_name"><span>名稱</span></th>
    								<th id="td_price"><span>價格</span></th>
    								<th id="td_pic"><span>圖片</span></th>
    								<th id="td_detail"><span>介紹</span></th>
    								<th id="td_date"><span>日期</span></th>
    								<th id="td_mertail"><span>材質</span></th>
    								<th id="td_status"><span>狀態</span></th>
    								<th id="td_btn"></th>
<!--     								<th id="td_btn"></th> -->
    							</tr>
    						</thead>
<%@ include file="page1.file" %> 		
				   			<c:forEach var="productVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
				   				<tr>
				    				<td>${productVO.sq_product_id}</td>
				    				<td>						        				
				    					${brandSvc.getOneBrand(productVO.sq_brand_id).brand_name}	
				    				</td>
				    				<td>${productVO.product_kind_name}</td>
				   					<td>${productVO.product_name}</td>
				   					<td>${productVO.product_price}</td>
				   					<td>
				   						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter${productVO.sq_product_id}">圖片</button>
                                        <div class="modal fade" id="exampleModalCenter${productVO.sq_product_id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        	<div class="modal-dialog modal-dialog-centered" role="document">
                                            	<div class="modal-content">
                                                	<div class="modal-header">
                                                     	<h5 class="modal-title" id="exampleModalCenterTitle">商品圖</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        	<span aria-hidden="true">&times;</span>
                                                       	</button>
                                                    </div>
	                                                <div class="modal-body">
	                                                	<img src="<%=request.getContextPath()%>/showImg4?id=${productVO.sq_product_id}" class="img-fluid" style="">
	                                                </div>
	                                                <div class="modal-footer">
	                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                                                </div>
                                           		</div>
                                            </div>
                                        </div>
				   					</td>
				   					<td>
				   						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter${productVO.sq_product_id}001">介紹</button>
                                        <div class="modal fade" id="exampleModalCenter${productVO.sq_product_id}001" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        	<div class="modal-dialog modal-dialog-centered" role="document">
                                            	<div class="modal-content">
                                                	<div class="modal-header">
                                                     	<h5 class="modal-title" id="exampleModalCenterTitle">介紹</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        	<span aria-hidden="true">&times;</span>
                                                       	</button>
                                                    </div>
	                                                <div class="modal-body" style="text-align:left;">
	                                                	<span>${productVO.product_detail}</span>
	                                                </div>
	                                                <div class="modal-footer" style="text-align: center;">
	                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                                                </div>
                                           		</div>
                                            </div>
                                        </div>
				   					</td>
				   					<td>${productVO.add_date}</td>
				   					<td>
                                    	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter${productVO.sq_product_id}002">
                                               	 材質
                                        </button>
                                        <div class="modal fade" id="exampleModalCenter${productVO.sq_product_id}002" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                           	<div class="modal-dialog modal-dialog-centered">
												<div class="modal-content">
											    	<div class="modal-header">
												        <h5 class="modal-title" id="exampleModalLabel">材質內容</h5>
											        	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												        	<span aria-hidden="true">&times;</span>
												        </button>
												    </div>
													<div class="modal-body">
												    	<span>${productVO.product_material}</span>   
												    </div>
												    <div class="modal-footer">
												    	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
												    </div>
												</div>
											</div>
                                       	</div>
				   					</td>
				   					<td>${productVO.product_status}</td>              
				    				<td>
				    					<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/shop_product.do" style="position: relative;">
										    <input type="submit" value="修改" style="position: absolute; opacity: 0;">
										    <input type="image" src="<%=request.getContextPath()%>/back-end/backFrame/image/changeicon.png" alt="Submit" class="img-fluid"/>
										    <input type="hidden" name="sq_product_id"  value="${productVO.sq_product_id}">
										    <input type="hidden" name="action"	value="getOneForUpdate">
										</FORM>
				    				</td>
<!-- 				    				<td> -->
<%-- 										 <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/shop_product.do" style="position: relative;"> --%>
<!-- 										   	<input type="submit" value="刪除" style="position: absolute; opacity: 0;"> -->
<!-- 										   	<input type="image" src="image/delicon.png" alt="Submit" align="right" class="img-fluid"/> -->
<%-- 									    	<input type="hidden" name="sq_product_id" value="${productVO.sq_product_id}"> --%>
<!-- 									    	<input type="hidden" name="action" value="delete"> -->
<!-- 									    </FORM> -->
<!-- 									</td> -->
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