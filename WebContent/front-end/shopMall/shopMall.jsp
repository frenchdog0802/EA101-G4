<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.member.model.*" %>
<%@ page import="java.util.*"%>
<%
	Shop_productService shop_productSvc = new Shop_productService();
	List<Shop_productVO> list = shop_productSvc.getAll();
	pageContext.setAttribute("list", list);
	
	@SuppressWarnings("unchecked")
	List<Shop_productVO> buylist = (List<Shop_productVO>)session.getAttribute("shoppingcar");
	Integer size;
	if(buylist != null){
		size = buylist.size();
	}else{
		size = 0;
	}
	MemVO memVO = (MemVO)session.getAttribute("MemVO");
%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/shopMall/shopMallCSS.css">
    <title>商城</title>
  </head>
  <body>
  	<%@include file="/front-end/page-file/page-nav"%>
    <div class="container-fluid">
    	<div class="row mt-3 pl-3 pr-3">
    		<div class=" col-12">
    			<div class="row">
    				<div class="col-1"></div>
					<div class="col-1 pdzero" style="text-align:center; padding-left:0; padding-right:0;">
						<button class="btn bg-primary" onclick="location.href='javascript:window.location.reload()'" style="color:white; width:100%;">全部商品
						</button>
					</div>
					<div class="col-1 btn-group" style="text-align:center;">
						<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
							依條件搜尋
						</button>
					</div>
    				<div class="col-6 searchbtn" style="padding-left: 0;"> 
						<input type="search" id="search" name="searchByText" value="" placeholder="Search..." />
						<button type="button" class="icon" id="searchBtn"> <img src="image/search.png" class="img-fluid"></button>
					</div>
					<div class="col-3 mt-1" style="padding-right: 0;">
<!-- 						<span>熱門搜尋: </span> -->
<!-- 						<span>xxx</span> -->
<!-- 						<span>xxx</span> -->
<!-- 						<span>xxx</span> -->
					</div>
    			</div>    
<!--	複合查詢(隱藏的DIV)		-->	
    			<div class="row mt-2 sort_title bg-primary collapse" id="collapseExample" style="text-align:center; height:50px; line-height:50px;">
    				<div class="card card-body" style="padding:0;">
	    				<div class="row bg-primary">
		    				<div class="col-2 pdzero" style="background-color: white;"></div>
		    				<div class="col-1">
		    					<div class="dropdown">
									<button class="btn btn-secondary dropdown-toggle pdzero" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								    	排序
									</button>
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
										<button class="dropdown-item srhByPrice" value="priceUp">依價格&nbsp;&uarr;</button>
										<button class="dropdown-item srhByPrice" value="priceDown">依價格&nbsp;&darr;</button>
									</div>
								</div>
		    				</div>
		    				<jsp:useBean id="brandService" scope="page" class="com.brand.model.BrandService" />  
		    				<div class="col-2 pt-2 ">
		    					<select class="form-control" id="brandSrh">
		    						<option value="" style="display: none">品牌</option>
									<c:forEach var="brandVO" items="${brandService.all}" > 
										<option value="${brandVO.sq_brand_id}">${brandVO.brand_name}
									</c:forEach> 
								</select>
		    				</div>
		    				
		    				<div class="col-2 pt-2">
		    					<select class="form-control" id="priceSrh">
		    						<option value="" style="display: none">價格區間</option>
									<option value="5000">5000&nbsp;&uarr;</option>
									<option value="1000">1000 ~ 5000</option>
									<option value="500">500 ~ 1000</option>
									<option value="100">500&nbsp;&darr;</option>
								</select>
		    				</div>
		    				<jsp:useBean id="productService" scope="page" class="com.shop_product.model.Shop_productService" />  
							<div class="col-2 pt-2">
		    					<select class="form-control" id="kindSrh">
		    						<option value="" style="display: none">種類</option>
									<c:forEach var="productVO" items="${productService.all}" > 
										<option value="${productVO.product_kind_name}">${productVO.product_kind_name}
									</c:forEach> 
								</select>
		    				</div>
		    				<div class="col-1 pdzero">
		    					<button id="conditionSrh" class="btn bg-success">搜尋</button>
		    				</div>
		    				<div class="col-2 pdzero" style="background-color: white;"></div>
		    			</div>
	    			</div>
    			</div>	
<!--	複合查詢(隱藏的DIV)		-->				
    			<hr class="mb-3 mt-3">
    			<div class="row">
    				<div class="col-1"></div>
    				<div class="col-2 pr-1 pl-1">
    					<div class="left_col">
	    					<div class="left_detail pt-2">
	    						<ol>
	    							<li class="first"><span>自行車</span></li>
	    							<li><button class="btn kind" value="登山車"><span>登山型</span></button></li>
									<li><button class="btn kind" value="公路車"><span>公路型</span></button></li>
									<li><button class="btn kind" value="混和路面行"><span>混和路面行</span></button></li>
	    						</ol>
	    						<hr>
	    						<ol>
	    							<li class="first"><span>服裝</span></li>
	    							<li><button class="btn kind" value="騎行服"><span>騎行服</span></button></li>
									<li><button class="btn kind" value="外套/風衣"><span>外套/風衣</span></button></li>
									<li><button class="btn kind" value="雨衣/雨褲"><span>雨衣/雨褲</span></button></li>
	    						</ol>
	    						<hr>
	    						<ol>
	    							<li class="first"><span>服裝配件</span></li>
	    							<li><button class="btn kind" value="太陽眼鏡"><span>太陽眼鏡</span></button></li>
									<li><button class="btn kind" value="手套/袖套"><span>手套/袖套</span></button></li>
									<li><button class="btn kind" value="口罩/脖圍/帽套"><span>口罩/脖圍/帽套</span></button></li>									
	    						</ol>
	    						<hr>
	    						<ol>
	    							<li class="first"><span>裝備</span></li>
	    							<li><button class="btn kind" value="安全帽"><span>安全帽</span></button></li>
	    							<li><button class="btn kind" value="打氣筒"><span>打氣筒</span></button></li>
									<li><button class="btn kind" value="水壺/水壺架"><span>水壺/水壺架</span></button></li>
	    						</ol>
	    						<hr>
	    						<ol>
	    							<li class="first"><span>單車零件</span></li>
	    							<li><button class="btn kind" value="外胎/內胎"><span>外胎/內胎</span></button></li>
									<li><button class="btn kind" value="坐墊"><span>坐墊</span></button></li>
									<li><button class="btn kind" value="維修保養工具"><span>維修保養工具</span></button></li>
	    						</ol>
	    					</div>
	    				</div>		
    				</div>
    				<%@ include file="/front-end/shopMall/page1.file"%>
    				<div class="col-8">
    					<div class="row products-range product">
    						<c:forEach var="productVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
			    				<div class="col-xs-6 col-sm-4 col-md-3 pdzero productprice collection" data-price="${productVO.product_price}">
				    				<div id="sample">
				    					<div class="list-img">
				    						<div class="list-img2">
					    						<a href="<%=request.getContextPath()%>/front-end/shopMall/shopProduct.jsp?id=${productVO.sq_product_id}">
				    								<img src="<%=request.getContextPath()%>/showImg4?id=${productVO.sq_product_id}" class="img-fluid"/>
					    						</a>
					    					</div>
					    				</div>
					    				<div class="listbox">
					    					<div class="list-boxs" style="height: 60px; text-align: center;">
					    						<span class="mb-1">${productVO.product_name}</span>
					    					</div>
					    					<div class="list-boxs price">
					   							$${productVO.product_price}元
					   						</div>
					   						<div class="list-boxs mt-2">
					   							<button class="btn bg-secondary addCollection">加入收藏</button>
<!-- 				    							<button class="btn bg-secondary addproduct">放入購物車</button> -->
				    						</div>
				    					</div>
				    				</div>
				    				<input type="hidden" name="product_id" value="${productVO.sq_product_id}">
					    			<input type="hidden" name="product_name" value="${productVO.product_name}">
					    			<%if(memVO != null){%>
					    			<input type="hidden" name="member_id" value="<%=memVO.getSq_member_id()%>">
					    			<%}%>
			    				</div>
		    				</c:forEach>		    				
    					</div>
    				</div>
    				<div class="col-1"></div>
    			</div>
    		
    			<hr class="mt-5 mb-3">
    			
    			<div class="row pr-3">
    				<%@ include file="/front-end/shopMall/page2.file" %> 
    			</div>
    		</div>
    	</div>
    </div>
    <div id="shopCar">
		<a href="<%=request.getContextPath()%>/front-end/shopMall/shoppingCar.jsp"><img src="image/cart.png" class="img-fluid"></a>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<%@include file="/front-end/page-file/page-footer"%>
	
    <script>
  		$(document).ready(function() {
  			$("#searchBtn").click(function(){
  				var text = $("input[name=searchByText]").val();
  				$.ajax({
  		        	type : "POST",
  		        	url  : "<%=request.getContextPath()%>/shop_product.do",
  		        	dataType: 'json',
  		        	data : {
  		        		action : "searchByText",
  		        		searchText : $("input[name=searchByText]").val(),
  		        	},
  		        	success : function(data) {
							console.log(data);
							let str = "";
							if(data.length != 0){
						for(let index = 0 ; index < data.length ; index++) { 
							str += 
			    				 "<div class='col-xs-6 col-sm-4 col-md-3 pdzero'>"+
			    				 		"<div id='sample'>"+
			    				 		"<div class='list-img'>"+
			    				 			"<div class='list-img2'>"+
				    				 				"<img src='<%=request.getContextPath()%>/showImg4?id=" + data[index].id + "' class='img-fluid'>"+
			    				 			"</div>"+
				    			 		"</div>"+
				    			 		"<div class='listbox'>"+
				    			 			"<div class='list-boxs'>"+
				    			 				"<span class='mb-1'>" + data[index].name + "</span>"+
				    			 			"</div>"+
				    			 			"<div class='list-boxs'>"+
				    							"<span>" + data[index].price + "元</span>"+
				    			 			"</div>"+
				    			 			"<div class='list-boxs mt-2'>"+
				    			 				"<button class='btn bg-secondary'>加入收藏</button>"+
				    			 			"</div>"+
				    			 		"</div>"+
				    			 	"</div>"+
			    				 "</div>";
							}
						}else {
								str += "<div class='col-12 pdzero' style='text-align: center;'>"+
							 	"<img src='<%=request.getContextPath()%>/front-end/shopMall/image/noData.png'>"+
								"</div>";
						}
						$(".product").empty();
						$(".product").append(str);
					}
  		        });
  			});
  			$(".addCollection").click(function() {							
  				<%if(memVO == null){%>
  					alert("請先登入會員");
  				<%}else{%>
	  		        $.ajax({
	  		        	type : "POST",
	  		        	url  : "<%=request.getContextPath()%>/collectionServlet.do",
	  		        	data : {
	  		        		action : "addCollection",
	  		        		product_id : $("input[name=product_id]", $(this).parents(".collection")).val(),
	  		        		product_name : $("input[name=product_name]", $(this).parents(".collection")).val(),
							member_id : $("input[name=member_id]", $(this).parents(".collection")).val(),
	  		        	},
	  		        	success : function(){
	  		        		alert("已加入收藏");
	  		        	}
	  		        });
  		        <%}%>
  		    });
  			$('.kind').click(function(){
  				$.ajax({
  					type :"POST",
  					url  : "<%=request.getContextPath()%>/shop_product.do",
  					dataType: 'json',
  					data : {
  						action : "getByKind",
	  	  	  			product_kind_name : $(this).val(),
  					},
  					success : function(data) {
  							console.log(data);
  							let str = "";
  							if(data.length != 0){
							for(let index = 0 ; index < data.length ; index++) { 
								str += 
				    				 "<div class='col-xs-6 col-sm-4 col-md-3 pdzero'>"+
				    				 		"<div id='sample'>"+
				    				 		"<div class='list-img'>"+
				    				 			"<div class='list-img2'>"+
 				    				 				"<img src='<%=request.getContextPath()%>/showImg4?id=" + data[index].id + "' class='img-fluid'>"+
				    				 			"</div>"+
					    			 		"</div>"+
					    			 		"<div class='listbox'>"+
					    			 			"<div class='list-boxs'>"+
					    			 				"<span class='mb-1'>" + data[index].name + "</span>"+
					    			 			"</div>"+
					    			 			"<div class='list-boxs'>"+
					    							"<span>" + data[index].price + "元</span>"+
					    			 			"</div>"+
					    			 			"<div class='list-boxs mt-2'>"+
					    			 				"<button class='btn bg-secondary'>加入收藏</button>"+
					    			 			"</div>"+
					    			 		"</div>"+
					    			 	"</div>"+
				    				 "</div>";
								}
							}else {
  								str += "<div class='col-12 pdzero' style='text-align: center;'>"+
								 	"<img src='<%=request.getContextPath()%>/front-end/shopMall/image/noData.png'>"+
									"</div>";
							}
  						$(".product").empty();
  						$(".product").append(str);
  					}
  				});
  			});
  			$('#conditionSrh').click(function(){
  				$.ajax({
  					type :"POST",
  					url  : "<%=request.getContextPath()%>/shop_product.do",
  					dataType: 'json',
  					data : {
						action : "listEmps_ByCompositeQuery",
  						product_kind_name : $('#kindSrh').val(), 
  						sq_brand_id : $('#brandSrh').val(),
  						product_price : $('#priceSrh').val(),                      
  					},
  					success : function(data) {
  							console.log(data);
  							let str = "";
  							if(data.length != 0){
  								for(let index = 0 ; index < data.length ; index++) { 
  									str += 
  					    				 "<div class='col-xs-6 col-sm-4 col-md-3 pdzero'>"+
  					    				 		"<div id='sample'>"+
  					    				 		"<div class='list-img'>"+
  					    				 			"<div class='list-img2'>"+
  	 				    				 				"<img src='<%=request.getContextPath()%>/showImg4?id=" + data[index].id + "' class='img-fluid'>"+
  					    				 			"</div>"+
  						    			 		"</div>"+
  						    			 		"<div class='listbox'>"+
  						    			 			"<div class='list-boxs'>"+
  						    			 				"<span class='mb-1'>" + data[index].name + "</span>"+
  						    			 			"</div>"+
  						    			 			"<div class='list-boxs'>"+
  						    							"<span>" + data[index].price + "元</span>"+
  						    			 			"</div>"+
  						    			 			"<div class='list-boxs mt-2'>"+
  						    			 				"<button class='btn bg-secondary'>加入收藏</button>"+
  						    			 			"</div>"+
  						    			 		"</div>"+
  						    			 	"</div>"+
  					    				 "</div>";
  								}	
  							}else {
  								str += "<div class='col-12 pdzero' style='text-align: center;'>"+
  									 	"<img src='<%=request.getContextPath()%>/front-end/shopMall/image/noData.png'>"+
  										"</div>";
  							} 
  						$(".product").empty();
  						$(".product").append(str);
  					}
  				});
  			});
  			$(".srhByPrice").click(function() {				
  			    var sortMethod = $(this).val();
  			    console.log(sortMethod);
  			    if(sortMethod == 'priceUp')
  			    {
  			        sortAsc();
  			    }
  			    else if(sortMethod == 'priceDown')
  			    {
  			        sortDesc();
  			    }
  			});
  		});

  		function sortAsc()
		{
		    var products = $('.productprice');
		    products.sort(function(a, b){ return $(a).data("price")-$(b).data("price")});
		    $(".products-range").html(products);
		}

		function sortDesc()
		{
		    var products = $('.productprice');
		    products.sort(function(a, b){ return $(b).data("price") - $(a).data("price")});
		    $(".products-range").html(products);
		}
		
  		$(function(){
  			$(".fun-text").text("商城");  // text("")裡面自己輸入功能名稱 
  		});
  		window.onload = function(){
             if(<%=size%> != 0){
             	$("#shopCar").animate({right:'0px'});
             }
  		}
  		</script>
  	</body>
</html>