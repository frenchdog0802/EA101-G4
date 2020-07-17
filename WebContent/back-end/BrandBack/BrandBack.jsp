<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.brand.model.*"%>

 <% 
 	BrandService brands = new BrandService();
 	List<BrandVO> list = brands.getAll();
  	pageContext.setAttribute("list", list);
 %>   
 
 <%@ include file="/back-end/backFrame/backHeader"%>
 	<link rel="stylesheet" type="text/css" href="backCss/backBrand.css">
    <title>廠牌後台</title>
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
					    <a class="nav-link active" href="<%=request.getContextPath()%>/back-end/BrandBack/BrandBack.jsp"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">廠牌管理</span></a>
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
						<FORM METHOD="post" ACTION="brand.do" style="position: relative;">
							<input type="text" name="sq_brand_id" id="search" placeholder="輸入員工編號 (如520001):"/>
							<input type="hidden" name="action"	value="getOne">
							<input type="submit" value="送出" style="position: absolute; opacity: 0;" class="icon">
							<img src="image/search.png" class="img-fluid icon" >
					    </FORM>
					</div>
					<div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back-end/BrandBack/BrandBack.jsp'" style="border: 1px black solid;">
                            <img src="image/list.png" class="img-fluid">
                        </button>
                    </div>
                    <div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back-end/BrandBack/addBrand.jsp'" style="border: 1px black solid;">
                            <img src="image/addbrand.png" class="img-fluid">
                        </button>
                    </div>
                    <div class="col-3">
                    	<jsp:useBean id="brandService" scope="page" class="com.brand.model.BrandService" />  
						<FORM METHOD="post" ACTION="brand.do" class="mt-2">
						    <b>選擇廠牌編號:</b>
						    <select size="1" name="sq_brand_id">
							    <c:forEach var="brandVO" items="${brandService.all}" > 
							         <option value="${brandVO.sq_brand_id}">${brandVO.sq_brand_id}
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
    									<th id="td_id"><span>編號</span></th>
    									<th id="td_name"><span>名稱</span></th>
    									<th id="td_phone"><span>電話</span></th>
    									<th id="td_address"><span>地址</span></th>
    									<th id="td_sign"><span>標誌</span></th>
    									<th id="td_detial"><span>介紹</span></th>
    									<th id="td_lastbtn"></th>
    									<th id="td_lastbtn"></th>
    								</tr>
    							</thead>
				    			<c:forEach var="brandVO" items="${list}">
				    				<tr>
				    					<td>${brandVO.sq_brand_id}</td>
				    					<td>${brandVO.brand_name}</td>
				    					<td>${brandVO.brand_phone}</td>
				    					<td>${brandVO.brand_address}</td>
				    					<td>
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter${brandVO.sq_brand_id}">
                                               	 圖片
                                            </button>
                                            <div class="modal fade" id="exampleModalCenter${brandVO.sq_brand_id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            	<div class="modal-dialog modal-dialog-centered" role="document">
                                                	<div class="modal-content">
                                                    	<div class="modal-header">
                                                        	<h5 class="modal-title" id="exampleModalCenterTitle">廠商標誌圖</h5>
                                                        	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            	<span aria-hidden="true">&times;</span>
                                                       		</button>
                                                    	</div>
                                                	<div class="modal-body">
                                                    	<img src="<%=request.getContextPath()%>/showImg?id=${brandVO.sq_brand_id}" class="img-fluid">
                                                	</div>
                                                    	<div class="modal-footer">
                                                       		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    	</div>
                                                	</div>
                                            	</div>
                                        	</div>
                                        </td>               
				    					<td style="text-align: left;">${brandVO.brand_detail}</td>
				    					<td>
				    						<FORM METHOD="post" ACTION="brand.do" style="position: relative;">
											    <input type="submit" value="修改" style="position: absolute; opacity: 0;">
											    <img src="image/changeicon.png" alt="" class="img-fluid">
											    <input type="hidden" name="sq_brand_id"  value="${brandVO.sq_brand_id}">
											    <input type="hidden" name="action"	value="getOneForUpdate">
											</FORM>
				    					</td>
				    					<td>
										 	<FORM METHOD="post" ACTION="brand.do" style="position: relative;">
										    	<input type="submit" value="刪除" style="position: absolute; opacity: 0;">
											    <img src="image/delicon.png" alt="" class="img-fluid">
										    	<input type="hidden" name="sq_brand_id" value="${brandVO.sq_brand_id}">
										    	<input type="hidden" name="action" value="delete">
										    </FORM>
										</td>
				    				</tr>
				    			</c:forEach>			
    						</table>
    					</div>
    				</div>
    			</div>
		 	</div>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     
<%@ include file="/back-end/backFrame/backFooter" %>