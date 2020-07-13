<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ page import="com.staff.model.*" %>
 
<%
StaffVO staffLoginVO = (StaffVO) request.getAttribute("LoginStaff");
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<FORM METHOD="post" class="modal-content animate"
			ACTION="<%=request.getContextPath()%>/login/stafflogin.do">
			
				<div>
					<c:if test="${not empty errorMsgs}">
						<font style="color: red">請修正以下錯誤:</font>
						<ul>
							<c:forEach var="message" items="${errorMsgs}">
								<li style="color: red">${message}</li>
							</c:forEach>
						</ul>
					</c:if>
				</div>

				<div class="container">
					<label for=sf_account><b>Account</b></label> 
					<input type="text"	placeholder="Enter Account" name="sf_account" required 
					value="<%=(staffLoginVO == null)? " " : staffLoginVO.getSf_account()%>"> 
					<label	for="sf_password"><b>Password</b></label> 
					<input type="password"	placeholder="Enter Password" name="sf_password" 
					required/>
						
					<button type="submit" name="action" value="login">Login</button>


					<label> <input type="checkbox" checked="checked"
						name="remember"> Remember me
					</label>
				</div>

				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>
					<span class="psw">Forgot <a href="#">password?</a></span>
				</div>
			</div>
		</form>
	</div>


</body>
</html>