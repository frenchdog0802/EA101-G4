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
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backNav----------->
	<%@include file="/back-end/backFrame/backNav"%>
								<!-----------backNav----------->
<!-- --------------------------------------------------------------------------------------------->					
	<div class="container-fluid" style="position: relative; top: 50%; transform: translateY(20%);">
    	<div class="row justify-content-center mx-2 my-2">
  			<div class="col-2 mx-4 my-2">
  				<button class="btn" onclick="location.href='<%=request.getContextPath()%>/back-end/Shop_product/allShop_product.jsp'">
  					<img src="image/shop2.png" class="img-fluid">
  				</button>
  			</div>
	        <div class="col-2 mx-4 my-2">
	        	<button class="btn" onclick="location.href='<%=request.getContextPath()%>/back-end/bike/bikeTypeListAll.jsp'">
	            	<img src="image/indexBike.png" class="img-fluid">
	          	</button>
	        </div>
	        <div class="col-2 mx-4 my-2">
	          	<button class="btn" onclick="location.href='<%=request.getContextPath()%>/back-end/activity/listAllAct.jsp'">
	            	<img src="image/indexGroup.png" class="img-fluid">
	          	</button>
	        </div>
	        <div class="col-2 mx-4 my-2">
	         	 <button class="btn">
	            <img src="image/indexWeb.png" class="img-fluid">
	         	 </button>
	        </div>
    	</div>
	    <div class="row justify-content-center mx-2 my-2">
	        <div class="col-2 mx-4 my-2">
	        	<button class="btn" onclick="location.href='<%=request.getContextPath()%>/back-end/route/listAllRouDe.jsp'">
	        		<img src="image/indexRoute.png" class="img-fluid">
	    		</button>
	        </div>
	        <div class="col-2 mx-4 my-2">
	        	<button class="btn">
	            	<img src="image/indexMessage.png" class="img-fluid">
	          	</button>
	        </div>
	        <div class="col-2 mx-4 my-2">
	          	<button class="btn">
	            	<img src="image/indexMember.png" class="img-fluid">
	          	</button>
	        </div>
	        <div class="col-2 mx-4 my-2">
	          	<button class="btn">
	            	<img src="image/indexWorker.png" class="img-fluid">
	          	</button>
	        </div>
	     </div>
	 </div>
<!-- --------------------------------------------------------------------------------------------->
								<!-----------backFooter----------->
		<%@include file="/back-end/backFrame/backFooter"%>
 			