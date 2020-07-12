<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.member.model.*"%>
<%@ page import="java.util.*"%>
<% 
	MemService memSvc = new MemService();
	MemVO memVO = memSvc.findByPrimaryKey("910002");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/shopMall/shopPayDetailCss.css">
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
 	
 	<div class="container my-5">
		<div class="container-fluid">
				<div class="row">
    				<div class="col-12">
    					<div class="pt-2 pl-3 pb-3" style="background-color: #cccccc;">
			    			<h3 class="pl-4">選擇領取地點</h3>
			    			<hr class="ml-4" style="width: 90%; margin-bottom: 10px; margin-top: 10px;">
							<div class="row">
								<div class="col-6 choshop pl-5 mt-3" id="choshop">
									<form class="pl-4">
										<input type="radio" name="service" id="home" class="mb-2" checked="true"> 
										<label for="home">宅配到點</label><br>
										<input type="radio" name="service" id="store" class="mb-2"> 
										<label for="store">超商取貨</label><br>
									</form>
									<table class="address-zone">
										<tr>
											<td><span>選擇縣市 : </span></td>
											<td class="shoptd">
												<select class="city" id="c1" disabled="disabled">
													<option value="">請選擇</option>
												</select>
											</td>
										</tr>
										<tr>
											<td><span>選擇行政區 : </span></td>
											<td class="shoptd">
												<select class="county" id="c2" disabled="disabled">
													<option value="">請選擇</option>
												</select>
											</td>
										</tr>
										<tr>
											<td><span>選擇門市 : </span></td>
											<td class="shoptd">
												<select name="shopname"  id="c3" disabled="disabled">
													<option>請選擇</option>
												</select>
												<form>
													<input type="hidden" class="zipcode" value="">
												</form>
											</td>
										</tr>
									</table>
									<div class="checkbtn mt-4">
<!-- 										<button id="sClear">清空</button> -->
										<button id="sConfirm" disabled="disabled">確認</button>
									</div>
								</div><div></div>
								<div class="col-6 pt-2 pl-4">
									<div id="map" style="height: 250px;width: 80%;"></div>
								</div>
			    			</div>
		    			</div>
    				</div>
    			</div>
    			<hr style="margin-top: 3px; margin-bottom: 3px;">
    			<div class="row">
    				<div class="col-12">
    					<div class="pt-2 pl-3 pb-3" style="background-color: #cccccc;">
			    			<h3 class="pl-4">收件人資訊</h3>
			    			<hr class="ml-4" style="width: 90%; margin-bottom: 10px; margin-top: 10px;">
			    			<div class="pl-4">
			    				<table>
			    					<tr>
			    						<td><input type="checkbox" class="samemem"></td>
			    						<td><span class="ml-1">同會員資訊</span></td>
			    						<td><button class="clean ml-4">清空</button></td>
			    					</tr>
			    				</table>			    				
			    			</div>
			    			<div class="pl-4">
			    				<FORM method="POST" action="<%=request.getContextPath()%>/shopping.do">
				    				<table class="takedt">
				    					<tr>
				    						<td class="takedt_t"><span>收件人 :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="tname" name="tname" value="">
				    							<input type="hidden" id="name" value="<%=memVO.getM_name()%>">
				    						</td>
				    					</tr>
				    					<tr>
				    						<td class="takedt_t"><span>連絡電話 :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="tphone" name="tphone" value="">
				    							<input type="hidden" id="phone" value="<%=memVO.getCellphone()%>">
				    						</td>
				    					</tr>
				    					<tr>
				    						<td class="takedt_t"><span>Email :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="temail" name="temail" value="">
				    							<input type="hidden" id="email" value="<%=memVO.getM_email()%>">
				    						</td>
				    					</tr>
				    					<tr>
				    						<td class="takedt_t"><span>收件地址 :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="taddress" name="taddress" value="">
				    							<input type="hidden" id="address" value="<%=memVO.getAddress()%>">
				    						</td>
				    					</tr>
				    				</table>			    				
			    				<hr style="margin-top: 3px; margin-bottom: 3px;">
					    			<div class="row">
					    				<div class="col-12">
					    					<div class="pt-2 pl-3 pb-2" style="background-color: #cccccc;">
					    						<div class="finalbtn">
					    							<button class="btn bg-secondary">上一步</button>
					<!-- 			    				<button class="btn bg-secondary">下一步</button> -->												
								    				<input type="submit" value="下一步">
								    				<input type="hidden" name="action" value="toCheck">								    			
								    			</div>
							    			</div>
					    				</div>
					    			</div>
			    				</FORM>			    				
		    				</div>
		    			</div>
    				</div>
    			</div>	
    		</div>
    		<div class="col-2"></div>
    	</div>

 		
	<%@include file="/front-end/page-file/page-footer"%>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<script src="js/aj-address.js" type="text/javascript"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8wygDormdKxQnhWGlBHvYJ7Q2HsT7F14&callback=initMap"></script>
	<script>
	
	function initMap(lat, lon) {
        var uluru = {lat: lat, lng: lon};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
	
	$(function () {
        $('.address-zone').ajaddress();
    });
	$(document).ready(function(){
		$("#sConfirm").click(function(){
			var name = $("#shopName").val();
			console.log(name);
			$.ajax({
	        	type : "POST",		  
	        	url  : "<%=request.getContextPath()%>/store/storeServlet.do",
	        	dataType: 'json',
	        	data : {
	        		action : "getPosition",
	        		shopName : name,
	        	},
	        	success : function(data){
	        		initMap(data[0].lat, data[0].lon);
	        		$("#taddress").val(data[0].address);
	        	}
	    	});
		});
		
		$("#c2").change(function(){
			var key = $(".zipcode").val();
			console.log(key);
			if(key != ''){
				$.ajax({
		        	type : "POST",		  
		        	url  : "<%=request.getContextPath()%>/store/storeServlet.do",
		        	dataType: 'json',
		        	data : {
		        		action : "getShopName",
		        		directKey : key,
		        	},
		        	success : function(data){
		        		let str = "";
						if(data.length != 0){
						for(let index = 0 ; index < data.length ; index++) { 
							str += "<option id='shopName' value='"+data[index].name+"'>"+data[index].name+"</option>";
		        			}
		        		}
						$("#c3").empty();
  						$("#c3").append(str);
		        	}
		    	});
			}
		});
		$(".samemem").click(function(){
			if($(this).prop('checked')){
				$("#tname").val($("#name").val());
				$("#tphone").val($("#phone").val());
				$("#temail").val($("#email").val());
				$("#taddress").val($("#address").val());
			}else{
				$("#tname").val("");
				$("#tphone").val("");
				$("#temail").val("");
				$("#taddress").val("");
			}
		});
		$(".clean").click(function(){
			$("#tname").val("");
			$("#tphone").val("");
			$("#temail").val("");
			$("#taddress").val("");
			$(".samemem").prop("checked", false);
		});
		
	});
	//鎖定選項
	var home = document.getElementById("home");
	var store = document.getElementById("store");
	var c1 = document.getElementById("c1");
	var c2 = document.getElementById("c2");
	var c3 = document.getElementById("c3");
	var sConfirm = document.getElementById("sConfirm");
    var address = document.getElementById("taddress");
	$('input[name=service]').change(function(){
		if(store.checked){
			c1.removeAttribute('disabled');
			c2.removeAttribute('disabled');
			c3.removeAttribute('disabled');
			sConfirm.removeAttribute('disabled');
			address.setAttribute('disabled', 'disabled');
		}
		if(home.checked){
			c1.setAttribute('disabled', 'disabled');
			c2.setAttribute('disabled', 'disabled');
			c3.setAttribute('disabled', 'disabled');
			sConfirm.setAttribute('disabled', 'disabled');
			address.removeAttribute('disabled');
		}
	});
	
	$(function(){
		$(".fun-text").text("付款方式");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>
