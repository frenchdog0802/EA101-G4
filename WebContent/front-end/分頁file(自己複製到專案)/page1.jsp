<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Bootstrap CSS -->
   <link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
    <!-- font style -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@700&display=swap');
    </style>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/css/page.css">


</head>
<body>

 <!-- 導覽列 -->
 <div class="row ">
    <div class="col">
        <nav class="navbar navbar-expand-lg navbar-dark font-weight-bold" >
            <h1 class="navbar-brand">
                <!-- 導覽列圖片 -->
                <!-- <img src="https://img.icons8.com/ios/50/000000/cycling-bmx.png" /> -->
                <img src="bike-img/home10.png" />
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
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown navhover">
                        <a href="#" class="nav-link dropdown-toggle text-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">路線規劃</a>
                        <!--text-dark active nav-item  -->
                        <div class="dropdown-menu" aria-lablelledby="dropdownId">
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
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
                            <a href="#" class="dropdown-item">test1</a>
                            <a href="#" class="dropdown-item">test2</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-item nav-link btn-dark rounded text-white" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sign-in</a>
                        <!--text-dark active nav-item  -->
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<section class="jumbotron text-xs-center ">
    <div class="container my-5">
        <p class="h1 jumbotron-heading text-white">自己更改名稱</p>
    </div>
</section>


<!-- before footer -->
<div class="container-fluid">
    <div class="row">
        <div class="col sidebarYellow-1 text-center">
            <p class="h2 m-5">EA101-G4</p>
        </div>
    </div>
</div>
<!-- footer -->
<footer id="footer-main">
    <div class="container">
        <div class="row">
            <div class="col"><span class="h4 font-weight-bolder text-dark">LOGO</span></div>
            <div class="col"><span class="h4 font-weight-bolder text-dark">LINKS</span></div>
        </div>
        <div class="row">
            <div class="col-6">
                <p>uncopyright 2020. EA101</p>
            </div>
            <div class="col-sm-3">
                <ul class="list-unstyled">
                    <li><a class="text-light" href="#">home</a></li>
                    <li><a class="text-light" href="#">what we do</a></li>
                    <li><a class="text-light" href="#">about</a></li>
                    <li><a class="text-light" href="#">latest</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <ul class="list-unstyled">
                    <li><a class="text-light" href="#">facebook</a></li>
                    <li><a class="text-light" href="#">twitter</a></li>
                    <li><a class="text-light" href="#">youtube</a></li>
                    <li><a class="text-light" href="#">linkedin</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- footer--end-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>

	<script>


<script>

    $(document).ready(function (e) {

        $(".navhover").hover(function () {
            $(this).find(".dropdown-menu").toggleClass("show");
        });

        const navbar = document.querySelector("nav"); 
        let previousScroll = 0;
        $(window).scroll(function handleNav() {
          let currentScroll = $(window).scrollTop(); 
              //Distance scrolled down the page
              let navHeight = $(navbar).height(); //Height of navbar
              //When scrolling down AND you've scrolled past navHeight * 2.25,add Class
              if (currentScroll > previousScroll && currentScroll > navHeight * 2.25) {
                $(navbar).removeClass("fixed-top");
                //When scrolling up AND you've scrolled less than navHeight, remove Class
            } else if (previousScroll > currentScroll && !(currentScroll <= navHeight)) {
                $(navbar).addClass("fixed-top");
            }
            previousScroll = currentScroll;
        });
    });


</script>
</body>
</html>