<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.routeDetail.model.*"%>
<%@ page import="java.util.*"%>

<%																					
	List<RouteDetailVO> list = (List<RouteDetailVO>)request.getAttribute("rouDeVO");
	System.out.println("list:"+list.size());
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">

<link type="text/css" rel="stylesheet" href="css/rcswitcher.min.css">

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://www.google.com/jsapi"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvudQDQiM5qr9HdAgxTEbCJsgCU4mDoo8&libraries=&v=weekly"></script>

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
<title>推薦路線細節頁面</title>
<style media="screen" type="text/css">


#map {
	height: 600px;
	width: 1100px;
}

label{
	display: inline-block;
	width: 50px;
	color: #888;
}

.block {
	width: 152px;
	background: #ededed;
	padding: 4px 10px;
	float: left;
	/*height: 300px;*/
	margin: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}
#nameIntro{
	font-size:x-large;
}




</style>

</head>

<body onload="initMap()" bgcolor='white'>
<%@include file="/front-end/page-file/page-nav"%>

<div class="container">
	<div class="row">
		<div class="permissions block">
		<label >補水站</label><input type="checkbox" name="access_cp" value="access_cp">
		<label >租車點</label><input type="checkbox" name="manage_users" value="manage_users">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		<div class="" id="map"></div>
		</div>
	</div>
	<br><br><br>
	<div class="row">
		<div class="col-md-12">

			<table class="table table-hover">
				<c:forEach var="rouDeVO" items="${list}">
					<tr>
						
						<td>
						<img alt=""
							src="<%=request.getContextPath()%>/front-end/route/step.img?SQ_SERIAL_NUMBER=${rouDeVO.sqSerialNo}"
							style="width: 400px; height: 280px">  												   
						</td>
						
						<td id="nameIntro">${rouDeVO.stepName}
						<br>${rouDeVO.stepIntroduction}</td>
					</tr>
				</c:forEach>
	
			</table>
		</div>
	</div>	
</div>
	
	
<%@include file="/front-end/page-file/page-footer"%>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="js/rcswitcher.js"></script>
	
	
	<jsp:useBean id="waterStationSvc" scope="page" class="com.waterStation.model.WaterStationService" />
	<script>
		var map;
		var markers = [];
		var position = [
			<c:forEach var="wsVO" items="${waterStationSvc.all}" > 
			    {label : '${wsVO.stationName}',
	        	lat : ${wsVO.latitude},
	        	lng : ${wsVO.longitude}},
        	</c:forEach>
		];
		console.log(position);
		
// 		var label = wsVO.stationName
// 		var position = [ {
// 			label : 'A',
// 			lat : 25.0336962,
// 			lng : 121.5643673
// 		}, {
// 			label : 'B',
// 			lat : 25.0333698,
// 			lng : 121.5641564
// 		} ];

		function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
				zoom : 14,
				center : {
					lat : 24.969367,
					lng : 121.190733
				}
			});
		}
		
		
		//滑動式開關
		$('.permissions :checkbox').rcSwitcher({
					// reverse: true,
					// inputs: true,
					width: 44,
					height: 16,
					blobOffset: 2,
					onText: 'YES',
					offText: 'NO',
					theme: 'dark',
					// autoFontSize: true,
					autoStick: true,

				});

		
		//開關式的放入標點
		function go() {
			clearMarkers();
			for (var i = 0; i < position.length; i++) {
				addMarker(i);
			}
		}
		//新增標點方法
		function addMarker(e) {
			setTimeout(function() {
				markers.push(new google.maps.Marker({
					position : {
						lat : position[e].lat,
						lng : position[e].lng
					},
					map : map,
					//label: position[e].label,
					animation : google.maps.Animation.DROP
				}));
			}, e * 1);
		}
		function clearMarkers() {
			for (var i = 0; i < markers.length; i++) {
				if (markers[i]) {
					markers[i].setMap(null);
				}
			}
			markers = [];
		}
	</script>
	

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js">
		
	</script>
	</div>
</body>
</html>