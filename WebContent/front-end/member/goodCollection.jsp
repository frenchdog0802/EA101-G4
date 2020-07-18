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
	String sq_member_id = memVO.getSq_member_id();
	List<Product_CollectionVO> collectionList = collectionSvc.getCollection(sq_member_id);
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
 					<div class="row collection h-100">
 					<c:forEach var="collectionVO" items="${collectionList}">						
 						<div class="col-4 my-2" name="${collectionVO.sq_product_id}">
 							<div style="height:70%; text-align: center;">							
 								<img src="<%=request.getContextPath()%>/showImg4?id=${collectionVO.sq_product_id}" class="img-fluid mb-4"/>
 							</div>
 							<div style="text-align: center; height:10%;">
 								${collectionVO.product_name}
 							</div>
 							<div style="text-align: center; height:10%;">
 								${collectionVO.collection_date}
 							</div>	
 							<div style="text-align: center; height:10%;">						
 								<button class="btn bg-primary deleteCollection" value="${collectionVO.sq_product_id}" style="color:white;">移除收藏</button>
 								<input type="hidden" name="action" value="deleteCollection">
 								<input type="hidden" name="member_id" value="${collectionVO.sq_member_id}">
 							</div>
 						</div>
 					</c:forEach>
 					</div>						
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
		$(".fun-text").text("收藏商品");  // text("")裡面自己輸入功能名稱 
	});
	$(".deleteCollection").click(function() {			 				
  		var a = $(this).val();		
		console.log(a);
	  	$.ajax({
	  		type : "POST",
	  		url  : "<%=request.getContextPath()%>/collectionServlet.do",
	  		data : {
	  		    action : "deleteCollection",
	  		    product_id : $(this).val(),
				member_id : $("input[name=member_id]", $(this).parents(".collection")).val(),
	  		},
	  		success : function(){
	  			$("div[name="+ a +"]").remove();
	  			Swal.fire({
	  			  title: 'Are you sure?',
	  			  text: "You won't be able to revert this!",
	  			  icon: 'warning',
	  			  showCancelButton: true,
	  			  confirmButtonColor: '#3085d6',
	  			  cancelButtonColor: '#d33',
	  			  confirmButtonText: 'Yes, delete it!'
	  			}).then((result) => {
	  			  if (result.value) {
	  			    Swal.fire(
	  			      'Deleted!',
	  			      'Your file has been deleted.',
	  			      'success'
	  			    )
	  			  }
	  			})
	  		}
		});
	});

	</script>

</body>
</html>