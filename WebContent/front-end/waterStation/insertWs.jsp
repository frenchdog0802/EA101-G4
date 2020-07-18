<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">

<link type="text/css" rel="stylesheet" href="css/rcswitcher.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://www.google.com/jsapi"></script>
<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvudQDQiM5qr9HdAgxTEbCJsgCU4mDoo8&libraries=&v=weekly"></script>

<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<!-- Bootstrap CSS -->
<link	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"	rel="stylesheet">
<title>補水站新增頁面</title>
<style media="screen" type="text/css">
#map {
	height: 750px;
	width: 1920px;
}

h2 {
	text-align: center;
	margin: 40px auto;
	letter-spacing: 8px;
	margin-top:20px;
}

hr {
	width: 400px;
	/*border:8px dotted #D1E9E9;*/
	border: 0px;
	height: 5px;
	background-image: linear-gradient(to right, rgba(92, 173, 173, 0),
		rgba(92, 173, 173, 0.75), rgba(92, 173, 173, 0));
}

label {
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

</style>

</head>



<body onload="initMap()" bgcolor='white'>
	<%@include file="/front-end/page-file/page-nav"%>

	<h2 style="	margin-top:20px">全台補水站&租車點</h2>
	<hr>	


	<div class="container-fluid">
		<div class="row justify-content-end">
			<div class="permissions block">
				<label>補水站</label><input type="checkbox" id="checkboxWs"
					name="access_cp" value="access_cp">
			</div>
			<div class="permissions block">
				<label>租車點</label><input type="checkbox" id="checkboxRent"
					name="manage_users" value="manage_users">
			</div>
			
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="" id="map"></div>
			</div>
		</div>
	</div>



	<%@include file="/front-end/page-file/page-footer"%>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js"
		type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="js/rcswitcher.js"></script>
	<script type="text/javascript" src="js/rcswitcherR.js"></script>


	<jsp:useBean id="waterStationSvc" scope="page"
		class="com.waterStation.model.WaterStationService" />
		
	<jsp:useBean id="bikeStoreSvc" scope="page"
 		class="com.bike.store.model.BikeStoreService" /> 
	<script>
	
	
	
	//補水站點
	var map;
	var markersWs = [];
	var positionWs = [];
		<c:forEach var="wsVO" items="${waterStationSvc.all}" >
			if(${wsVO.addStation} === 1){
				positionWs.push(
					{label : '${wsVO.stationName}',
					 businessHours : '${wsVO.businessHours}',
					 stationAddress : '${wsVO.stationAddress}',
					 sqStationId : '${wsVO.sqStationId}',
			         lat : ${wsVO.latitude},
			       	 lng : ${wsVO.longitude}},
			    )
			}
        </c:forEach>
    console.log(positionWs);
	
	
	//租車站點
	var markersR = [];
	var positionR = [
		<c:forEach var="BikeStoreVO" items="${bikeStoreSvc.all}" > 
			{label : '${BikeStoreVO.bike_store_name}',
			 phone : '${BikeStoreVO.phone}',
			 location : '${BikeStoreVO.location}',
			 sq_bike_store_id : '${BikeStoreVO.sq_bike_store_id}',
	         lat : ${BikeStoreVO.store_latitute},
	       	 lng : ${BikeStoreVO.store_longitute}},
        </c:forEach>
	];

	function initMap() {
	    // 初始化地圖
	    map = new google.maps.Map(document.getElementById('map'), {
	    	zoom : 14,
	        center: { lat : 24.969367,
					  lng : 121.190733 }
	    });
	    // 在地圖上放入資訊視窗
	    var infowindow = new google.maps.InfoWindow();
	    
	  //map的滑鼠點擊事件
		map.addListener('click', function(e) {
		    // 點擊時獲取滑鼠的經緯度座標
			var coordinate = {lat: e.latLng.lat(), lng: e.latLng.lng()};
		    console.log("coordinate:"+coordinate);
		    console.log(e.latLng.lat());
		    console.log(e.latLng.lng());
		    var geocoder = new google.maps.Geocoder();
		    geocoder.geocode({'latLng': coordinate }, function(results, status) {
		    	  if (status === google.maps.GeocoderStatus.OK) {
		    	    // 如果有資料就會回傳
		    	    if (results) {
		    	      console.log(results[0]);
		    	    }
		    	  }
		    	  // 經緯度資訊錯誤
		    	  else {
		    	    alert("Reverse Geocoding failed because: " + status);
		    	  }
				  console.log(results[0].formatted_address);
				  
				// 將資訊視窗的位置，設定為滑鼠的座標
					infowindow.setPosition(coordinate);
					

					
					// 設定資訊視窗的內容為行政區名稱
					infowindow.setContent(
							'<FORM METHOD="post" ACTION="water.do" name="form1" onsubmit="return checkSubmit()" enctype="multipart/form-data">'+
								'<table>'+
									'<tr>'+
										'<td>補給站名稱：</td>'+
										'<td><input type="TEXT" name="stationName" id="stationName" size="45"/></td>'+
									'</tr>'+
									'<tr>'+
										'<td>補給站營業時間：</td>'+
										'<td><input type="TEXT" name="businessHours" id="businessHours" size="45"" /></td>'+
									'</tr>'+
									'<tr>'+
										'<td>補給站照片：</td>'+
										'<td><input id="file" type="file" name="stationImage" size="45"/>'+
										'<br><img id="demo" style="width:150px; height:150px;"/></td>'+
									'</tr>'+
									'<input type="hidden" name="stationAddress" class="stationAddress" value="">'+
									'<input type="hidden" name="longitude" class="longitude" value="">'+
									'<input type="hidden" name="latitude" class="latitude" value="">'+
									'<input type="hidden" name="country" value="台灣">'+
									'<input type="hidden" name="area" class="area" value="">'+
									'<input type="hidden" name="checkFlag" value="0">'+
									'<input type="hidden" name="addStation" value="0">'+
								'</table>'+					
								'<br> <input type="hidden" name="action" value="insert"> <input	type="submit" onclick="return setVal()" value="送出新增">'+
							'</FORM>'
					);
					
					$(document).ready(function() {
						console.log(results[0]['formatted_address']);
					    $('.area').each(function() {
			                if ($(this).val() === '') {
			                  $(this).val(results[0]['formatted_address']);
			                  return false;
			                }
			            });
					    $('.stationAddress').each(function() {
			                if ($(this).val() === '') {
			                  $(this).val(results[0]['formatted_address']);
			                  return false;
			                }
			            });
					    $('.longitude').each(function() {
			                if ($(this).val() === '') {
			                  $(this).val(e.latLng.lng());
			                  return false;
			                }
			            });
					    $('.latitude').each(function() {
			                if ($(this).val() === '') {
			                  $(this).val(e.latLng.lat());
			                  return false;
			                }
			            });
					    
					    
					    
					});
					
					// 將資訊視窗打開在地圖上
					infowindow.open(map);
					
					$(document).ready(function() {
						$('#file').change(function() {
							var file = $('#file')[0].files[0];
							var reader = new FileReader;
							reader.onload = function(e) {
								$('#demo').attr('src', e.target.result);
							};
							reader.readAsDataURL(file);
						});
					});	
					
		   		});	
			 
					
		    });
	
		
		

	}
	
	//補水站新增欄位檢查
	function setVal(){
        $(document).ready(function() {	
        	if($('#stationName').val() === '' || $('#businessHours').val() === '' || typeof $('#demo').attr("src") === "undefined"){
                window.alert("請輸入補水站名稱、時間及站點圖片");
                return false;
        	}else{
          	  
          	  return true;
            }
        })
    }
	
	var checkSubmitFlg = false;
	function checkSubmit(){
		if(checkSubmitFlg ==true){ 
			return false; //當表單被提交過一次後checkSubmitFlg將變為true,根據判斷將無法進行提交。
		}
		checkSubmitFlg ==true;
		return true;
	}
	
	
		
		//補水站滑動式開關
		$('#checkboxWs').rcSwitcher({
					// reverse: true,
					// inputs: true,
// 					width: 44,
// 					height: 16,
// 					blobOffset: 2,
// 					onText: 'YES',
// 					offText: 'NO',
// 					theme: 'dark',
					// autoFontSize: true,
					autoStick: true,

		});

		
		//開關式的放入補水站標點
		function goWs() {
			clearMarkersWs();
			for (var i = 0; i < positionWs.length; i++) {
				addMarkerWs(i);
			}
		}
		var a = -1;
		var markerWs = [];
		//新增補水站標點方法
		function addMarkerWs(e) {
			setTimeout(function() {
				markerWs = markersWs.push(new google.maps.Marker({
					position : {
						lat : positionWs[e].lat,
						lng : positionWs[e].lng
					},
					map : map,
					//label: positionWs[e].label,
					animation : google.maps.Animation.DROP,
// 					icon:'https://img.icons8.com/officexs/16/000000/bottle-of-water.png'
					icon:'https://img.icons8.com/ultraviolet/40/000000/bottle-of-water.png'
				}));

	console.log(positionWs[e].sqStationId);
			var infowindow = new google.maps.InfoWindow({
			    content: '補水站名稱：'+positionWs[e].label+
			    		 '<br>'+'營業時間：'+positionWs[e].businessHours+
			    		 '<br>'+'地址：'+positionWs[e].stationAddress+
						 '<br>圖片：<img id="demo" src="<%=request.getContextPath()%>/back-end/waterStation/water.stationImage?SQ_STATION_ID='+positionWs[e].sqStationId+'"'+'style="width: 150px; height: 150px">', 
						 
			    		 
			    position: {
					lat : positionWs[e].lat,
					lng : positionWs[e].lng
				}
							
			});
			
			addLis(markersWs,map,infowindow,e);
			
			
			}, e * 1);
		}
		
		//清除補水站標點方法
		function clearMarkersWs() {
			for (var i = 0; i < markersWs.length; i++) {
				if (markersWs[i]) {
					markersWs[i].setMap(null);
				}
			}
			markersWs = [];
		}
		
		
		//租車點滑動式開關
		$('#checkboxRent').rcSwitcherR({
					// reverse: true,
					// inputs: true,
// 					width: 44,
// 					height: 16,
// 					blobOffset: 2,
// 					onText: 'YES',
// 					offText: 'NO',
// 					theme: 'dark',
					// autoFontSize: true,
					autoStick: true,

		});

		
		//開關式的放入租車點標點
		function goR() {
			clearMarkersR();
			for (var i = 0; i < positionR.length; i++) {
				addMarkerR(i);
			}
		}

		var markerR = [];
		//新增租車點標點方法
		function addMarkerR(e) {

			setTimeout(function() {
				markerR = markersR.push(new google.maps.Marker({
					position : {
						lat : positionR[e].lat,
						lng : positionR[e].lng
					},
					map : map,
					//label: positionWs[e].label,
					animation : google.maps.Animation.DROP,
// 					icon:'https://img.icons8.com/material-two-tone/24/000000/bike-path.png'
					icon:'https://img.icons8.com/ios/50/000000/bicycle.png'
				}));
				
				
				var infowindow = new google.maps.InfoWindow({
				    content: positionR[e].label,
				    content: '租車店名稱：'+positionR[e].label+
				    		 '<br>'+'連絡電話：'+positionR[e].phone+
				    		 '<br>'+'地址：'+positionR[e].location+
							 '<br>圖片：<img id="demo" src="<%=request.getContextPath()%>/bike/BikeStoreDBReader.do?sq_bike_store_id='+positionR[e].sq_bike_store_id+'"'+'style="width: 150px; height: 150px">', 
					 
				    position: {
						lat : positionR[e].lat,
						lng : positionR[e].lng
					}
				});
				
				
				addLis(markersR,map,infowindow,e);
				
				
			}, e * 0.1);
			
			
			
		}
		//清除租車點標點方法
		function clearMarkersR() {
			for (var i = 0; i < markersR.length; i++) {
				if (markersR[i]) {
					markersR[i].setMap(null);
				}
			}
			markersR = [];
		}
		
		function addLis(array,routeMap,infowindow,i){
			console.log("enter");
			array[i].addListener("click", function() {
	          infowindow.open(routeMap, array[i]);
	        });
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