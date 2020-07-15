<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- Required meta tags always come first -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
<!-- font style -->

<link rel="stylesheet" type="text/css" href="index.css">

<title>Welcome to EA101-G4</title>

<!-- Custom CSS -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@700&display=swap')
	;
</style>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front-end/page-file/css/page.css">
</head>
<body>
	<!-- 導覽列 -->
 <div class="row ">
    <div class="col">
        <nav class="navbar navbar-expand-lg navbar-dark font-weight-bold page-nav" >
            <h1 class="navbar-brand">
                <!-- 導覽列圖片 -->
                <!-- <img src="https://img.icons8.com/ios/50/000000/cycling-bmx.png" /> -->
                <img src="<%=request.getContextPath()%>/front-end/page-file/img/home10.png" />
            </h1>
            <button data-toggle="collapse" class="navbar-toggler" data-target="#submenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-lg-end" id="submenu">
                <ul class="nav navbar-nav">
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">最新消息</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">購物商城</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">我要租車</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">揪團活動</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="<%=request.getContextPath()%>/front-end/activity/Activity.jsp" class="dropdown-item">活動列表</a>
                            <a href="<%=request.getContextPath()%>/front-end/activity/FrontaddAct.jsp" class="dropdown-item">建立活動</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">路線規劃</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="<%=request.getContextPath()%>/front-end/route/routeM.jsp" class="dropdown-item">推薦路線</a>
                            <a href="<%=request.getContextPath()%>/front-end/waterStation/insertWs.jsp" class="dropdown-item">補水站&租車點</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">討論區</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">FAQ</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">騎乘小叮嚀</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">會員中心</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="<%=request.getContextPath()%>/front-end/member/listOneMem.jsp" class="dropdown-item">個人資訊</a>
                            <a href="<%=request.getContextPath()%>/front-end/activity/Actmanagement.jsp" class="dropdown-item">活動管理</a>
                            <a href="<%=request.getContextPath()%>/front-end/route/listMyRoute.jsp" class="dropdown-item">我的路線</a>
                            <a href="<%=request.getContextPath()%>/front-end/waterStation/listMyWs.jsp" class="dropdown-item">我的補水站</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                  
                    	  <c:if test="${empty MemVO}">
                        	<a href="<%=request.getContextPath()%>/front-end/index/LoginMember.jsp" class="nav-item nav-link btn-dark rounded text-white" >Sign-in</a>
                        </c:if>
                        <c:if test="${not empty MemVO}">
	                        	<a href="<%=request.getContextPath()%>/login/memlogin.do?action=logOut" onclick="document.getElementById('myform').submit()" class="nav-item nav-link btn-dark rounded text-white" >Log-out</a>
                        </c:if>
                        <!--text-dark active nav-item  -->

                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
	<!-- nav--end -->

	<!-- carousel -->
	<div class="container-fluid">
		<div class="row">
			<div class="col p-0">
				<!-- 輪播圖 -->
				<div class="carousel slide" data-ride="carousel" id="show">
					<ul class="carousel-indicators">
						<li data-target="#show" data-slide-to="0"></li>
						<li data-target="#show" data-slide-to="1"></li>
						<li data-target="#show" data-slide-to="2"></li>
					</ul>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<!-- 第一張 -->
							<img src="bike-img/6-1.jpg" alt="" class="img-fluid" />
							<div class="carousel-caption carousel-caption-center ">
								<!-- 第一張上面的文字+說明 -->
								<img src="首頁img/PAPAGO.png" height="150" width="150"
									class="img-fluid float-left " alt="">
								<h1 class="float-left ml-3 font-weight-bolder display-4">The
									King Of BIKE</h1>
							</div>
						</div>
						<!-- 第二張圖 -->
						<div class="carousel-item">
							<img src="bike-img/4-1.jpg" class="img-fluid" alt="" />
							<div class="carousel-caption carousel-caption-center ">
								<!-- 第一張上面的文字+說明 -->
								<img src="首頁img/PAPAGO.png" height="150" width="150"
									class="img-fluid float-left " alt="">
								<h3 class="float-left ml-3 font-weight-bolder display-4">The
									King Of BIKE</h3>
							</div>
						</div>
						<!-- 第三張圖 -->
						<div class="carousel-item">
							<img src="bike-img/5-1.jpg" class="img-fluid" alt="" />
							<div class="carousel-caption carousel-caption-center ">
								<!-- 第一張上面的文字+說明 -->
								<img src="首頁img/PAPAGO.png" height="150" width="150"
									class="img-fluid float-left " alt="">
								<h3 class="float-left ml-3 font-weight-bolder display-4">The
									King Of BIKE</h3>
							</div>
						</div>
					</div>
					<!-- arrow -->
					<a href="#show" data-slide="prev"
						class="carousel-control-prev arrow-span"> <span
						class="carousel-control-prev-icon"></span></a> <a href="#show"
						data-slide="next" class="carousel-control-next arrow-span"> <span
						class="carousel-control-next-icon"></span></a>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<!-- sidebar-left -->
			<div class="col-2 ">
				<div class="row sidebarYellow-1 ">
					<div class="col m-5 py-5">
						<h2 class="h2 font-weight-bold mt-5">北台灣</h2>
						<p class="small">台北、新北、基隆、桃園、新竹、苗栗</p>
						<a href="#" class="btn btn-outline-dark mb-5  "> <span
							class="small">查看北台灣路線</span>
						</a>
					</div>
				</div>
				<div class="row sidebarYellow-2 ">
					<div class="col m-5 py-5">
						<h2 class="h2 font-weight-bold mt-5">中台灣</h2>
						<p class="small">台中、彰化、南投、雲林</p>
						<a href="#" class="btn btn-outline-dark mb-5 "> <span
							class="small">查看中台灣路線</span>
						</a>
					</div>
				</div>
				<div class="row sidebarYellow-1 ">
					<div class="col m-5 py-5">
						<h2 class="h2 font-weight-bold mt-5">南台灣</h2>
						<p class="small">嘉義、台南、高雄、屏東</p>
						<a href="#" class="btn btn-outline-dark mb-5 "> <span
							class="small">查看南台灣路線</span>
						</a>
					</div>
				</div>
				<div class="row sidebarYellow-2 ">
					<div class="col m-5 py-5">
						<h2 class="h2 font-weight-bold mt-5">東台灣</h2>
						<p class="small">宜蘭、花蓮、台東</p>
						<a href="#" class="btn btn-outline-dark mb-5 "> <span
							class="small">查看東台灣路線</span>
						</a>
					</div>
				</div>
			</div>

			<!-- sidebar-right -->
			<div class="col-10 ">
				<div class="row ">
					<div class="col  ">
						<img src="首頁img/2.jpg" class="img-thumbnail mt-4 mb-1" alt="">
						<h5>lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/3.jpg" class="img-thumbnail mt-4 mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/4.jpg" class="img-thumbnail mt-4 mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/5.jpg" class="img-thumbnail mt-4 mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
				</div>
				<div class="row rowGray my-5 ">
					<div class="col my-4">
						<img src="首頁img/6.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col my-4">
						<img src="首頁img/7.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col my-4">
						<img src="首頁img/8.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col my-4">
						<img src="首頁img/9.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
				</div>
				<div class="row my-5">
					<div class="col ">
						<img src="首頁img/18.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/11.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col">
						<img src="首頁img/12.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col">
						<img src="首頁img/13.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
				</div>
				<div class="row rowGray mb-5">
					<div class="col ">
						<img src="首頁img/14.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/15.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/16.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
					</div>
					<div class="col ">
						<img src="首頁img/17.jpg" class="img-thumbnail mb-1" alt="">
						<h5 class="">lorem</h5>
						<span>Lorem ipsum dolor.</span>
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
		<c:if test="${param.validation=='success'}">
		Swal.fire({
			  position: 'top-end',
			  icon: 'success',
			  title: '帳號驗證成功!',
			  showConfirmButton: false,
			  timer: 1500
			})
		</c:if>
	})
	</script>

</body>
</html>
