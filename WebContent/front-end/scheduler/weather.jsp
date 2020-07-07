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



		 <div class="row">
                <div class="col-xs-12 w-100">
                  <nav>
                    <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">全臺</a>
                      <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">北部</a>
                      <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">中部</a>
                      <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">南部</a>
                      <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">外島</a>
                    </div>
                  </nav>
                </div>
              </div>
		<div class="row">
			<table class="table">
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
		
		
		$.ajax({
			url:"<%=request.getContextPath()%>/WeatherServlet.do",
			type:"POST",
			data:{
				action: "init",
			},
			dataType:"JSON",
			success:function(obj){
				if(obj.url){
					//ajax
					$.ajax({
						url:obj.url,
						type:"GET",
						dataType:"JSON",
						success:function(data){
							var jsonData = data.stringify();
							$.ajax({
								url:"<%=request.getContextPath()%>/WeatherServlet.do",
								type:"POST",
								data:{
									action: "getURL",
									jsonData : jsonData,
								},
							})
						}
					})
				}
				
			}
		})
		});
	</script>

</body>
</html>