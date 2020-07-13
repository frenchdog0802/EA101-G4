<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.product_stock.model.*"%>
<%@ page import="java.util.*"%>
<%
	String sq_product_id = request.getParameter("id");
	Shop_productService productSvc = new Shop_productService();
 	Shop_productVO productVO = productSvc.getOneById(sq_product_id);
 	
 	Product_stockService stockSvc = new Product_stockService();
 	List<String> colorList = stockSvc.getColor(sq_product_id);
 	List<String> modelList = stockSvc.getModel(sq_product_id);
 	
 	request.setAttribute("colorList", colorList);
 	request.setAttribute("modelList", modelList);
 	
 	@SuppressWarnings("unchecked")
	List<Shop_productVO> buylist = (List<Shop_productVO>)session.getAttribute("shoppingcar");
	Integer size;
	if(buylist != null){
		size = buylist.size();
	}else{
		size = 0;
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/shopMall/slick/slick.css">
 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/shopMall/slick/slick-theme.css">
    <title>shop_product</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/shopMall/shopProductCss.css">
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
 	
 	<div class="container my-5">
		<div class="container-fluid">
    	<div class="row">
    		<div class="col-1"></div>
    		<div class="col-10">
    			<div class="row">
					<div class="col-1" style="padding-left: 0; padding-right: 0;">
						<button class="btn" onclick="location.href='<%=request.getContextPath()%>/front-end/shopMall/shopMall.jsp'">商城</button>
					</div>
    				<div class="col-7 searchbtn mt-1" style="padding-left: 0; padding-right: 0;">
						<input type="search" id="search" placeholder="Search..." />
						<button type="button" class="icon"> <img src="image/search.png" class="img-fluid"></button>
					</div>
					<div class="col-4 mt-2" style="padding-right: 0;">
						<span>熱門搜尋 : </span>
						<span>xxx</span>
						<span>xxx</span>
						<span>xxx</span>
					</div>
    			</div>
    			<div class="row mt-4">
    				<div class="col-5 product_img" style="border: 1px solid black; padding-left: 10px; padding-right: 10px;">
						<div>
							<img src="<%=request.getContextPath()%>/showImg4?id=<%=productVO.getSq_product_id()%>" class="img-fluid">
						</div>
    				</div>
    				<div class="col-7">
    					<div id="product_name">
    						<span><%=productVO.getProduct_name()%></span>
    					</div>
	    				<div id="product_cus">
	   						<table>
	   							<tr>
	   								<td><span>售價 : </span></td>
	    							<td><span class="allsecond_td">NT$<%=productVO.getProduct_price()%></span></td>
	    						</tr>
	    						<tr>
	    							<td><span>上架日期 : </span></td>
	    							<td ><span class="allsecond_td"><%=productVO.getAdd_date()%></span></td>
	    						</tr>
	   							<tr>
	    							<td><span>尺寸 :</span></td>
	    							<td class="second_td">
	    								<select id="color" style="margin-left: 10px;">
	    								<% if(colorList.size() <= 1){%>
	    									<c:forEach var="color" items="${colorList}">
	    										<option value="${color}">單一顏色</option>
	    									</c:forEach>
	    								<%}else{%>
	    									<c:forEach var="color" items="${colorList}">
	    										<option value="${color}">${color}</option>
	    									</c:forEach>
	    								<%}%>
	    								</select>
	    							</td>
	    						</tr>
	    						<tr>
	    							<td><span>顏色 : </span></td>
	    							<td class="second_td">
	    								<select id="model" style="margin-left: 10px;">
	    								<% if(modelList.size() <= 1){%>
	    									<option value="${model}">單一尺寸</option>
	    								<%}else{%>
	    									<c:forEach var="model" items="${modelList}">
	    										<option value="${model}">${model}</option>
	    									</c:forEach>
	    								<%}%>
	    								</select>
	    							</td>
	    						</tr>
	    						<tr>
	    							<td><span>庫存狀態 : </span></td>
	    							<td><span class="allsecond_td">有</span></td>
	    						</tr>
	    					</table>
	   					</div>
	   					<div id="product_join">
	   						<button class="btn bg-secondary addproduct">加入購物車</button>
	   							<input type="hidden" name="id" value=<%=productVO.getSq_product_id()%>>
					   			<input type="hidden" name="name" value="<%=productVO.getProduct_name()%>">
								<input type="hidden" name="price" value="<%=productVO.getProduct_price()%>">
	    					<button class="btn bg-success">加入收藏</button>
	    				</div>
    				</div>
    			</div>
    			<div class="row mb-3">
    				<div class="col-12" style="border: 1px solid black; margin-top: 20px;">
    					<div class="mt-2">
    						<h3>商品介紹</h3>
    						<hr>
    					</div>
    					<div class="mb-2">
    						<span><%=productVO.getProduct_detail()%></span>
    					</div>
    				</div>
    			</div>
    			<div class="row">
    				<div class="col-12 product_infor mb-2 pb-3" style="border: 1px black solid;">
    					<div>
    						<h3>商品資訊</h3>
    						<hr>
    					</div>
    					<div id="product_infor1">
	    					<span>品牌 :</span><br>
	    					<div style="text-align: center;">
	    						<img src="<%=request.getContextPath()%>/showImg?id=<%=productVO.getSq_brand_id()%>" class="img-fluid">
	    					</div>
    					</div>
    					<div  id="product_infor2">    		
    						<span>材質 : </span><br>					
    						<span><%=productVO.getProduct_material()%></span>
    					</div>					
    				</div>
    			</div>
    			<div class="row">
    				<div class="col-12 pb-3 mb-3" style="border: 1px black solid;">
    					<div>
    						<span>留言</span>
    						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="margin-left: 20px; margin-top: 5px;">
								我要留言
							</button>
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel">留言</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							      	<input type="text" id="whoMessage" placeholder="請輸入姓名" class="mb-2">
									<textarea rows="5" id="detailMessage" style="width:100%" placeholder="留言處"></textarea>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" id="clearBt">清空</button>
							        <button type="button" class="btn btn-primary" id="postBt" data-dismiss="modal">提交留言</button>   
							      </div>
							    </div>
							  </div>
							</div>
    						<hr>
    					</div>
    					<div id="comment"></div>
    				</div>				
    			</div>
    		</div>
    		<div class="col-1"></div>
    		</div>
    	</div>
 	</div>
 	<div id="shopCar">
		<a href="<%=request.getContextPath()%>/front-end/shopMall/shoppingCar.jsp"><img src="image/cart.png" class="img-fluid"></a>
	</div>		
	<%@include file="/front-end/page-file/page-footer"%>
	<script src="./slick/slick.js" type="text/javascript" charset="utf-8"></script>
	<script>
		$(document).on('ready', function() {
			$(".regular").slick({
		    	dots: true,
		        infinite: true,
		        slidesToShow: 1,
		        slidesToScroll: 1,
		        centerMode: true,
		        focusOnSelect: true
			});
		});
		$(document).ready(function() {
			$(".addproduct").click(function() {
  		        $.ajax({
  		        	type : "POST",
  		        	url  : "<%=request.getContextPath()%>/shopping.do",
  		        	data : {
  		        		action : "ADD",
  		        		id : $("input[name=id]").val(),
  		        		name : $("input[name=name]").val(),
  		        		price : $("input[name=price]").val(),
  		        		color : $("#color").val(),
  		        		model : $("#model").val(),
  		        	},
  		        	success : function(){
  		        		if($("#shopCar").css("right") != 0){
  		        			$("#shopCar").animate({right:'0px'}); 
  		        		}
  		        	}
  		        });
  		    });
		});
		$(function(){
			$(".fun-text").text("商品");  // text("")裡面自己輸入功能名稱 
		});
        var Storage =
        {
            saveData:function(){   
              	var name = document.getElementById('whoMessage').value;
                var data = document.querySelector("#detailMessage");
                if(data.value != ""){
                    var key = <%=sq_product_id%>+ "k" +(new Date().getTime() + Math.random() * 5);
                    if(name != ""){
                    	localStorage.setItem(key, data.value + "|" + name + "|" + this.getDateTime());
                    }else{
                    	localStorage.setItem(key, data.value + "|" + "匿名" + "|" + this.getDateTime());
                    }
                    data.value = "";
                    this.writeData();
                }else{
                    alert("請填寫留言!");
                }
            },
            writeData:function(){
                var dataHtml = "", data = "";                    
                    for(var i = localStorage.length-1; i >= 0; i--){
                    	var key = localStorage.key(i);
						data = localStorage.getItem(key).split("|");
		        		if(key.indexOf("<%=sq_product_id%>") != -1){
                   		dataHtml +=`<div class="cus_message mb-2">
			    						<table>
			    							<tr>
			    								<td style="width: 20%; text-align: center; border-right: 1px black solid; ">
			    									<span>`+ data[1] +`</span><br>
			    									<span>`+ data[2] +`</span>
			    								</td>
			    								<td style="padding-left: 15px; width: 100%;">
			    									<span>`+ data[0] +`</span>
			    								</td>
			    								<td style="width: 10%;">
			    									<input style="float:right;border:1px black solid;border-radius:5px; padding-left:15px;" id="clearBt" type="button" onclick="delete1('`+ key + `')" value="刪除"/>
			    								</td>
			    							</tr>
			    						</table>
			    					</div>`;     			
		        		}
		        	}
                document.getElementById("comment").innerHTML = dataHtml;
            },
            clearMessage:function(){
              	$("#detailMessage").val("");
            },
            getDateTime:function(){
                var isZero = function(num){
                    if(num < 10){
                        um = "0" + num;
                    }
                    return num;
                }                  
                var d = new Date();
                return d.getFullYear() + "-" + isZero(d.getMonth() + 1) + "-" + isZero(d.getDate()) + " " + isZero(d.getHours()) + ":" + isZero(d.getMinutes()) + ":" + isZero(d.getSeconds());
            }            
        }
        function delete1(key) {
        	localStorage.removeItem(key);
           	this.Storage.writeData();
        }
        window.onload = function(){ 
        	
        	if(<%=size%> != 0){
             	$("#shopCar").animate({right:'0px'});
             }
        	
        	for(var i = localStorage.length-1; i >= 0; i--){
        		var key = localStorage.key(i);
        		if(key.indexOf("<%=sq_product_id%>") != -1){
        			console.log(key);       			      			
        		}
        	}
        	Storage.writeData();
         	// localStorage.clear();

            document.getElementById("postBt").onclick = function(){Storage.saveData();}
            document.getElementById("clearBt").onclick = function(){Storage.clearData();}
        }
	</script>

</body>
</html>