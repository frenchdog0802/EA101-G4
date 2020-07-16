<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.question.model.*"%>
<%@ page import="java.util.*"%>
<%
	QuestionService questionSvc = new QuestionService();
	List<QuestionVO> list = questionSvc.getAll();
	pageContext.setAttribute("list",list);
%>    
    
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>活動列表 | 鐵馬PAPAGO</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container my-5">
		<!-- Page Content -->
		<div class="container">

			<!-- Page Heading/Breadcrumbs -->
			<h1 class="mt-4 mb-3">FAQ:自行車問答集</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="<%=request.getContextPath()%>/front-end/index/index.html">Home</a>
				</li>
				<li class="breadcrumb-item active">自行車問答集</li>
			</ol>


			<div class="accordion" id="accordionExample">
				<c:forEach var="questionVO" items="${list}" varStatus="vs">
					<div class="card">
						<div class="card-header" id="headingOne${vs.index}">
							<h2 class="mb-0">
								<button id="btn${vs.index}" class="btn btn-link" type="button"
									data-toggle="collapse" data-target="#collapseOne${vs.index}"
									aria-expanded="true" aria-controls="collapseOne">${questionVO.question_title}</button>
							</h2>
						</div>

						<div id="collapseOne${vs.index}" class="collapse"
							aria-labelledby="headingOne" data-parent="#accordionExample">
							<div class="card-body">${questionVO.question_description}</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>

	<%@include file="/front-end/page-file/page-footer"%>
		<!-- 	jquery已經引入  -->
		<!-- 	sweetAlert已經引入   -->
		<!-- 	boostrap4已經引入   -->


		<script>
	$(function(){
		$(".fun-text").text("Q&A");  // text("")裡面自己輸入功能名稱 
	});
	</script>
		<script type="text/javascript">
		$(function(){
			$('h3').hide() /*將所有問題解答隱藏*/

				var judge=0/*宣告變數judge並指派預設值*/
			$(".btn").click(function(){/*id代號為btn1的標籤按下左鍵時*/
				/*$('.qa_content').slideToggle()/*將所有代表問題解答的標籤進行滑動切換*/
				if(judge==0){/*判斷變數judge是否為0*/
					$('h3').slideDown()/*將所有代表問題解答的標籤進行滑動往下*/
					judge=1/*將變數數值設定為1*/
				}else{/*否則*/
					$('h3').slideUp()/*將所有代表問題解答的標籤進行滑動往上*/
					judge=0/*將變數值設定為0*/
				}
			})
			$("h2").click(function Q(){/*id代號為Q1,Q2,Q3的標籤被點擊左鍵時*/
				$(this).next().slideToggle()/*元素本身的下一個元素也就是問題解答進行滑動切換*/
			})
		})
	</script>
</body>
</html>
