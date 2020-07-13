<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.brand.model.*"%>

<%
  BrandVO brandVO = (BrandVO) request.getAttribute("brandVO");
%>
<%@ include file="/back-end/backFrame/backHeader"%>
		<link rel="stylesheet" type="text/css" href="backCss/addBrand.css">
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
		<h3>資料修改</h3>
    </div>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<c:if test="${not empty errorMsgs}">
				<font style="color:red">請修正以下錯誤:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color:red; list-style-type: none;">${message}</li>
					</c:forEach>
				</ul>
			</c:if>
		</div>
	</div>
	<div class="row mb-3">
    	<div class="col-2"></div>
    	<div class="col-8">
			<FORM method="post" action="brand.do" enctype="multipart/form-data">
			<table style="table-layout:fixed;">
				<tr>
			    	<td>廠牌編號:</td>   		
			  	</tr>
			  	<tr>
			  		<td><%=brandVO.getSq_brand_id()%></td>
			  	</tr>
				<tr>
					<td>廠牌名稱 :</td>		
				</tr>
				<tr>
					<td><input type="TEXT" name="name" size="45" style="width:100%" 
						 value="<%=brandVO.getBrand_name()%>" /></td>
				</tr>
				<tr>
					<td>聯絡電話 :</td>
				</tr>
				<tr>
					<td><input type="TEXT" name="phone" size="45" style="width:100%"
						 value="<%=brandVO.getBrand_phone()%>" /></td>
				</tr>
				<tr>
					<td>公司地址 :</td>
				</tr>
				<tr>
					<td><input type="TEXT" name="address" size="45" style="width:100%"
						value="<%=brandVO.getBrand_address()%>" /></td>
				</tr>
				<tr>
					<td>廠牌商標 :</td>
				</tr>
				<tr>
					<td><input type="FILE" name="sign" id="imgInp" accept="image/*" style="width:100%"></td>
				</tr>
				<tr>
					<td>圖片預覽 : </td>		
				</tr>
				<tr>
					<td>
						<img id="blah" src="/EA101G4/showImg?id=<%=brandVO.getSq_brand_id()%>" class="img-fluid" style="height:60px;">	 
					</td>
				</tr>
				<tr>
					<td>廠牌介紹 :</td>
				</tr>
				<tr>
					<td>
						<input type="hidden" id="take" name="detail"/>
						<textarea id="give" rows="5" cols="50" style="width:100%"><%=brandVO.getBrand_detail()%>"</textarea>
					</td>
				</tr>			
			</table>
			<br>
			<input type="hidden" name="action" value="update">
			<input type="hidden" name="sq_brand_id" value="<%=brandVO.getSq_brand_id()%>">
			<input type="submit" value="送出修改" onclick="upload()">
			</FORM>
		</div>
		<div class="col-2"></div>
	</div>
</div>
<script>
	function upload(){
		document.getElementById('take').value = document.getElementById('give').value;
		document.getElementById('formid').submit();
	}
	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    
		    reader.onload = function(e) {
		      $('#blah').attr('src', e.target.result);
		    }
		    
		    reader.readAsDataURL(input.files[0]); // convert to base64 string
		  }
		}
		$("#imgInp").change(function() {
		  readURL(this);
		});
</script>
<%@ include file="/back-end/backFrame/backFooter" %>