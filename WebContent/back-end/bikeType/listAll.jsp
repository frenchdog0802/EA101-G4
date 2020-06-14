<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.type.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	BikeTypeDAO bikeDao = new BikeTypeDAO();
	List<BikeTypeVO> list = bikeDao.getAll();
	pageContext.setAttribute("list", list);
%>


<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
<style>
@media ( min-width :960px) {
	.mydescription {
		word-break: break-all;
		max-width: 1000px;
	}
	;
}
</style>
<body>
	<div class="container-fluid">
		<form class="form-inline">
			<div class="form-group mx-sm-3 mt-3">
				<label for="inputbike_type_id" class="sr-only">請輸入車種編號</label>
				<input type="password" class="form-control" id="inputbike_type_id" placeholder="請輸入車種編號">
			</div>
			<button type="submit" class="btn btn-primary mt-3">查詢</button>
			<a href="addBikeType.jsp" class="btn btn-success mt-3 mx-3">新增</a>
		</form>
	</div>
<!-- 	pageContext.request.scheme pageContext.request.serverName pageContext.request.serverPort -->

	
	
	<div class="container-fluid">
		<div class="table-responsive">
			<table
				class="table text-center table-bordered table-striped table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">圖片</th>
						<th scope="col">車種名稱</th>
						<th scope="col">車種標題</th>
						<th scope="col">車種敘述</th>
						<th scope="col">價格/天</th>
					</tr>
				</thead>
				<tbody>
					<%@ include file="page1.file"%>
					<c:forEach var="bikeVO" items="${list}" begin="<%=pageIndex%>"
						end="<%=pageIndex+rowsPerPage-1%>">
						<tr>
						
							<td><img
								src="<%=request.getContextPath()%>/photo/DBReader.do?sq_bike_type_id=${bikeVO.sq_bike_type_id}"
								height="50%"></td>
							<td class="align-middle">${bikeVO.bike_type_name}</td>
							<td class="align-middle">${bikeVO.bike_title}</td>
							<td class="mydescription align-middle">${bikeVO.bike_description}</td>
							<td class="align-middle">${bikeVO.price}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<%@ include file="page2.file"%>
			<%
				if (pageNumber > 0) {
			%>
			<span><font color=red>第<%=whichPage%>/<%=pageNumber%>頁
			</font></span>
			<%
				}
			%>
			<span>●符 合 查 詢 條 件 如 下 所 示: 共<font color=red><%=rowNumber%></font>筆
			</span>
			  <%if (pageNumber>1) {%>
    <FORM METHOD="post" ACTION="<%=request.getRequestURI()%>">   
       <select size="1" name="whichPage">
         <%for (int i=1; i<=pageNumber; i++){%>
            <option value="<%=i%>">跳至第<%=i%>頁
         <%}%> 
       </select>
       <input type="submit" value="確定" >  
    </FORM>
  <%}%>
		</div>
	</div>
	</div>

	<!-- 			<td> -->
	<%-- 			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/emp/emp.do" style="margin-bottom: 0px;"> --%>
	<!-- 			     <input type="submit" value="修改"> -->
	<%-- 			     <input type="hidden" name="empno"  value="${bikeVO.empno}"> --%>
	<!-- 			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM> -->
	<!-- 			</td> -->
	<!-- 			<td> -->
	<%-- 			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/emp/emp.do" style="margin-bottom: 0px;"> --%>
	<!-- 			     <input type="submit" value="刪除"> -->
	<%-- 			     <input type="hidden" name="empno"  value="${bikeVO.empno}"> --%>
	<!-- 			     <input type="hidden" name="action" value="delete"></FORM> -->
	<!-- 			</td> -->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
</body>
</html>