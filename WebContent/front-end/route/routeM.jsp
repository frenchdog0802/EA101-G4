<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.route.model.*"%>

<%
    RouteService rouSvc = new RouteService();
    List<RouteVO> list = rouSvc.getAll();
    pageContext.setAttribute("list",list);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1, shrink-to-fit=no"
	name="viewport">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<title>推薦路線首頁</title>
<style type="text/css">
body {
	font-family: "Microsoft YaHei", cursive;
}

.card {
	border-style: solid;
	border-width: 4px;
	border-color: #D1E9E9;
	background-color: #FFFFF4;
	padding: 6px;
	border-radius: 10px;
	width: 350px;
	height: 500px;
	display: inline-block;
	margin: 14px;
}

.card .content {
	padding: 10px;
	margin: 0 5px;
	/*border: 1px solid black;*/
	border-radius: 10px;
	width: 330px;
	vertical-align: top;
	display: inline-block;
}

.div .inner {
	text-align: justify;
}

.card .content .inner span:first-child {
	font-weight: 700;
}

span {
	font-size: 20px;
	color: #5A5AAD;
}

span.routeName {
	font-size: 23px;
	color: #5A5AAD;
	text-align: center;
	display: block;
}

span.routeIntroduction {
	font-size: 18px;
}

.head {
	width: 330px;
	height: 250px;
}

h2 {
	text-align: center;
	margin: 20px auto;
	letter-spacing: 8px;
}

hr {
	width: 400px;
	/*border:8px dotted #D1E9E9;*/
	border: 0px;
	height: 5px;
	background-image: linear-gradient(to right, rgba(92, 173, 173, 0),
		rgba(92, 173, 173, 0.75), rgba(92, 173, 173, 0));
}

.areaKm {
	padding: 30px;
	border-style: solid;
	border-width: 4px;
	border-color: #D1E9E9;
	margin: 70px auto;
	background-color: #ECFFFF;
	font-size:24px;
}

.search {
	background-color: #5CADAD;
	border-color: #5CADAD;
	margin: 10px auto;
}

.routeImage {
	width: 330px;
	height: 250px;
	border-radius: 10px;
}


</style>


<script>
$(document).ready(function(){
  $("#generate").click(function(){
    $(".card").remove();
    sendRequest();
  });
});
</script>



<script type="text/javascript">
//起始畫面，selectAll
	function appendCard(routeName, startArea, sqRouteId, routeIntroduction){
		var routeIntroductionSplit = routeIntroduction.substring(0,80);
		var containerAll = document.getElementById('card-container');
		//生成div
		var div = document.createElement('div');
		//新增一個class名字為card
		div.classList.add('card');
		//使用innerHTML搭配``，快速新增內部元素
		div.innerHTML =` 
			<div class = 'head'>
				<img  class="card-img-top routeImage" id= `+sqRouteId+` src=""></img>
			</div>
			<div class="card-body content">
				<div class = "inner">
					<span class="routeName">`+routeName+`</span>
				</div>
				<div class = "inner">
					<span>位於縣市：</span>
					<span class="startArea">`+startArea+`</span>
				</div>
 				
				<div class = "inner">
					<span>路線簡介：</span>
					<span class="routeIntroduction">`+routeIntroductionSplit+`</span>
					<a href="<%=request.getContextPath()%>/front-end/route/route.do?sqRouteId=`+sqRouteId+`&routeName=`+routeName+`&action=getOneRoute_For_Display">...詳細介紹</a>
				</div>
			</div>
		`;
		
		//新增到container上
		containerAll.append(div);
	}
	</script>


</head>

<body>
	<%@include file="/front-end/page-file/page-nav"%>
	<h2 style="	margin-top:20px">PAPAGO推薦路線</h2>
	<hr>
	<div class="container">
		<form method="post"
			action="<%=request.getContextPath()%>/front-end/route/route.do">
			<div
				class="row rounded justify-content-center align-items-center areaKm">
				<div class="col-md-2 text-center align-items-center">
					<img alt="Cinque Terre" class="text-center" height="50"
						src="images/point.png" width="50"><br>起點
				</div>
				<div class="col-md-10">
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox1" type="checkbox" value="台北市"> <label
							class="form-check-label" for="inlineCheckbox1">台北市</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox2" type="checkbox" value="新北市"> <label
							class="form-check-label" for="inlineCheckbox2">新北市</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox3" type="checkbox" value="桃園市"> <label
							class="form-check-label" for="inlineCheckbox3">桃園市</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox4" type="checkbox" value="新竹縣,新竹市"> <label
							class="form-check-label" for="inlineCheckbox4">新竹縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox5" type="checkbox" value="苗栗縣"> <label
							class="form-check-label" for="inlineCheckbox5">苗栗縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox6" type="checkbox" value="台中市"> <label
							class="form-check-label" for="inlineCheckbox6">台中市</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox7" type="checkbox" value="南投縣"> <label
							class="form-check-label" for="inlineCheckbox7">南投縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox8" type="checkbox" value="彰化縣"> <label
							class="form-check-label" for="inlineCheckbox8">彰化縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox9" type="checkbox" value="雲林縣"> <label
							class="form-check-label" for="inlineCheckbox9">雲林縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox10" type="checkbox" value="嘉義縣"> <label
							class="form-check-label" for="inlineCheckbox10">嘉義縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox11" type="checkbox" value="台南市"> <label
							class="form-check-label" for="inlineCheckbox11">台南市</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox12" type="checkbox" value="高雄市"> <label
							class="form-check-label" for="inlineCheckbox12">高雄市</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox13" type="checkbox" value="屏東縣"> <label
							class="form-check-label" for="inlineCheckbox13">屏東縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox14" type="checkbox" value="宜蘭縣"> <label
							class="form-check-label" for="inlineCheckbox14">宜蘭縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox15" type="checkbox" value="花蓮縣"> <label
							class="form-check-label" for="inlineCheckbox15">花蓮縣</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" name="selArea"
							id="inlineCheckbox16" type="checkbox" value="台東縣"> <label
							class="form-check-label" for="inlineCheckbox16">台東縣</label>
					</div>
				</div>
				
				<div class="row">
					<button class="btn btn-primary rounded-pill search" type="button"
						id="generate">
						<img
							src="images/%E6%94%BE%E5%A4%A7%E9%8F%A1(%E5%B7%B2%E5%8E%BB%E5%BA%95).jpeg"
							width="20">搜尋
					</button>
					<!-- <img alt="Cinque Terre" class="text-center" height="50" src="images/%E8%B7%AF%E7%B7%9A%E8%A6%8F%E5%8A%83%E5%8E%BB%E8%83%8C.png" width="50">
             <input type="submit" class="btn btn-info rounded-pill" value="搜尋"> -->
					<input type="hidden" name="action" value="selectByCondition">
				</div>
			</div>
			<div class="row justify-content-end">
				<a href='<%=request.getContextPath()%>/front-end/route/setRouteBySelf.jsp' class="btn btn-info" role="button">自訂路線</a>
				
			</div>
			<div >
				<div class="row" id="card-container"></div>
			</div>
	</div>
		
	</form>


	<%@include file="/front-end/page-file/page-footer"%>
	<%-- 		<%@ include file="pages/page1.file" %>  --%>
	<%-- 		<c:forEach var="routeVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
	<c:forEach var="routeVO" items="${list}">
		<script type="text/javascript">
			if(${routeVO.addRoute} === 1){
				appendCard(`${routeVO.routeName}`, `${routeVO.startArea}`, `${routeVO.sqRouteId}`,
						`${routeVO.routeIntroduction}`);
				
				document.getElementById('${routeVO.sqRouteId}').src = 
					"<%=request.getContextPath() %>/front-end/route/route.img?SQ_ROUTE_ID=${routeVO.sqRouteId}";
			}	
			</script>

	</c:forEach>





	<script type="text/javascript">
		
		
			

			//寫一個函式，可以送出AJAX請求
			function sendRequest() {
				//new一個XMLHttpRequest物件
				var xhr = new XMLHttpRequest();
				
				//在xhr物件上監聽readystatechange的事件
				xhr.addEventListener('readystatechange', function(){
					//判斷xhr.readyState是否為4?
					if(xhr.readyState === 4) {
						//判斷xhr.status(狀態碼)是否為200?
						if(xhr.status === 200) {
							
							//將文字轉成JSON
							var obj = JSON.parse(xhr.responseText);
							//取得各項參數
// 							console.log(Object.keys(obj.rouVO).length);
							var routeName, startArea, sqRouteId, routeIntroduction;
							for(i=0; i<Object.keys(obj.rouVO).length; i++){
								if(obj && obj.rouVO && obj.rouVO[i]) {
									var res = obj.rouVO[i];
									routeName = res.routeName;
									startArea = res.startArea;
									sqRouteId = res.sqRouteId;
									console.log(sqRouteId);
									routeIntroduction = res.routeIntroduction;
									//在Card-container上新增元素
									appendCard(routeName, startArea, sqRouteId, routeIntroduction);
									document.getElementById(sqRouteId).src = 
										"<%=request.getContextPath() %>/front-end/route/route.img?SQ_ROUTE_ID="+sqRouteId;
									
									
								}else {
									alert('AJAX Error! Status Code: ' + xhr.status);
								}			
							}
						}
					}
				});

				var selAreaAll = document.getElementsByName("selArea");
				var selAreaList = [];
				
				for(i=0;i<selAreaAll.length;i++){
			　	    if ( selAreaAll[i].checked ) {
					　	selAreaList.push(selAreaAll[i].value);
					}
			　	}    
				
				//開啟對伺服器端的連結 xhr.open(type, url, async)
				xhr.open('get', '<%=request.getContextPath()%>/front-end/route/route.do?action=selectByCondition&selAreaList='+selAreaList, true);

				//送出AJAX請求 xhr.send(content)
				xhr.send();
			}

		
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js">
		
	</script>

</body>
</html>