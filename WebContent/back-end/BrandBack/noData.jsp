<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.brand.model.*"%>

<%
	BrandVO brandVO = (BrandVO) request.getAttribute("brandVO");
%>

<%@ include file="/back-end/backFrame/backHeader"%>
		<title>廠牌管理</title>
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
    <div class="row justify-content-center mt-3">
		<img src="image/noData.png" class="img-fluid mt-3">
    </div>
</div>
<%@ include file="/back-end/backFrame/backFooter" %>