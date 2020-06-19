<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				   <a class="nav-link" href="#"><span>商品管理</span></a>
				 </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#"><span>訂單管理</span></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">廠牌管理</span></a>
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
    	<h3>廠牌資料輸入</h3>
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
			<FORM method="post" action="brand.do" enctype="multipart/form-data" id="formid">
				<table style="table-layout:fixed;">
					<tr>
						<td>廠牌名稱 :</td>						
					</tr>
					<tr>
						<td><input type="TEXT" name="name" style="width:100%"
							value="<%= (brandVO==null)? "Giant" : brandVO.getBrand_name()%>" /></td>
					</tr>
					<tr>
						<td>聯絡電話 :</td>	
					</tr>
					<tr>
						<td><input type="TEXT" name="phone" style="width:100%"
							value="<%= (brandVO==null)? "03-5648879" : brandVO.getBrand_phone()%>" /></td>
					</tr>
					<tr>
						<td>公司地址 :</td>
					</tr>
					<tr>
						<td><input type="TEXT" name="address" style="width:100%" 
							value="<%= (brandVO==null)? "台中市東區捷安路123號" : brandVO.getBrand_address()%>"></td>
					</tr>
					<tr>
						<td>廠牌商標 :</td>	
					</tr>
					<tr>
						<td><input type="FILE" name="sign" id="imgInp" accept="image/*"></td>
					</tr>
					<tr>
						<td>圖片預覽 : </td>		
					</tr>
					<tr>
						<td>
							<div  id="show" style="display:flex; align-items:center; justify-content:center;">
								<c:if test="${empty errorMsgs}">
									<img id="blah" src="image/default.png" class="img-fluid" style="height: 100px;">
								</c:if>
								<c:if test="${not empty errorMsgs}">
									<img id="blah" src="<%=request.getContextPath()%>/showImg2/showImg2.do" class="img-fluid" style="height:100px;">
								</c:if>
							</div>
						</td>
					</tr>
					<tr>
						<td>廠牌介紹 :</td>
					</tr>
					<tr>
						<td><input type="hidden" id="take" name="detail">
							<textarea rows="5" id="give" style="width:100%"><%= (brandVO==null)? "" : brandVO.getBrand_detail()%></textarea>
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