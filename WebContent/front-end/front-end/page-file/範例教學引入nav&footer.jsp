<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->

</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
 	
 	<div class="container my-5">
	<!--  	內容寫在這裡 自由發揮 -->
 	</div>
 
 
 		
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	基本的jquery已經引入  需要datetimepicker再自己引入 -->


	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>