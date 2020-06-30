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
			    			<form class="pl-4">
								<input type="radio" name="service" id="home" class="mb-2" checked="true"> 
								<label for="home">宅配到點</label><br>
								<input type="radio" name="service" id="store" class="mb-2"> 
								<label for="store">超商取貨</label><br>
							</form>
							<div class="row">
								<div class="col-6 choshop pl-5 mt-3" id="choshop">
									<table>
										<tr>
											<td><span>選擇縣市 : </span></td>
											<td class="shoptd">
												<select name="County">
												<option value="1">桃園市</option>
												</select>
											</td>
										</tr>
										<tr>
											<td><span>選擇行政區 : </span></td>
											<td class="shoptd">
												<select name="County">
													<option value="1">中壢區</option>
												</select>
											</td>
										</tr>
										<tr>
											<td><span>選擇門市 : </span></td>
											<td class="shoptd">
												<select name="County">
													<option value="1">中央門市</option>
												</select>
											</td>
										</tr>
									</table>
									<div class="checkbtn mt-4">
										<button>清空</button>
										<button>確認</button>
									</div>
								</div><div></div>
								<div class="col-6 pt-2 pl-4">
									<iframe src="" style="width: 230px; height: 230px;"></iframe>
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
			    				<form>
				    				<table class="takedt">
				    					<tr>
				    						<td class="takedt_t"><span>收件人 :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="tname" value="">
				    							<input type="hidden" id="name" value="<%=memVO.getM_name()%>">
				    						</td>
				    					</tr>
				    					<tr>
				    						<td class="takedt_t"><span>連絡電話 :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="tphone" value="">
				    							<input type="hidden" id="phone" value="<%=memVO.getCellphone()%>">
				    						</td>
				    					</tr>
				    					<tr>
				    						<td class="takedt_t"><span>Email :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="temail" value="">
				    							<input type="hidden" id="email" value="<%=memVO.getM_email()%>">
				    						</td>
				    					</tr>
				    					<tr>
				    						<td class="takedt_t"><span>收件地址 :</span></td>
				    						<td class="takedt_td">
				    							<input type="text" id="taddress" value="">
				    							<input type="hidden" id="address" value="<%=memVO.getAddress()%>">
				    						</td>
				    					</tr>
				    				</table>
			    				</form>
		    				</div>
		    			</div>
    				</div>
    			</div>
    			<hr style="margin-top: 3px; margin-bottom: 3px;">
    			<div class="row">
    				<div class="col-12">
    					<div class="pt-2 pl-3 pb-2" style="background-color: #cccccc;">
    						<div class="finalbtn">
    							<button class="btn bg-secondary">上一步</button>
			    				<button class="btn bg-secondary">下一步</button>
			    			</div>
		    			</div>
    				</div>
    			</div>
    		</div>
    		<div class="col-2"></div>
    	</div>

 		
	<%@include file="/front-end/page-file/page-footer"%>
	<script>
	$(document).ready(function(){
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
		});
	});
	$(function(){
		$(".fun-text").text("付款方式");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>
