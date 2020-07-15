<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import ="java.util.*" %>
<%@ page import = "com.frontIndex.model.*"%>
<%@ page import = "com.act.model.*"%>
<%@ page import = "com.route.model.*"%>
<%@ page import = "com.shop_product.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	FrontIndexService indexSvc = new FrontIndexService();
	List<ActVO> actList = indexSvc.getFourAct();
	List<RouteVO> routeList = indexSvc.getFourRoute();
	List<Shop_productVO> productList = indexSvc.getFourProduct();
%>
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
.imgDiv{
	height:100%; 
	display:table-cell; 
	vertical-align: middle; 
	text-align:center;
}

img.img-thumbnail{
	height:300px;
	width:100%;
}
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
			<div class="col-lg-2 col-sm-12 sidebarYellow-1 py-5">
				<div class="m-5 py-5" style="text-align:center;">
					<h2 class="h2 font-weight-bold mt-5">最新活動</h2>
					<hr>
					<a href="#" class="btn btn-outline-dark mb-5"> <span
						class="small">查看所有活動</span>
					</a>
				</div>
			</div>	
			<div class="col-lg-10 col-md-12 ">
				<div class="row h-100 px-3 pt-4">
					<%for(int i=0;i<actList.size(); i++){%>
					<div class="col-lg-3 col-md-12 ">
						<div class="row" style="height:75%;">
							<div class="col-12" style="height:100%; display:table;">
								<div class="imgDiv">
									<img src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='<%=actList.get(i).getSq_activity_id()%>'" class="img-thumbnail" 
									 alt="">
								</div>
							</div>
						</div>
						<div class="row" style="height:25%;">
							<div class="col-12">
								<h5><%=actList.get(i).getAct_title() %></h5>
								<span>開始時間 : <%=actList.get(i).getAct_start_time() %></span>
							</div>
						</div>
					</div>
					<%}%>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- sidebar-left -->
			<div class="col-lg-2 col-sm-12 sidebarYellow-2 py-5">
				<div class="m-5 py-5" style="text-align:center;">
					<h2 class="h2 font-weight-bold mt-5">最新路線</h2>
					<hr>
					<a href="#" class="btn btn-outline-dark mb-5 "> <span
						class="small">查看所有路線</span>
					</a>
				</div>
			</div>	
			<div class="col-lg-10 col-md-12  rowGray">
				<div class="row h-100 px-3 pt-4">
					<%for(int i=0;i<routeList.size(); i++){%>
						<div class="col-lg-3 col-md-12 ">
						<div class="row" style="height:75%;">
							<div class="col-12" style="height:100%; display:table;">
								<div class="imgDiv">
								<img src="<%=request.getContextPath()%>/back-end/route/route.img?SQ_ROUTE_ID=<%=routeList.get(i).getSqRouteId()%>" class="img-thumbnail" 
								 alt="">
							</div>
							</div>
						</div>
						<div class="row" style="height:25%;">
							<div class="col-12">
							<h5><%=routeList.get(i).getRouteName()%></h5>
							<span style="margin-right:10px;">開始地點 : <%=routeList.get(i).getStartArea()%></span>
							<span style="margin-left:10px;">結束地點 : <%=routeList.get(i).getEndArea()%></span>
						</div>
						</div>
					</div>
					<%}%>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- sidebar-left -->
			<div class="col-lg-2 col-sm-12 sidebarYellow-1 py-5">
				<div class="m-5 py-5" style="text-align:center;">
					<h2 class="h2 font-weight-bold mt-5">最新商品</h2>
					<hr>
					<a href="#" class="btn btn-outline-dark mb-5"> <span class="small">前往商城</span></a>
				</div>
			</div>				
			<div class="col-lg-10 col-md-12 ">
				<div class="row h-100 px-3 pt-4">
					<%for(int i=0;i<actList.size(); i++){%>
					<div class="col-lg-3 col-md-12 ">
						<div class="row" style="height:75%;">
							<div class="col-12" style="height:100%; display:table;">
								<div class="imgDiv">
									<img src="<%=request.getContextPath()%>/showImg4?id=<%=productList.get(i).getSq_product_id()%>" class="img-thumbnail" style="width:80%;" alt="">
								</div>
							</div>
						</div>
						<div class="row" style="height:25%;">
							<div class="col-12">
								<h5><%=productList.get(i).getProduct_name()%></h5>
								<span>價格 : <%=productList.get(i).getProduct_price()%></span>
							</div>
						</div>
					</div>
					<%}%>
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
