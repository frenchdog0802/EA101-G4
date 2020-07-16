<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->

<!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/backBody"%>
<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
<!--分頁自己改-->
<div class="row" style="background-color: white;">
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="#"><span
				style="padding-bottom: 8px; border-bottom: 3px blue solid;">item1</span></a>
			<!--在哪一個頁面就哪加active和span的style--></li>
		<li class="nav-item"><a class="nav-link" href="#"><span>item2</span></a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#"><span>item3</span></a>
		</li>
	</ul>
</div>
<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
<!-----------backNav----------->
<%@include file="/back-end/backFrame/backNav"%>
<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->
<div class="container mt-3">
	<div class="row">
		<div class="col">
			<form>
				<div class="form-group">
					<label for="tips_title">小叮嚀標題</label> 
					<select id="tips_title" name="tips_title">
						<option value="1">法規資訊</option>
						<option value="2">自行車道規劃認識</option>
						<option value="3">單車裝備</option>
						<option value="4">行前準備</option>
						<option value="5">單車安全小常識</option>
						<option value="6">全台單車驛站</option>
					</select>
				</div>
				<div class="form-group">
					<label for="tips_description col-2">小叮嚀內容</label> 
					<textarea name="tips_description" class="form-control col-10" id="tips_description">
				</textarea>
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</div>

<!-- --------------------------------------------------------------------------------------------->
<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>
