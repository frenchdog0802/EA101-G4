<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.route.model.*"%>

<%
	RouteVO rouVO = (RouteVO) request.getAttribute("rouVO");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta http-equiv="pragma" content="no-cache" /> 
 <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport"><!-- Bootstrap CSS -->
 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
 <title>自訂路線頁面</title>
 <style type="text/css">
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
</style>


<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://www.google.com/jsapi"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvudQDQiM5qr9HdAgxTEbCJsgCU4mDoo8&libraries=&v=weekly" ></script>


<!--  <%--上面的key 要依自己的帳號跟網站向 Google maps 去申請--%> -->
<script type = "text/javascript" >

  var markers = [];

  function initMap() {
    var map = new google.maps.Map(document.getElementById('map_canvas'), {
     zoom: 13,
     center: {lat: 24.969367, lng: 121.190733}
      }); // 預設顯示地圖的座標與放大比例
  }




  //規劃路線
  function route(data) {

   var directionsService = new google.maps.DirectionsService();
   var directionsRenderer = new google.maps.DirectionsRenderer({
      suppressMarkers: true
     });
   var routeMap = new google.maps.Map(document.getElementById("map_canvas"), {
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
            $("#dis").val((dis/1000)+'公里');
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
          '<input id=stepImg'+i+' type="file" onchange="showImg('+i+')" name="stepImg" size="45"/>'+
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
	//stepImg alert圖片預覽方法
     function showImg(i){
        var stemImgTar = "#stepImg" + i;
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
        	
        	console.log($('#demo'+i).attr("src"));
        	console.log($('#stepIntro'+i).val());
        	
        	if($('#stepIntro'+i).val() === '' || typeof $('#demo'+i).attr("src") === "undefined"){
                window.alert("Plz enter the image and intro");
                return false;
            }
	          var stepIntro = $('#stepIntro'+i).val();
	          $('#stepIntroFinal'+i).attr("value",stepIntro);
	          var stepImg = $('#demo'+i).attr("src");
	          console.log(stepImg);
	          $('#stepImgFinal'+i).attr('src',stepImg);
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
      window.alert("Plz enter the address");
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
                    window.alert("Plz enter the address");
                    return false;
                  }

                  if($("#address").val() != address){
                    window.alert("Plz search the location before add ");
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

</head>

<body onload="initMap()" >
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
    <img name="stepImg" class="stepImg" id="stepImgFinal0" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal0" value="" type="hidden">

    <label class="form-inline" />地點B：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal1" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal1" value="" type="hidden">

    <label class="form-inline" />地點C：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal2" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal2" value="" type="hidden">

    <label class="form-inline" />地點D：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal3" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal4" value="" type="hidden">

    <label class="form-inline" />地點E：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal4" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal4" value="" type="hidden">

    <label class="form-inline" />地點F：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal5" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal5" value="" type="hidden">

    <label class="form-inline" />地點G：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal6" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal6" value="" type="hidden">

    <label class="form-inline" />地點H：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal7" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal7" value="" type="hidden">

    <label class="form-inline" />地點I：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal8" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal8" value="" type="hidden">

    <label class="form-inline" />地點J：
    <input name="step" class="step form-control" value="" type="text" readonly></label>
    <input name="lat" class="lat" value="" type="hidden">
    <input name="lng" class="lng" value="" type="hidden">
    <input name="country" class="country" value="台灣" type="hidden">
    <input name="area" class="area" value="" type="hidden">
    <img name="stepImg" class="stepImg" id="stepImgFinal9" src="" style="display: none">
    <input name="stepIntro" class="stepIntro" id="stepIntroFinal9" value="" type="hidden">
    
    <br> <input type="hidden" name="checkFlag" value="0">
	<br> <input type="hidden" name="addRoute" value="0">
    
    
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
    <input name="dis" id="dis" class="dis form-control" value="" type="text" readonly></label>
  </div>
  <div class="col-md-6"> 
     <input type="hidden" name="action" value="insert">
     <input id="btnSend" class="btn btn-outline-secondary float-right" type="submit" onclick="return checkinfor()" value="送出">
     
     
  </div>
</div>
</FORM>




<script>
  function demoImg(){
      var file = $('#routeImg')[0].files[0];
      var reader = new FileReader;
      reader.onload = function(e) {
        $('#demo').attr('src', e.target.result);
      };
      reader.readAsDataURL(file);
  }
  
  function checkinfor(){
	  console.log($('#routeName').val());
	  console.log($('#routeIntro').val());
	  console.log($('#demo').attr("src"));
	  if($('#routeName').val() === '' || $('#routeIntro').val() === '' || typeof $('#demo').attr("src") === "undefined" || $('#dis').val() === ''){
          window.alert("Plz enter the RouteName, Routeimage and RouteIntro or you haven't planned a route yet");
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