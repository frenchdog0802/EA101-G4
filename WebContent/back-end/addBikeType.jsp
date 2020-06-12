<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="/EA101_G4/${contextPath}/bootstrap-components/css/bootstrap.min.css">





<title>addBike</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<form>
					<div class="form-group row">
						<label for="bikeType" class="col-sm-2 col-form-label">車種類型</label>
						<input type="text" class="col-sm-10 form-control" id="bikeType"
							placeholder="請輸入車種類型">
						<!-- 		錯誤訊息使用				<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					</div>
					<div class="form-group row">
						<label for="bikeTitle" class="col-sm-2 col-form-label">單車標題</label>
						<input type="text" class="col-sm-10 form-control" id="bikeTitle"
							placeholder="請輸入單車標題">
					</div>

					<div class="form-group row">
						<label for="bikePrice" class="col-sm-2 col-form-label">價格</label>
						<input type="number" class="col-sm-10 form-control" id="bikePrice"
							placeholder="價格">
					</div>

					<div class="form-group row">
						<label for="bikeDesription" class="col-sm-2 col-form-label">單車敘述</label>
						<textarea name="" id="bikeDesription" class="col-sm-10" rows="10"></textarea>
					</div>

					<div class="form-group row">
						<p class="col-sm-2">上傳圖片</p>
						<span class="btn btn-success col-sm-10"> 
						<label for="upLoad" class="col-sm-2 col-form-label"> 
							<input type="file" class="custom-file-input " id="upLoad" placeholder = "gogo">
						</label>

						</span>
					</div>

					<div id="showImg"></div>



					<button type="submit" class="btn btn-outline-primary btn-block">新增</button>
				</form>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="/EA101_G4/${contextPath}/bootstrap-components/js/bootstrap.min.js"></script>
	<script>
		
	</script>
</body>
</html>