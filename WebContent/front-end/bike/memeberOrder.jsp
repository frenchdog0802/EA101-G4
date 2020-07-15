<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="row">
		<table class="table text-center table-hover">
			<thead>
				<tr>
					<th scope="col">訂單編號</th>
					<th scope="col">姓名</th>
					<th scope="col">電話</th>
					<th scope="col">取車時間</th>
					<th scope="col">還車時間</th>
					<th scope="col">金額</th>
				</tr>
			</thead>
			<tbody id="masterTbody">
					
			</tbody>
		</table>
	</div>
	
	
 	</div>
 
 
 		
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	jquery已經引入  -->
<!-- 	sweetAlert已經引入   -->
<!-- 	boostrap4已經引入   -->


	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
		
	//init table
	$.ajax({
		url:"",
		type:"POST",
		data:{
			action:"memberOrderInit"
		},
		dataType:"JSON",
		success:function(data){
			
		}
	})
	});
	</script>

</body>
</html>

