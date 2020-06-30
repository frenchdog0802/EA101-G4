<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="java.util.*"%>
<%
	Shop_productService shop_productSvc = new Shop_productService();
	List<Shop_productVO> list = shop_productSvc.getAll();
	pageContext.setAttribute("list", list);
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
					<div class="col-1 pdzero">
						<button class="btn"  onclick="location.href='javascript:window.location.reload()'">商城首頁
						</button>
						<button class="srhByPrice" value="priceUp">依價格&nbsp;&uarr;</button>
						<button class="srhByPrice" value="priceDown">依價格&nbsp;&darr;</button>
					</div>
					<div class="col-1 btn-group">
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle pdzero" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    	排序
							</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#">依價格&nbsp;&uarr;</a>
								<a class="dropdown-item" href="#">依價格&nbsp;&darr;</a>
								<a class="dropdown-item" href="#">依上架時間&nbsp;&uarr;</a>
						  		<a class="dropdown-item" href="#">依上架時間&nbsp;&darr;</a>
							</div>
						</div>
					</div>
    				<div class="col-6 searchbtn mt-1">
						<input type="search" id="search" placeholder="Search..." />
						<button type="button" class="icon"> <img src="image/search.png" class="img-fluid"></button>
					</div>
					<div class="col-3 mt-2" style="padding-right: 0;">
						<span>熱門搜尋: </span>
						<span>xxx</span>
						<span>xxx</span>
						<span>xxx</span>
					</div>
    			</div>    					
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
    					<div class="row products-range">
    						<c:forEach var="productVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
			    				<div class="col-xs-6 col-sm-4 col-md-3 pdzero product" data-price="${productVO.product_price}">
				    					<div id="sample">
				    						<div class="list-img">
				    							<div class="list-img2">
				    								<img src="<%=request.getContextPath()%>/showImg4?id=${productVO.sq_product_id}" class="img-fluid">
					    						</div>
					    					</div>
					    					<div class="listbox">
					    						<div class="list-boxs">
					    							<span class="mb-1">${productVO.product_name}</span>
					    						</div>
					    						<div class="list-boxs price">
					    							$${productVO.product_price}元
					    						</div>
					    						<div class="list-boxs mt-2">
					    							<button class="btn bg-secondary">加入收藏</button>
					    							<button class="btn bg-secondary addproduct">放入購物車</button>
					    						</div>
					    					</div>
					    				</div>
					    				<input type="hidden" name="id" value="${productVO.sq_product_id}">
						    			<input type="hidden" name="name" value="${productVO.product_name}">
										<input type="hidden" name="price" value="${productVO.product_price}">
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
	<%@include file="/front-end/page-file/page-footer"%>
    <script>
  		$(document).ready(function() {
  			$(".addproduct").click(function() {
  		        $.ajax({
  		        	type : "POST",
  		        	url  : "<%=request.getContextPath()%>/shopping.do",
  		        	data : {
  		        		action : "ADD",
  		        		id : $("input[name=id]", $(this).parents(".product")).val(),
  		        		name : $("input[name=name]", $(this).parents(".product")).val(),
  		        		price : $("input[name=price]", $(this).parents(".product")).val(),
  		        	},
  		        	success : function(){
  		        		if($("#shopCar").css("right") != 0){
  		        			$("#shopCar").animate({right:'0px'}); 
  		        		}
  		        	}
  		        });
  		    });
  			$('.kind').click(function(){
  				$.ajax({
  					type :"POST",
  					url  : "<%=request.getContextPath()%>/back_end/Shop_product/product.do",
  					dataType: 'json',
  					data : {
  						action : "getByKind",
  	  	  	  			product_kind_name : $(this).val(),                           
  					},
  					success : function(data) {
  							console.log(data);
  							let str = "";
							let str1 = "";
							for(let index = 0 ; index < data.length ; index++) { 
								str1 += 
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
  						$("#product").empty();
  						$("#product").append(str+str1);
  					}
  				});
  			});
  			$(".srhByPrice").click(function() {				
  			    var sortMethod = $(this).val();
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
		    var products = $('.product');
		    products.sort(function(a, b){ return $(a).data("price")-$(b).data("price")});
		    $(".products-range").html(products);
		}

		function sortDesc()
		{
		    var products = $('.product');
		    products.sort(function(a, b){ return $(b).data("price") - $(a).data("price")});
		    $(".products-range").html(products);
		}
		
  		$(function(){
  			$(".fun-text").text("商城");  // text("")裡面自己輸入功能名稱 
  		});
  		
  		</script>
  	</body>
</html>