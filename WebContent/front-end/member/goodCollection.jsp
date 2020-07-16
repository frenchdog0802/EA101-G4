<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.product_collection.model.*"%>
<%@ page import="com.member.model.*" %>
<%@ page import="java.util.*"%>
<%
	MemVO memVO = (MemVO)session.getAttribute("MemVO");
	Product_CollectionService collectionSvc = new Product_CollectionService();
	List<Product_CollectionVO> collectionList = collectionSvc.getAllCollection();
	pageContext.setAttribute("collectionList", collectionList);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/index/index.css">

    <title>Welcome to EA101-G4</title>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
	
 	<div class="container my-5">
 		<div class="container-fluid">
 			<div class="row justify-content-center">
 				<div class="col-10">
 					<c:forEach var="collectionVO" items="${collectionList}">
 					<div class="row collection" name="${collectionVO.sq_product_id}">	
 						<div class="col-2">
 							<img src="<%=request.getContextPath()%>/showImg4?id=${collectionVO.sq_product_id}" class="img-fluid"/>
 						</div>
 						<div class="col-10">
 							${collectionVO.sq_member_id}
 							${collectionVO.product_name}
 							${collectionVO.collection_date}
 							<button class="btn bg-primary deleteCollection">移除收藏</button>
 							<input type="hidden" name="action" value="deleteCollection">
 							<input type="hidden" name="product_id" value="${collectionVO.sq_product_id}">
 							<input type="hidden" name="member_id" value="${collectionVO.sq_member_id}">
 						</div>
 					</div>	
 					</c:forEach>
 				</div>
 			</div>
 		</div>
 	</div>	
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	jquery已經引入  -->
<!-- 	sweetAlert已經引入   -->
<!-- 	boostrap4已經引入   -->


	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	$(".deleteCollection").click(function() {
  		console.log($("input[name=product_id]", $(this).parents(".collection")).val());				 				
  		console.log($("input[name=member_id]", $(this).parents(".collection")).val());
		var a = $("input[name=product_id]", $(this).parents(".collection")).val();
	  	$.ajax({
	  		type : "POST",
	  		url  : "<%=request.getContextPath()%>/collectionServlet.do",
	  		data : {
	  		    action : "deleteCollection",
	  		    product_id : $("input[name=product_id]", $(this).parents(".collection")).val(),
				member_id : $("input[name=member_id]", $(this).parents(".collection")).val(),
	  		},
	  		success : function(){
	  			$("div[name="+ a +"]").empty();
	  			alert("已移除收藏");
	  		}
		});
	});

	</script>

</body>
</html>