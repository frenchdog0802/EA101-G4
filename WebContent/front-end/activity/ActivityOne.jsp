<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>
<%@ page import="com.actjoin.model.*"%>
<%@ page import="com.actfavor.model.*"%>
<%@ page import="com.actreport.model.*"%>
<%@ page import="com.member.model.*"%>

<%
	java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
	ActVO actVO2 = (ActVO)request.getAttribute("actVO");
	java.sql.Date act_end_time = actVO2.getAct_end_time();
	java.sql.Date start_time = actVO2.getStart_time();
	java.sql.Date end_time = actVO2.getEnd_time();
	int afterAct = act_end_time.compareTo(date);
	int afterRegistrationDate = end_time.compareTo(date);
	int beforeAct = start_time.compareTo(date);
%>
<jsp:useBean id="actreportSvc" class="com.actreport.model.ActReportService"/>
<% 
    ActService actSvc = new ActService();
    List<ActVO> list = actSvc.getAll();
    List<ActVO> list2 = new LinkedList<ActVO>();
    ActVO actVO4 = actSvc.getOneAct(actVO2.getSq_activity_id());
    for(ActVO actVO3 : list){
    	if(actreportSvc.getOneActReportStatus(actVO3.getSq_activity_id()) !=1 && (actVO3.getGp_status()==0 || actVO3.getGp_status()==1)
    			&& actVO3.getSq_route_id().contains(actVO4.getSq_route_id()) && !(actVO3.getSq_activity_id().contains(actVO4.getSq_activity_id()))){ 		
    		list2.add(actVO3);
    	}
    }
    pageContext.setAttribute("list2",list2);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
<title>鐵馬PAPAGO : ${actVO.act_title}</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.btn-primary{
		margin-left:10px;
	}
	
	#relationimg{
		height: 255px;
		width:100%;
	}
	
	#majorimg{
		width:100%;
		height:472px;
	}
	#actrow{
		width:100%;
	}
</style>
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
 	

  
 	<div class="container my-5">
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">${actVO.act_title}<input type="button" value="返回列表" class="btn btn-primary" id="returnlist"></h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="<%=request.getContextPath()%>/front-end/index/index.jsp">Home</a>
      </li>
      <li class="breadcrumb-item active">${actVO.act_title}</li>
    </ol>

    <!-- Portfolio Item Row -->
    <div class="row">

      <div class="col-md-8">
        <img id="majorimg" class="img-fluid" src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO.sq_activity_id}'" alt="">
      </div>
	  <jsp:useBean id="memberSvc" scope="page" class="com.member.model.MemService" />
	  <jsp:useBean id="routeSvc" scope="page" class="com.route.model.RouteService" />
      <div class="col-md-4">
        <h3 class="my-3">活動描述</h3>
        <p>${actVO.act_description}</p>
        <h3 class="my-3">活動細節</h3>
        <ul>
          <li>活動主辦者:${memberSvc.getOneMem(actVO.sq_member_id).m_name}</li>
          <li>活動路線:<a href="<%=request.getContextPath()%>/front-end/route/route.do?sqRouteId=${actVO.sq_route_id}&routeName=${routeSvc.getOneRoute(actVO.sq_route_id).routeName}&action=getOneRoute_For_Display">${routeSvc.getOneRoute(actVO.sq_route_id).routeName}</a></li>
          <li>上限人數:${actVO.max_population}</li>
          <li>最低開團人數:${actVO.min_population}</li>
          <li>目前參加人數:${actVO.population}</li>
          <li>報名起始時間:${actVO.start_time}</li>
          <li>報名結束時間:${actVO.end_time}</li>
          <li>活動開始時間:${actVO.act_start_time}</li>
          <li>活動結束時間:${actVO.act_end_time}</li>
        </ul>
       <div class="row">
       		<c:choose>
       		
       		<c:when test="<%= beforeAct > 0 %>">
		        <input type="button" value="即將來臨" class="btn btn-primary" disabled>
		    </c:when>
		    
		    <c:when test="<%= afterAct < 0 %>">
		        <input type="button" value="活動結束" class="btn btn-primary" disabled>
		    </c:when>
       		
       		<c:when test="${actVO.sq_activity_id == actjoinVO.sq_activity_id && sq_member_id == actjoinVO.sq_member_id || actVO.sq_member_id == sq_member_id}">
		        <FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do">
		        	<input type="button" value="已參加" class="btn btn-primary" disabled>
		        </FORM>
		    </c:when>
		    
		    <c:when test="${actVO.population == actVO.max_population}">
		        <input type="button" value="人數已滿" class="btn btn-primary" disabled>
		    </c:when>
		    
		     <c:when test="<%= afterRegistrationDate < 0 %>">
		        <input type="button" value="報名截止" class="btn btn-primary" disabled>
		    </c:when>
		    
	        <c:when test="${actVO.sq_member_id != sq_member_id}">
				<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActJoinServlet.do">
					<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
					<input type="hidden" name="action"value="insert">
					<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
					<input type="submit" value="參加活動" class="btn btn-primary"> 	
				</FORM> 
	        </c:when>
	    
	        <c:otherwise>
	        
	        </c:otherwise>      
	       	</c:choose>
	       	
	       	<c:choose>
	       	<c:when test="${actVO.sq_activity_id == actfavorVO.sq_activity_id && sq_member_id == actfavorVO.sq_member_id}">
		       	<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActFavorServlet.do">
					<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
					<input type="hidden" name="action"value="delete">
					<input type="hidden" name="requestURL" value="/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
					<input type="submit" value="已收藏" class="btn btn-primary"> 	
				</FORM> 
			</c:when>
			<c:otherwise>
	        	<FORM METHOD="post" id="form" ACTION="<%=request.getContextPath()%>/act/ActFavorServlet.do">
					<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
					<input type="hidden" name="action"value="insert">
					<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
					<input type="submit" value="收藏活動" class="btn btn-primary"> 	
				</FORM>	
	        </c:otherwise>
			</c:choose>
			
			<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
							
						<div class="modal-header">
							<h2 class="modal-title" id="myModalLabel">檢舉活動</h2>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			            </div>
						
						<div class="modal-body">
			<!-- =========================================以下為輸入的內容========================================== -->
			              <textarea name="report_reason" maxlength="65" id="textarea1" onkeyup="value=value.replace(/[^\,\，\?\!\a-\z\A-\Z0-9\u4E00-\u9FA5\.]/g,'')" style="resize: none;width:100%;height:125px;"></textarea>
			<!-- =========================================以上為原輸入的內容========================================== -->
						</div>
						
						<div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			                <FORM METHOD="post" id="form3" ACTION="<%=request.getContextPath()%>/act/ActReportServlet.do">
								<input type="hidden" id="sq_activity_id" name="sq_activity_id" value="${actVO.sq_activity_id}">
								<input type="hidden" name="action" value="insert">
								<input type="hidden" id="reason" name="report_reason">
								<input type="hidden" name="requestURL" value="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO.sq_activity_id}">
								<input type="submit" value="送出" name="textsub" id="textsub" class="btn btn-primary" onclick="return CheckText()"> 	
							</FORM>
			            </div>
					</div>
				</div>
			</div>
			
			<c:choose>
       		
       		<c:when test="${actVO.sq_activity_id == actreportVO.sq_activity_id && sq_member_id == actreportVO.sq_member_id}">
		        	<input type="button" value="已檢舉" class="btn btn-primary" disabled>
		    </c:when>
		    
	        <c:when test="${actVO.sq_member_id != sq_member_id}">
				<div style="padding-left:1px">
					<button id="actreport" class="btn btn-primary" onclick="showModal()">檢舉活動</button>
				</div>
	        </c:when>
	        <c:when test="${actVO.sq_member_id == sq_member_id}">
		    	<input type="button" value="檢舉活動" class="btn btn-primary" disabled>
		    </c:when>
	        <c:otherwise>
	        
	        </c:otherwise>      
	       	</c:choose>
	    </div><!-- /.第二層row -->
	   
    </div>
    <!-- /.最外層row -->

    <!-- Related Projects Row -->
    <div class="relativeact">
    <h3 class="my-4">相關活動</h3>
	</div>
				<div class="row" id="actrow">
					<c:if test="<%= list2.size()!=0%>">
					<c:forEach var="actVO5" items="${list2}" begin="${list2.size()<4?0:list2.size()-4}"
						end="${list2.size()-1}">
						<div class="col-md-3 col-sm-6 mb-4">
							<a
								href="<%=request.getContextPath()%>/act/ActServlet.do?action=getFrontOne_For_Display&sq_activity_id=${actVO5.sq_activity_id}">
								<img id="relationimg" class="img-fluid"
								src="<%=request.getContextPath()%>/act/DBGifReader2?SQ_ACTIVITY_ID='${actVO5.sq_activity_id}'"
								alt="">
							</a>
						</div>
					</c:forEach>
					</c:if>
					<c:if test="<%= list2.size()==0%>">	
					</c:if>
				</div>
				<!-- /.row -->
   
      </div>
    </div>
  </div>  
    
 		
	<%@include file="/front-end/page-file/page-footer"%>

	<script>
	$(function(){
		$(".fun-text").text("");  // text("")裡面自己輸入功能名稱 
	});
	</script>
	<script> //返回列表的按鈕
		$("#returnlist").click(function(){
			window.location = '<%=request.getContextPath()%>/front-end/activity/Activity.jsp'
		});
		
		$("#actreport").click(function(){
			$("#basicModal").modal({show: true});
		});
	</script>
	<script> //檢舉活動彈出視窗的判別式
	 var val = document.getElementById("textarea1");
	 var tar = document.getElementById('reason');
	 var sub = document.getElementById("textsub");
	    val.addEventListener("input", function(e) {
	        var t = this.value;
	        tar.value = t;
	    })
	 	//檢舉活動驗證
		function CheckText() {
			if (tar.value === '' || tar.value === null || tar.value === non
					|| tar.value === empty) {
				alert("請輸入檢舉原因");
				return false;
			} else {
				alert("內容符合要求");
				return true;
			}
		}
	</script>
</body>
</html>