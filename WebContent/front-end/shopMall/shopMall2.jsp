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
    <div class="container-fluid">
    	<div class="row mt-3 pl-3 pr-3">
    		<div class=" col-12">
    			<div class="row">
    				<div class="col-1"></div>
					<div class="col-1" style="padding-right: 0; padding-left: 0;">
						<div class="btn-group">
							
						</div>
					<div class="col-1"></div>	
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
    			<div class="row mt-2 sort_title">
    				<div class="col-1"></div>
    				<div class="col-1 bg-primary" style="padding-right: 0;">
    					<div class="btn-group">
							<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
								<span class="caret">排序</span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#"><span>依金錢&nbsp;&uarr;</span></a></li>
								<li><a href="#"><span>依金錢&nbsp;&darr;</span></a></li>
								<li><a href="#"><span>依上架時間&nbsp;&uarr;</span></a></li>
								<li><a href="#"><span>依上架時間&nbsp;&darr;</span></a></li>
							</ul>
						</div>
    				</div>
    				<div class="col-9 pt-2 bg-primary">
    					<%@ include file="/front-end/shopMall/page1.file"%>
    				</div>
    				<div class="col-1"></div>
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
    				<div class="col-8">
    					<div class="row" id="product">
    						<c:forEach var="productVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		    				<div class="col-xs-6 col-sm-4 col-md-3 pdzero">
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
			    						<div class="list-boxs">
			    							<span>$XXX元</span>
			    						</div>
			    						<div class="list-boxs mt-2">
			    							<button class="btn bg-secondary">加入收藏</button>
			    						</div>
			    					</div>
			    				</div>	
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
	<footer id="footer-main">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<p>uncopyright 2020. EA101</p>
				</div>
				<div class="col-sm-3">
					<ul class="list-unstyled">
						<li><a href="">home</a></li>
						<li><a href="">what we do</a></li>
						<li><a href="">about</a></li>
						<li><a href="">latest</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<ul class="list-unstyled">
						<li><a href="">facebook</a></li>
						<li><a href="">twitter</a></li>
						<li><a href="">youtube</a></li>
						<li><a href="">linkedin</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<h6>a tiny header</h6>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam expedita fugit saepe, eum ad, quam! Eum magnam suscipit nulla ullam aliquam consectetur provident, nihil consequuntur porro labore asperiores corrupti esse?</p>
				</div>
			</div>
		</div>
	</footer>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  	<script>
  		$(document).ready(function() {
  			$('.kind').click(function(){
  				$.ajax({
  					type :"POST",
  					url  : "<%=request.getContextPath()%>/back_end/Shop_product/product.do",
  					data : {
  						action : "getByKind",
  	  	  	  			product_kind_name : $(this).val(),                           
  					},
  					dataType: "JSON",
  					success : function(data) {
   							console.log(data);	
  						}
  					});
  				});
  			});

  	</script>
  </body>
</html>