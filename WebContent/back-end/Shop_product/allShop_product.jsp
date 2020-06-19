<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop_product.model.*"%>

<%
	Shop_productService shop_productSvc = new Shop_productService();
	List<Shop_productVO> list = shop_productSvc.getAll();
	pageContext.setAttribute("list", list);
%>
<%@ include file="/back-end/backFrame/backHeader"%>
 	<link rel="stylesheet" type="text/css" href="backBrand.css">
    <title>廠牌後台</title>
<%@ include file="/back-end/backFrame/backBody"%>
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">商品管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>訂單管理</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>廠牌管理</span></a>
					  </li>
					</ul>
				</div>
<%@ include file="/back-end/backFrame/backNav" %>
		<div class="container-fluid">
				<div class="row mt-3">
                    <div class="col-3 searchbtn mt-1 ml-3">
						<FORM METHOD="post" ACTION="shop_product.do" style="position: relative;">
							<input type="text" name="sq_product_id" id="search" placeholder="輸入產品編號 (如510001):"/>
							<input type="hidden" name="action"	value="getOne">
							<input type="submit" value="送出" style="position: absolute; opacity: 0;" class="icon">
							<img src="image/search.png" class="img-fluid icon" >
					    </FORM>
					</div>
					<div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back_end/Shop_product/BrandBack.jsp'" style="border: 1px black solid;">
                            <img src="image/list.png" class="img-fluid">
                        </button>
                    </div>
                    <div class="col-1 ml-3" style="padding: 0;">
                        <button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back_end/Shop_product/addBrand.jsp'" style="border: 1px black solid;">
                            <img src="image/addbrand.png" class="img-fluid">
                        </button>
                    </div>
                    <div class="col-3">
                    	<jsp:useBean id="shop_productService" scope="page" class="com.shop_product.model.Shop_productService" />  
						<FORM METHOD="post" ACTION="shop_product.do" class="mt-2">
						    <b>選擇產品編號:</b>
						    <select size="1" name="sq_product_id">
							    <c:forEach var="Shop_productVO" items="${shop_productService.all}" > 
							         <option value="${Shop_productVO.sq_product_id}">${Shop_productVO.sq_product_id}
							    </c:forEach>   
						    </select>
						    <input type="hidden" name="action" value="getOne">
						    <input type="submit" value="送出">
						</FORM>	
                    </div>
                </div>
		</div>
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<%@ include file="/back-end/backFrame/backFooter" %>