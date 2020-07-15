<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
				
								<!-----------backHeader----------->
<%@ page import="com.staff.model.*"%>
<% 
	StaffVO staffVO = (StaffVO)session.getAttribute("StaffVO");
%>
<!doctype html>
 <html lang="en">
   <head>
     <!-- Required meta tags -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
	 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/back-end/backFrame/BackstageCss.css">
    
  
  
								<!-----------backHeader----------->
<!-- --------------------------------------------------------------------------------------------->    
 
                               <!---------放自己的CSS與title----------->

<!-- --------------------------------------------------------------------------------------------->  
								<!-----------backBody----------->
 </head>
   <body>
   	<div class="container-fluid"> 
	  	<div class="row" style="background-color: #2f323b;">
	  		<div class="col-1 home"	>
	  			<button class="btn btn-block homebtn" onclick="location.href='<%=request.getContextPath()%>/back-end/index/backIndex.jsp'">
					<img src="<%=request.getContextPath()%>/back-end/backFrame/image/house1.png" class="img-fluid" style="width: 80%;">
				</button>
	  		</div>
			<div class="col-11 ">
				<div class="row" style="background-color:  #4778c7;">
					<div class="col-lg-5 col-md-5 align-self-center">
						
					</div>
					<div class="col-lg-1 col-md-1" style="padding-left: 3px; padding-right: 3px;">
						<%if(staffVO != null){%>
							<img src="<%=request.getContextPath()%>/staff/StaffDBReader.do?sq_staff_id=${staffVO.sq_staff_id}" class="img-fluid" style="margin: 0 auto;">
						<%}else{%>
							<img src="<%=request.getContextPath()%>/back-end/backFrame/image/user.png" class="img-fluid" style="margin: 0 auto;">
						<%}%>
					</div>
				 	<div class="col-lg-2 col-md-2 text-left align-self-center " style="padding-left: 0px; padding-right: 0px;">
				 		<%if(staffVO != null){%>
				 			<h5 class="pt-2">ID : <%= staffVO.getSq_staff_id() %></h5>
				 		<%}else{%>
				 			<h5 class="pt-2">ID : </h5>
				 		<%}%>
				 	</div>
				 	<div class="col-lg-3 col-md-3 text-left align-self-center" style="padding-left: 0px; padding-right: 0px;">
				 		<%if(staffVO != null){%>
				 			<h5 class="pt-2">NAME : <%= staffVO.getSf_name() %></h5>
				 		<%}else{%>
				 			<h5 class="pt-2">NAME : </h5>
				 		<%}%>
				 	</div>
				 	<div class="col-1 align-self-center" style="padding-left: 0px; padding-right: 0px;">
					 	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/login/stafflogin.do">
					 		<button class="btn bg-primary" style="width: 80%;" id="logout">登出</button>
					 		<input type="hidden" name="action" value="logout">
					 	</FORM>	
				 	</div>
				</div>

								<!-----------backBody----------->
<!-- --------------------------------------------------------------------------------------------->
								<!--分頁自己改-->
				<div class="row" style="background-color: white;">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#"><span style="padding-bottom:8px; border-bottom: 3px blue solid;">item1</span></a><!--在哪一個頁面就哪加active和span的style-->
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item2</span></a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#"><span>item3</span></a>
					  </li>
					</ul>
				</div>	
								<!--分頁自己改-->
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backNav----------->
		</div>
		</div>
		<div class="row" style="background-color: #eeeff4;">
			<div class="col-1 leftnav">
				<div class="liststyF">
					<button class="btn listbtn my-3" onclick="location.href='<%=request.getContextPath()%>/back-end/Shop_product/allShop_product.jsp'">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/shop1.png" class="img-fluid">
					</button>		
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3" onclick="location.href='<%=request.getContextPath()%>/back-end/bikeStore/bikeStoreListAll.jsp'">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/Bike1.png" class="img-fluid">
					</button>							
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3" onclick="location.href='<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp'">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/Plan1.png" class="img-fluid">
					</button>
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/web1.png" class="img-fluid">
					</button>		
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3" onclick="location.href='<%=request.getContextPath()%>/back-end/route/listAllRouDe.jsp'">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/route1.png" class="img-fluid">
					</button>			
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/mail.png" class="img-fluid">
					</button>		
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3" onclick="location.href='<%=request.getContextPath()%>/back-end/member/listAllMember.jsp'">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/customer.png" class="img-fluid">
					</button>		
				</div>
				<div class="liststy">
					<button class="btn listbtn my-3" onclick="location.href='<%=request.getContextPath()%>/back-end/staff/listAllStaff.jsp'">
						<img src="<%=request.getContextPath()%>/back-end/backFrame/image/member.png" class="img-fluid">
					</button>		
				</div>
				<div style="height: 300px;"></div>
			</div>				
		 	<div class="col-11">
				<div class="row">
					<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
					<script	src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>  
					<!-- sweet alert -->
					<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
					
					
								<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->					
			<!-- 自由發揮處 -->
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backFooter----------->  
		 		</div>
		 	</div>
		</div>		
   	</div>

	
   </body>
 </html>
 			