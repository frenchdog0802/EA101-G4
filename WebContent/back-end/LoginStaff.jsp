<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!-----------backHeader----------->
<%@include file="/back-end/backFrame/backHeader"%>
<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->

<!---------放自己的CSS與title-1----------->
<style>
.login-container{
    margin-top: 5%;
    margin-bottom: 5%;
}
.login-form-1{
    padding: 5%;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-1 h3{
    text-align: center;
    color: #333;
}
.login-form-2{
    padding: 5%;
    background: #0062cc;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-2 h3{
    text-align: center;
    color: #fff;
}
.login-container form{
    padding: 10%;
}
.btnSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    border: none;
    cursor: pointer;
}
.login-form-1 .btnSubmit{
    font-weight: 600;
    color: #fff;
    background-color: #0062cc;
}
.login-form-2 .btnSubmit{
    font-weight: 600;
    color: #0062cc;
    background-color: #fff;
}
.login-form-2 .ForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}
.login-form-1 .ForgetPwd{
    color: #0062cc;
    font-weight: 600;
    text-decoration: none;
}

</style>
<!-- --------------------------------------------------------------------------------------------->
<!-----------backBody----------->
<%@include file="/back-end/backFrame/backBody"%>
<!-----------backBody----------->

<!-----------backNav----------->
<%@include file="/back-end/backFrame/backNav"%>

<div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3 class="font-weight-bold">網站員工登入</h3>
                    <form action="<%=request.getContextPath()%>/login/stafflogin.do" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control" name="staffAccount" placeholder="Your Account *" value="${param.staffAccount}" />
							<!--errorMsg -->
                            <span class="small text-danger errorMsgstaffAccount d-block">${errorMsgs.staffAccount}</span>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="staffPassword" placeholder="Your Password *" value="${param.staffPassword}"/>
                        	<!--errorMsg -->
                            <span class="small text-danger errorMsgstaffPassword d-block">${errorMsgs.staffPassword}</span>
                        </div>
                        <div class="form-group">
                        <input type="hidden" name="action" value="staffLogin">
                            <input type="submit" class="btnSubmit"  value="登入" />
                        </div>
                    </form>
                </div>
                <div class="col-md-6 login-form-2">
                    <h3 class="font-weight-bold">租車商家登入</h3>
                    <form action="<%=request.getContextPath()%>/login/stafflogin.do" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control" name="storeAccount" placeholder="Your Account *" value="${param.storeAccount}" />
                        	<!--errorMsg -->
                            <span class="small text-danger errorMsgstoreAccount d-block">${errorMsgs.storeAccount}</span>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="storePassword" placeholder="Your Password *" value="${param.storePassword}" />
                        	<!--errorMsg -->
                            <span class="small text-danger errorMsgstorePassword d-block">${errorMsgs.storePassword}</span>
                        </div>
                        <div class="form-group">
                        	<input type="hidden" name="action" value="storeLogin">
                            <input type="submit" class="btnSubmit" value="登入" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

<!-----------backFooter----------->
<%@include file="/back-end/backFrame/backFooter"%>