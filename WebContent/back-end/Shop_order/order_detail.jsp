<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop_order_detail.model.*"%>
<% 
	Shop_order_detailService detailSvc = new Shop_order_detailService();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
    	<thead>
			<tr>
				<th id="td_de1"><span>產品編號</span></th>
				<th id="td_de2"><span>名稱</span></th>
				<th id="td_de3"><span>數量</span></th>
			</tr>
		</thead>
		<c:forEach var="order_detailVO" items="${list}">
			<tr>
				<td>${order_detailVO.sq_product_id}</td>
				<td>${order_detailVO.product_price}</td>
				<td>${order_detailVO.order_sum}</td>				
	    		<td>
					<FORM METHOD="post" ACTION="shop_order.do" style="position: relative;">
						<input type="submit" value="修改" style="position: absolute; opacity: 0;">
						<input type="image" src="<%=request.getContextPath()%>/back_end/backFrame/image/changeicon.png" alt="Submit" align="right" class="img-fluid"/>
						<input type="hidden" name="sq_stock_id"  value="${orderVO.sq_order_id}">
						<input type="hidden" name="action"	value="getOneForUpdate">
					</FORM>
				 </td>
				 <td>
					<FORM METHOD="post" ACTION="shop_order.do" style="position: relative;">
						<input type="submit" value="修改" style="position: absolute; opacity: 0;">
						<input type="image" src="<%=request.getContextPath()%>/back_end/backFrame/image/delicon.png" alt="Submit" align="right" class="img-fluid"/>
						<input type="hidden" name="sq_stock_id" value="${orderVO.sq_order_id}">
						<input type="hidden" name="action" value="delete">
					</FORM>
				</td>          
			</tr>
		</c:forEach>				    					
	</table>
</body>
</html>