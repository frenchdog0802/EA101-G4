<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member.model.*"%>
<%@ page import="java.util.*"%>
				
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
					  	<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/back-end/tips/listAllTips.jsp"><span
						style="padding-bottom: 8px; border-bottom: 3px blue solid;">小叮嚀總覽</span></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/tips/addTips.jsp"><span>新增小叮嚀</span></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/question/listAllQus.jsp"><span>Q&A總覽</span></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/back-end/question/addQus.jsp"><span>新增Q&A</span></a>
						</li>
					</ul>
				</div>	
								<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backNav----------->
	<%@include file="/back-end/backFrame/backNav"%>
								<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->					
		<div class="container mt-5">
	
	<div class="row">
		<div class="col">
			<form action="<%=request.getContextPath()%>/tips/tips.do" method="POST">
				<div class="form-group row">
					<label for="tips_title" class="col-form-label col-md-2">小叮嚀標題</label> 
					<select id="tips_title" class="form-control col-md-10" name="tips_title">
						<option value="1" ${tipsVo.tips_title==1?'selected':''}>法規資訊</option>
						<option value="2" ${tipsVo.tips_title==2?'selected':''}>自行車道規劃認識</option>
						<option value="3" ${tipsVo.tips_title==3?'selected':''}>單車裝備</option>
						<option value="4" ${tipsVo.tips_title==4?'selected':''}>行前準備</option>
						<option value="5" ${tipsVo.tips_title==5?'selected':''}>單車安全小常識</option>
						<option value="6" ${tipsVo.tips_title==6?'selected':''}>全台單車驛站</option>
					</select>
				</div>
				<div class="form-group row">
					<label for="tips_description" class="col-form-label col-md-2">小叮嚀內容</label> 
					<textarea name="tips_description" rows="4" cols="100" class="form-control col-md-10" id="tips_description">${tipsVo.tips_description}</textarea>
				</div>
				<input type="hidden" value="${tipsVo.sq_tips_id}" name="sq_tips_id">
				<input type="hidden" value="update" name="action">
				<button type="submit" class="btn btn-primary btn-block mt-5">修改小叮嚀</button>
			</form>
		</div>
	</div>
</div>
		
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backFooter----------->
		<%@include file="/back-end/backFrame/backFooter"%>
 			