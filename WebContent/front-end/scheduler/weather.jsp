<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<style>
    #tbody th{
     vertical-align:middle;
}

</style>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>

	<div class="container my-5">



		<div class="row">
			<div class="col-xs-12 w-100">
				<nav>
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true">全臺</a> <a
							class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
							href="#nav-profile" role="tab" aria-controls="nav-profile"
							aria-selected="false">北部</a> <a class="nav-item nav-link"
							id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
							role="tab" aria-controls="nav-contact" aria-selected="false">中部</a>
						<a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab"
							href="#nav-about" role="tab" aria-controls="nav-about"
							aria-selected="false">南部</a> <a class="nav-item nav-link"
							id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab"
							aria-controls="nav-about" aria-selected="false">外島</a>
					</div>
				</nav>
			</div>
		</div>
		<div class="row">
			<table
				class="table table-bordered text-sm  table-striped text-center"
				style="table-layout: fixed">
				<thead id="date" class="table-primary">
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>
		</div>
	</div>






	<%@include file="/front-end/page-file/page-footer"%>
	<!-- 	jquery已經引入  -->
	<!-- 	sweetAlert已經引入   -->
	<!-- 	boostrap4已經引入   -->


	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
		
		$.ajax({
			url:"<%=request.getContextPath()%>/WeatherServlet.do",
				type : "POST",
				data : {
					action : "init",
				},
				dataType : "JSON",
				success : function(data) {
					console.log(data);
					var WeatherList = data.WeatherList;
					var area = data.area;
					var parameterNameList = data.parameterNameList;
					var parameterValueList = data.parameterValueList;
					var date = data.date;
					
					//處理日期
					var dateStr = "<tr><td>縣市</td>";
					for(var i = 0 ; i <date.length;i++){
						var splitdate = date[i].split(" ");
						var week = getDayOfWeek(splitdate[0]);
						var dateTime = splitdate[0].substr(5);
						dateStr+="<td>"+dateTime+"<br>"+week+"</td>";
					}
					dateStr+="</tr>";
					$("#date").html(dateStr);
					//處理日期--end
					
					//處理tbody
					var count=1;
					var areaCount = 0;
					var listLength = parameterNameList.length;
					var tbodyStr = "";
					for(var i =0 ; i<listLength;i++){
						if(count==1){
							tbodyStr+="<tr>";
							tbodyStr+="<th scope='row'>"+area[areaCount]+"</th>";
							areaCount++;
						}
						//取相片編號
						var WeatherPic = getWeatherPic(parameterValueList[i]);
						tbodyStr+=
							"<td class='mark'><img class'img-fluid' alt='"+WeatherList[i]+"' src='<%=request.getContextPath()%>/front-end/scheduler/weather/s"
										+ WeatherPic + ".png'>" + "<br>"
										+ parameterNameList[i] 
										+ "</td>";

								if (count == listLength) {
									tbodyStr += "</tr>";
									break;
								}

								if (count % 7 == 0) {
									tbodyStr += "</tr><tr>";
									tbodyStr += "<th>" + area[areaCount]
											+ "</th>";
									areaCount++;
								}
								count++;
							}
							$("tbody").html(tbodyStr);

						},
					    complete: function () {
					    	//table click
							$("#tbody tr td").click(function(e) {
								var imgSrc = $(this).find("img").attr("src");
								var imgAlt = $(this).find("img").attr("alt");
								var areaName = $(this).closest("tr").find("th").eq(0).text();
								 
								Swal.fire({
									  title: areaName,
									  text: imgAlt,
									  imageUrl: imgSrc,
									  imageWidth: 128,
									  imageHeight: 128,
									  imageAlt: 'Custom image',
									})
							});
							
							//table hover
							$("#tbody tr td").hover(function(){
								$(this).css('cursor', 'pointer');
								$(this).css('color', 'blue');
							},function(){
								$(this).css('color', 'inherit');
							})
					    }
					})

		})

		function getWeatherPic(value) {
			value = value - 0;
			if ([ 1 ].includes(value)) {
				return 1;
			}
			if ([ 2, 3, 4 ].includes(value)) {
				return 2;
			}
			if ([ 5, 6, 7 ].includes(value)) {
				return 5;
			}
			if ([ 8, 9, 10, 12, 13, 14, 29 ].includes(value)) {
				return 8;
			}
			if ([ 11 ].includes(value)) {
				return 11;
			}
			if ([ 15, 16, 17, 18 ].includes(value)) {
				return 19;
			}
			if ([ 20, 31 ].includes(value)) {
				return 20;
			}
			if ([ 21, 22 ].includes(value)) {
				return 21;
			}
			if ([ 23 ].includes(value)) {
				return 23;
			}
			if ([ 24, 25 ].includes(value)) {
				return 24;
			}
			if ([ 26, 27, 28, 32, 38, 39 ].includes(value)) {
				return 26;
			}
			if ([ 33, 34, 35, 36 ].includes(value)) {
				return 33;
			}
			if ([ 42 ].includes(value)) {
				return 42;
			}

		}

		function getDayOfWeek(dateStr) {
			var dayOfWeek = "";
			dateStr = dateStr.replace(/-/g, '/');
			var date = new Date(dateStr);
			switch (date.getDay()) {
			case 0:
				dayOfWeek = '星期日';
				break;
			case 1:
				dayOfWeek = '星期一';
				break;
			case 2:
				dayOfWeek = '星期二';
				break;
			case 3:
				dayOfWeek = '星期三';
				break;
			case 4:
				dayOfWeek = '星期四';
				break;
			case 5:
				dayOfWeek = '星期五';
				break;
			case 6:
				dayOfWeek = '星期六';
				break;
			}
			return dayOfWeek;
		}
	</script>

</body>
</html>