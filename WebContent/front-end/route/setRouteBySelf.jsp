<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.route.model.*"%>

<%
	RouteVO rouVO = (RouteVO) request.getAttribute("rouVO");
%>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache" /> 
<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport"><!-- Bootstrap CSS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<link type="text/css" rel="stylesheet" href="css/rcswitcher.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />

<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<!-- Bootstrap CSS -->
<link	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"	rel="stylesheet">
 

 <title>自訂路線頁面</title>
<style media="screen" type="text/css">
  body{
    font-family: "Helvetica", "Arial","LiHei Pro","黑體-繁","微軟正黑體", sans-serif;
  }
  #map_canvas {
   height: 800px;
   width: 100px;
   margin-top: 20px;
 }
 
 div.spot{
   width: 280px;
 }
 
 label.b{
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
	margin: 0px 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}
 
</style>


<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://www.google.com/jsapi"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvudQDQiM5qr9HdAgxTEbCJsgCU4mDoo8&libraries=&v=weekly" ></script>


<!--  <%--上面的key 要依自己的帳號跟網站向 Google maps 去申請--%> -->
<script type = "text/javascript" >

  var markers = [];
  var map;
  function initMap() {
   map = new google.maps.Map(document.getElementById('map_canvas'), {
     zoom: 13,
     center: {lat: 24.969367, lng: 121.190733}
      }); // 預設顯示地圖的座標與放大比例
  }

  
  


  //規劃路線
  var routeMap;
  function route(data) {

   var directionsService = new google.maps.DirectionsService();
   var directionsRenderer = new google.maps.DirectionsRenderer({
      suppressMarkers: true
     });
   routeMap = new google.maps.Map(document.getElementById("map_canvas"), {
     zoom: 10,
     center: { lat: data['results'][0].location.lat, lng: data['results'][0].location.lng }
   });
   directionsRenderer.setMap(routeMap);
   var waypts = [];
   var stepLen = data['results'].length;
   var destination = data['results'].length-1;
	    if(data['results'].length>2){ // 當有三點時，才會有需要停留點的需求
        for (var i = 0; i < stepLen-2; i++) {
		      waypts.push({ // 將頭尾都去掉，只PUSH中間的點
            location: { lat: data['results'][i+1].location.lat, lng: data['results'][i+1].location.lng },
            stopover: true
          });
		    }
      }

      directionsService.route(
      {
        origin: data['results'][0].step,
        destination: data['results'][destination].step,
        waypoints: waypts,
        optimizeWaypoints: false,
        travelMode: "BICYCLING"
      },   
      function(response, status) {
        if (status === "OK") {
          directionsRenderer.setDirections(response);
          var route = response.routes[0];
          var dis = 0;
		        // 計算總距離(官方單位:公尺)
		        for (var i =0; i < route.legs.length; i++) {
              dis += route.legs[i].distance.value ; 
            }
            $("#dis").val((dis/1000));
            $("#dis").attr("value", (dis/1000));
          }else {
            window.alert("Directions request failed due to " + status);
          }
        }
      );
      // infoWindow(data,routeMap);
      
      for (var i =0; i < stepLen; i++) {   
        var alphabet = String.fromCharCode(65+i); // A的ANSI就是65

        markers[i] = new google.maps.Marker({
          position: 
            {lat: data['results'][i].location.lat,
            lng: data['results'][i].location.lng},
          map: routeMap,
          label:alphabet
        });

       
       
      var textHtml = '<div class="Data-Content" id="dataContent'+i+'" style="width: 350px; line-height: 40px">'+
          '<div class="Data-Title" style="float: left; width: 25%; margin-right: 20px;">'+
          '<div class="AlignRight" style="text-align: right">'+
            '<label>停留點圖片：</label><br/>'+
            '<label></label><br/>'+
            '<label></label><br/>'+
            '<label></label><br/>'+
            '<label></label><br/>'+
            '<label >停留點簡介：</label><br />'+
          '</div>'+
          '</div>'+
          '<div class="Data-Items" style="float: left; width: 25%;">'+
          '<input id=stepImg'+i+' type="file" onclick="return changeSetImg('+i+')" onchange="showImg('+i+')" name="stepImg" size="45"/>'+
          '<img id=demo'+i+' style="width:150px; height:150px;"/>'+
          '<textarea class="stepIntro" id=stepIntro'+i+'></textarea><br />'+
          '<button type="button" onclick="setVal('+i+')">送出</button>'+
          '</div>'+
          '</div>';

        infowindow = new google.maps.InfoWindow({
          content: textHtml
        });
       
        addLis(routeMap,infowindow,i);

      }
      elevation(data);
    }
  
  	function changeSetImg(i){
	  $("#stepImgFinal"+i).trigger("click");
	  window.addEventListener('click', function() {
	      showImg(i);
	    });
	  return false;
 	}
  
	//stepImg alert圖片預覽方法
     function showImg(i){
        var stemImgTar = "#stepImgFinal" + i;
        var file = $(stemImgTar)[0].files[0];
        var reader = new FileReader;
        reader.onload = function(e) {
          $('#demo'+i).attr('src', e.target.result);
        };
        reader.readAsDataURL(file);
     }
    
	
	
	
	
     function addLis(routeMap,infowindow,i){
        markers[i].addListener("click", function() {
          infowindow.open(routeMap, markers[i]);
        });

     }

     //將地圖上的infoWindow資訊存入各個點位的value
      function setVal(i){
        $(document).ready(function() {
        	
        
        	
        	if($('#stepIntro'+i).val() === '' || typeof $('#demo'+i).attr("src") === "undefined"){
                window.alert("請輸入停留點相關圖片及介紹");
                return false;
            }
	          var stepIntro = $('#stepIntro'+i).val();
	          $('#stepIntroFinal'+i).attr("value",stepIntro);
	          
	          
	          
	          $(".gm-ui-hover-effect").trigger("click");
        })
      }
     
     
     
     
     
     

    //查詢海拔高度
    function elevation(data){
      (function(exports) {
        "use strict";

        // Load the Visualization API and the columnchart package.
        google.load("visualization", "1", {
          packages: ["columnchart"]
        });

        initMap() ;

        function initMap() {
          // The following path marks a path from Mt. Whitney, the highest point in the
          // continental United States to Badwater, Death Valley, the lowest point.
          var path = [];
          var stepLen = data['results'].length;
          for (var i = 0; i < stepLen; i++) {
            path.push({lat: data['results'][i].location.lat, lng: data['results'][i].location.lng})
          }
             // Badwater, Death Valley

          var elevator = new google.maps.ElevationService(); // Draw the path, using the Visualization API and the Elevation service.

          displayPathElevation(path, elevator);
        }

        function displayPathElevation(path, elevator) {
          // Display a polyline of the elevation path.
          new google.maps.Polyline({
            path: path,
            strokeColor: "#0000CC",
            strokeOpacity: 0.4
          }); // Create a PathElevationRequest object using this array.
          // Ask for 256 samples along that path.
          // Initiate the path request.

          elevator.getElevationAlongPath(
            {
              path: path,
              samples: 256
            },
            plotElevation
          );
        } 
        // Takes an array of ElevationResult objects, draws the path on the map
        // and plots the elevation profile on a Visualization API ColumnChart.
        //畫出海拔高度
        function plotElevation(elevations, status) {
          var chartDiv = document.getElementById("elevation_chart");

          if (status !== "OK") {
            // Show the error code inside the chartDiv.
            chartDiv.innerHTML =
              "Cannot show elevation: request failed because " + status;
            return;
          } // Create a new chart in the elevation_chart DIV.

          var chart = new google.visualization.ColumnChart(chartDiv); // Extract the data from which to populate the chart.
          // Because the samples are equidistant, the 'Sample'
          // column here does double duty as distance along the
          // X axis.

          var data = new google.visualization.DataTable();
          data.addColumn("string", "Sample");
          data.addColumn("number", "Elevation");

          for (var i = 0; i < elevations.length; i++) {
            data.addRow(["", elevations[i].elevation]);
          } 
          // Draw the chart using the data within its DIV.
          chart.draw(data, {
            height: 150,
            width: 1100,
            legend: "none",
            
            titleY: "Elevation (m)",
            titleYTextStyle: { color: '#0b9727',fontSize:15,italic:false }
          });
        }

        exports.displayPathElevation = displayPathElevation;
        exports.plotElevation = plotElevation;
      })((this.window = this.window || {}));
    }

    //搜尋地點地址
    function showAddress(address) {
     if(address === ''){
      window.alert("請輸入正確地址或地標");
      return false;
    }

    var geocoder = new google.maps.Geocoder();
    var map = new google.maps.Map(document.getElementById('map_canvas'), {
      zoom: 17
    });

    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == 'OK') {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
          map: map,

          position: results[0].geometry.location
        });
console.log(results);
          //當新增鈕被按下時，觸動
          $(document).ready(function() {
                $("#addLoc").unbind("click"); //清除前次按鈕的記憶內容
                $("#addLoc").click(function() {
                  if($("#address").val() === ''){
                    window.alert("請輸入正確地址或地標");
                    return false;
                  }

                  if($("#address").val() != address){
                    window.alert("輸入地址或地標後，請先按下搜尋再進行新增");
                    return false;
                  }

                  var confirmFlag = true;
                  $('.step').each(function() {
                    if($(this).val() == address){
                     if (confirm("U have the same loaction in options,plz confirm this action")) {

                     } else {
							confirmFlag = false; // Jquery 只能透過設置外部函數觸發false break for loop
              return false;
            }
						return false; // 防止兩個以上的點詢問多次
					}
				});
                  if(confirmFlag == false){
                   return false;
                 }

                 $('.step').each(function() {
                  if ($(this).val() === '') {
                    $(this).attr("value", address);
                    return false;
                  }
                });


                 $('.lat').each(function() {
                  if ($(this).val() === '') {
                    $(this).attr("value", results[0].geometry.location.lat());
                    return false;
                  }
                });

                 $('.lng').each(function() {
                  if ($(this).val() === '') {
                    $(this).attr("value", results[0].geometry.location.lng());
                    return false;
                  }
                });


                 $('.area').each(function() {
                  if ($(this).val() === '') {
                    $(this).attr("value", results[0]['formatted_address']);
                    return false;
                  }
                });




                    //將各個點的value取出，排列成JSON
                    var data = {
                      results: []
                    }; //最後打包完成的JSON檔
                    var array = {
                      location: {}
                    }; //將經緯度放入
                    var stepArr = [];
                    var latArr = [];
                    var lngArr = [];

                    $(".step").each(function() {
                      if($(this).val() === ''){
                        return true;
                      }
                      stepArr.push($(this).val());
                    })
                    $(".lat").each(function() {
                      if($(this).val() === ''){
                        return true;
                      }
                      latArr.push($(this).val());
                    })
                    $(".lng").each(function() {
                      if($(this).val() === ''){
                        return true;
                      }
                      lngArr.push($(this).val());
                    })

                    for (var i = 0; i < stepArr.length; i++) { //stepArr的長度等於有幾組(幾個點位)
                      if ($('.step').val() != '') {
                        array.location["lat"] = parseFloat(latArr[i]);
                        array.location["lng"] = parseFloat(lngArr[i]);
                        array.step = stepArr[i];
                        data.results.push(
                          {"location":{"lat": array.location["lat"],
                          "lng": array.location["lng"]},
                          "step": array.step}
                        ); //將最後所產生的JSON檔在打包進results{[]}
                      }
                    }
                    
                    
                    // console.log(data.results.length);
                    if(data['results'].length>1){
                    	route(data);

                    }
                    
                  });
              });
        } else {
         window.alert("Directions request failed due to " + status);
       }
     });
}




</script>    
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
</head>

<body onload="initMap()" >
<%@include file="/front-end/page-file/page-nav"%>
 <div class="container">
   <!-- <div class=row> -->
    <!-- <div class="col-md-12"> -->


     <form role="form" action="" method="" accept-charset="utf-8" onsubmit="showAddress(this.address.value); return false">
      <p>
       <div class="input-group form-group">
        <input type="text" name="address" id="address" class="form-control" placeholder="地址/地標" aria-label="Recipient's username" aria-describedby="basic-addon2">
        <div class="input-group-append">
         <button class="btn btn-outline-secondary" id="search" type="submit">搜尋</button>

         <button class="btn btn-outline-secondary" id="addLoc" type="button">新增</button>
       </div> 
     </div> 
   </p>
 </form>
 <FORM METHOD="post" ACTION="route.do" name="form1"
		enctype="multipart/form-data">
 <div class="row" style="display: flex">
   <div class="col-md-10 input-group form-group" style="font-size: x-large" >
    路線名稱：<input type="text" name="routeName" value="" class="routeName form-control" id="routeName" style="font-size: x-large">
    <div class="w-100"></div>
    路線簡介：<textarea class="routeIntro" id="routeIntro" name="routeIntro" style="width:800px; height:100px; resize : none; margin-top: 10px"></textarea>
  </div>
  <div class="col-md-2 input-group form-group text-center" style="font-size: x-large" >
    <input id="routeImg" class="routeImg" type="file" name="routeImg" onchange="demoImg()" size="45"/>
    <img id="demo" style="width:170px; height:100px;"/>

  </div>
</div>

<div class="row justify-content-end">
	<div class="permissions block">
		<label><b>補水站</b></label><input type="checkbox" id="checkboxWs"
					name="access_cp" value="access_cp">
	</div>
	<div class="permissions block">
		<label><b>租車點</b></label><input type="checkbox" id="checkboxRent"
					name="manage_users" value="manage_users">
	</div>
</div>


<div class="row">
  <div class="col-md-3 input-group form-group">
   <div class="spot" style="font-size: x-large" >路線規劃：
    <br>
   
    <label class="form-inline" />地點A：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal0" class="stepImg" name="stepImg0" value="" type="file"  style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal0" value="" type="hidden">

    <label class="form-inline" />地點B：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal1" class="stepImg" name="stepImg1" value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal1" value="" type="hidden">

    <label class="form-inline" />地點C：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal2" class="stepImg" name="stepImg2" value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal2" value="" type="hidden">

    <label class="form-inline" />地點D：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal3" class="stepImg" name="stepImg3"  value=""  type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal4" value="" type="hidden">

    <label class="form-inline" />地點E：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal4" class="stepImg" name="stepImg4"  value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal4" value="" type="hidden">

    <label class="form-inline" />地點F：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal5" class="stepImg" name="stepImg5"  value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal5" value="" type="hidden">

    <label class="form-inline" />地點G：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal6" class="stepImg" name="stepImg6"  value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal6" value="" type="hidden">

    <label class="form-inline" />地點H：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal7" class="stepImg" name="stepImg7"  value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal7" value="" type="hidden">

    <label class="form-inline" />地點I：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal8" class="stepImg" name="stepImg8"  value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal8" value="" type="hidden">

    <label class="form-inline" />地點J：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <input id="stepImgFinal9" class="stepImg" name="stepImg9"  value="" type="file" style="display:none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal9" value="" type="hidden">
    
    <input type="hidden" name="checkFlag" value="0">
	<input type="hidden" name="addRoute" value="0">
    
    
  </div>
</div>
  <div class="col-md-9" id="map_canvas"></div>
</div>
<div class="row">
  <div class="col-md-12"> 
    <div id="elevation_chart"></div> 
  </div>
</div>
<div class="row">
  <div class="col-md-6" > 
    <label class="form-inline" style="font-size: xx-large" />總距離：
    <input name="dis" id="dis" class="dis form-control" value="" type="text" readonly>公里</label>
  </div>
  <div class="col-md-6"> 
     <input type="hidden" name="action" value="insert">
     <input id="btnSend" class="btn btn-outline-secondary float-right" type="submit" onclick="return checkinfor()" value="送出">
     
  </div>
</div>
</FORM>
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
	var markersWs = [];
	var positionWs = [
		<c:forEach var="wsVO" items="${waterStationSvc.all}" > 
			{label : '${wsVO.stationName}',
	        lat : ${wsVO.latitude},
	       	lng : ${wsVO.longitude}},
	    </c:forEach>
	];
	

	//租車站點
	var markersR = [];
	var positionR = [
		<c:forEach var="BikeStoreVO" items="${bikeStoreSvc.all}" > 
			{label : '${BikeStoreVO.bike_store_name}',
	        lat : ${BikeStoreVO.store_latitute},
	       	lng : ${BikeStoreVO.store_longitute}},
	    </c:forEach>
	];

	//補水站滑動式開關
	$('#checkboxWs').rcSwitcher({
				// reverse: true,
				// inputs: true,
//					width: 44,
//					height: 16,
//					blobOffset: 2,
//					onText: 'YES',
//					offText: 'NO',
//					theme: 'dark',
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

	var markerWs = [];
	//新增補水站標點方法
	function addMarkerWs(e) {
		setTimeout(function() {
			markerWs = markersWs.push(new google.maps.Marker({
				position : {
					lat : positionWs[e].lat,
					lng : positionWs[e].lng
				},
				map : routeMap,
				//label: positionWs[e].label,
				animation : google.maps.Animation.DROP,
				icon:'https://img.icons8.com/officexs/16/000000/bottle-of-water.png'
			}));


		var infowindow = new google.maps.InfoWindow({
		    content: positionWs[e].label,
		    position: {
				lat : positionWs[e].lat,
				lng : positionWs[e].lng
			}
		});
		
		addLisCheckbox(markersWs,map,infowindow,e);
		
		
		}, e * 0.1);
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
//					width: 44,
//					height: 16,
//					blobOffset: 2,
//					onText: 'YES',
//					offText: 'NO',
//					theme: 'dark',
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
				map : routeMap,
				//label: positionWs[e].label,
				animation : google.maps.Animation.DROP,
				icon:'https://img.icons8.com/material-two-tone/24/000000/bike-path.png'
			}));
			
			
			var infowindow = new google.maps.InfoWindow({
			    content: positionR[e].label,
			    position: {
					lat : positionR[e].lat,
					lng : positionR[e].lng
				}
			});
			
			
			addLisCheckbox(markersR,map,infowindow,e);
			
			
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
		
		function addLisCheckbox(array,routeMap,infowindow,i){
			console.log("enter");
			array[i].addListener("click", function() {
	          infowindow.open(routeMap, array[i]);
	        });
	   	}






  function demoImg(){
      var file = $('#routeImg')[0].files[0];
      var reader = new FileReader;
      reader.onload = function(e) {
        $('#demo').attr('src', e.target.result);
      };
      reader.readAsDataURL(file);
  }
  
  function checkinfor(){
	 
	  if($('#routeName').val() === '' || $('#routeIntro').val() === '' || typeof $('#demo').attr("src") === "undefined" || $('#dis').val() === ''){
          window.alert("請輸入路線名稱、路線圖片及路線介紹，或是您仍未新增路線");
          return false;
      }else{
    	  
    	  return true;
      }
    	  
  }
  
 
 
    
</script>

<!--     <%--設定顯示 Google Maps 的大小--%> -->

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js">
 </script> 
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
 </script> 
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js">
 </script>
</body>
</html>