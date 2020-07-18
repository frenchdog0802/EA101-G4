<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<jsp:useBean id="tipSvc" class="com.tips.model.TipsService" />
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/front-end/index/index.css">


<title>Welcome to EA101-G4</title>

</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container my-5">
		<!--  	內容寫在這裡 自由發揮 -->
		<section id='intro'>
			<div class="col-md-12">
				<h1>騎車小叮嚀</h1>

				<div class="container">
					<div class="row">
						<div class="col-2">
							<button type="button" class="btn btn-info btn-sm"
								data-toggle="collapse" data-target="#T1">
								<img class="img-fluid" width=120 height=100
									src="<%=request.getContextPath()%>/front-end/qAndA/photo/tip1.jpg"
									alt="法規資訊">
							</button>
						</div>
						<div class="col-2">
							<button type="button" class="btn btn-info" data-toggle="collapse"
								data-target="#T2">
								<img class="img-fluid" width=120 height=100
									src="<%=request.getContextPath()%>/front-end/qAndA/photo/tip2.jpg"
									alt="自行車道規劃認識">
							</button>
						</div>
						<div class="col-2">
							<button type="button" class="btn btn-info" data-toggle="collapse"
								data-target="#T3">
								<img class="img-fluid" width=120 height=100
									src="<%=request.getContextPath()%>/front-end/qAndA/photo/tip3.jpg"
									alt="單車裝備">
							</button>
						</div>
						<div class="col-2">
							<button type="button" class="btn btn-info" data-toggle="collapse"
								data-target="#T4">
								<img class="img-fluid" width=120 height=100
									src="<%=request.getContextPath()%>/front-end/qAndA/photo/tip4.jpg"
									alt="行前準備">
							</button>
						</div>
						<div class="col-2">
							<button type="button" class="btn btn-info" data-toggle="collapse"
								data-target="#T6">
								<img class="img-fluid" width=120 height=100
									src="<%=request.getContextPath()%>/front-end/qAndA/photo/tip6.jpg"
									alt="單車安全小常識">
							</button>
						</div>
						<div class="col-2">
							<button type="button" class="btn btn-info" data-toggle="collapse"
								data-target="#T7">
								<img class="img-fluid" width=120 height=100
									src="<%=request.getContextPath()%>/front-end/qAndA/photo/tip7.jpg"
									alt="全臺單車驛站">
							</button>
						</div>
					</div>
					<div class="row" style="height:300px">
					
						<div class="col">
							<div id="T1" class="collapse card mx-auto w-75 mt-3">
								<c:forEach var="tipVO" items="${tipSvc.findByTitle(1)}"
									varStatus="e">
											<div class="card-body ">${e.index}${tipVO.tips_description}</div>
								</c:forEach>
							</div>
								
								
							<div id="T2" class="collapse card mx-auto w-75 mt-3">
								<c:forEach var="tipVO" items="${tipSvc.findByTitle(2)}"
									varStatus="e">
											<div class="card-body ">${e.index}${tipVO.tips_description}</div>
								</c:forEach>
							</div>

							<div id="T3" class="collapse card mx-auto w-75 mt-3">
								<c:forEach var="tipVO" items="${tipSvc.findByTitle(3)}"
									varStatus="e">
											<div class="card-body ">${e.index}${tipVO.tips_description}</div>
								</c:forEach>
							</div>

							<div id="T4" class="collapse card mx-auto w-75 mt-3">
								<c:forEach var="tipVO" items="${tipSvc.findByTitle(4)}"
									varStatus="e">
											<div class="card-body ">${e.index}${tipVO.tips_description}</div>
								</c:forEach>
							</div>
							<div id="T6" class="collapse card mx-auto w-75 mt-3">
								<c:forEach var="tipVO" items="${tipSvc.findByTitle(5)}"
									varStatus="e">
											<div class="card-body ">${e.index}${tipVO.tips_description}</div>
								</c:forEach>
							</div>
							<div id="T7" class="collapse card mx-auto w-75 mt-3">
								<c:forEach var="tipVO" items="${tipSvc.findByTitle(6)}"
									varStatus="e">
											<div class="card-body ">${e.index}${tipVO.tips_description}</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
		</section>
	</div>



	<%@include file="/front-end/page-file/page-footer"%>
	<!-- 	jquery已經引入  -->
	<!-- 	sweetAlert已經引入   -->
	<!-- 	boostrap4已經引入   -->


	<script>
		$(function() {
			$(".fun-text").text("騎車小叮嚀"); // text("")裡面自己輸入功能名稱 
		});
	</script>

</body>
</html>

