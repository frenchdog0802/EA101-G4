<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.brand.model.*"%>

<%
	Shop_productVO productVO = (Shop_productVO) request.getAttribute("productVO");
%>

<%@ include file="/back-end/backFrame/backHeader"%>
		<link rel="stylesheet" type="text/css" href="addBrand.css">
		<title>廠牌管理</title>
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
              		<button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back_end/Shop_product/allShop_product.jsp'" style="border: 1px black solid;">
                    	<img src="image/list.png" class="img-fluid">
                    </button>
                </div>
                <div class="col-1 ml-3" style="padding: 0;">
                	<button class="btn divbg" onclick="location.href='<%=request.getContextPath()%>/back_end/Shop_product/addProduct.jsp'" style="border: 1px black solid;">
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
    <div class="row justify-content-center mt-3">
    	<h3>產品資料輸入</h3>
    </div>
		<div class="row">
			<div class="col-2"></div>
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
			<FORM method="post" action="product.do" enctype="multipart/form-data" id="formid">
				<table>
					<tr>
						<td>產品名稱 :</td>						
					</tr>
					<tr style="margin-dottom:10px;">
						<td><input type="TEXT" name="name" style="width:100%;"
							value="<%= (productVO==null)? "Giant" : productVO.getProduct_name()%>" /></td>
					</tr>

					<tr>
						<td>						
							選擇種類 :
							<select size="1" name="kind_name">									
								<option value="登山型">登山型自行車
								<option value="公路型">公路型自行車
								<option value="混和路面型">混和路面型自行車
								<option value="騎行服">騎行服
								<option value="外套/風衣">外套/風衣
								<option value="雨衣/雨褲">雨衣/雨褲
								<option value="太陽眼鏡">太陽眼鏡
								<option value="手套/袖套">手套/袖套"
								<option value="口罩/脖圍/帽套">口罩/脖圍/帽套
								<option value="安全帽">安全帽
								<option value="打氣筒">打氣筒
								<option value="水壺/水壺架">水壺/水壺架
								<option value="外胎/內胎">外胎/內胎
								<option value="坐墊">坐墊
								<option value="維修保養工具">維修保養工具
							</select>
							&nbsp; &nbsp; 
					<jsp:useBean id="brandSvc" scope="page" class="com.brand.model.BrandService" />											
							選擇廠牌 :
							<select size="1" name="brand">
								<c:forEach var="brandVO" items="${brandSvc.all}">
									<option value="${brandVO.sq_brand_id}" ${(productVO.sq_brand_id == brandVO.sq_brand_id)? 'selected':'' } >${brandVO.brand_name}
								</c:forEach>
							</select>
							&nbsp; &nbsp; 					
							輸入價格 : 										
							<input type="TEXT" name="price"
							value="<%= (productVO==null)? "" : productVO.getProduct_price()%>" />
						</td>
					</tr>
					<tr>
						<td>加入圖片 :</td>	
					</tr>
					<tr>
						<td><input type="FILE" name="pic" id="imgInp" accept="image/*"></td>
					</tr>
					<tr>
						<td>圖片預覽 : </td>		
					</tr>
					<tr>
						<td>
							<div  id="show" style="display:flex; align-items:center; justify-content:center;">
								<c:if test="${empty errorMsgs}">
									<img id="blah" src="image/default.png" class="img-fluid" style="height: 150px;">
								</c:if>
								<c:if test="${not empty errorMsgs}">
									<img id="blah" src="<%=request.getContextPath()%>/showImg2/showImg2.do" class="img-fluid" style="height:150px;">
								</c:if>
							</div>
						</td>
					</tr>
					<tr>
						<td>商品材質 :</td>
					</tr>
					<tr>
						<td>
							<input type="hidden" id="take" name="material">
							<textarea rows="3" id="give" style="width:100%"><%=(productVO==null)? "" : productVO.getProduct_material()%></textarea>
						</td>
					</tr>
					<tr>
						<td>商品介紹 :</td>
					</tr>
					<tr>
						<td>
							<input type="hidden" id="take2" name="detail">
							<textarea rows="5" id="give2" style="width:100%"><%= (productVO==null)? "" : productVO.getProduct_detail()%></textarea>
						</td>
					</tr>
				</table>
				<div style="text-align: right;">
					<input type="hidden" name="action" value="insert">
					<input type="submit" value="送出新增" onclick="upload()" style="text-align: right;">
				</div>
			</FORM>
			</div>
			<div class="col-2"></div>
    	</div>
</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script>
		function upload(){
			document.getElementById('take').value = document.getElementById('give').value;
			document.getElementById('formid').submit();
			document.getElementById('take2').value = document.getElementById('give2').value;
			document.getElementById('formid').submit();
		}
		function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    
		    reader.onload = function(e) {
		      $('#blah').attr('src', e.target.result);
		    }
		    
		    reader.readAsDataURL(input.files[0]); 
		  }
		}
		$("#imgInp").change(function() {
		  readURL(this);
		});
	</script>
<%@ include file="/back-end/backFrame/backFooter" %>