<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.shop_product.model.*"%>
<%@ page import="com.shop_order_detail.model.*"%>
<%
 	String id = request.getParameter("id");
	Shop_order_detailService detailSvc = new Shop_order_detailService();
	List<Shop_order_detailVO> list = detailSvc.getOneOrder_detail(id);
// 	List<Shop_order_detailVO> newlist = new ArrayList<Shop_order_detailVO>();
	Shop_productService pSvc = new Shop_productService();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-components/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<table>
						<tr>
							<th id='td_de5' style='width:15%'><span>產品編號</span></th>
							<th id='td_de1' style='width:45%'><span>產品名稱</span></th>
							<th id='td_de2' style='width:10%'><span>單價</span></th>
							<th id='td_de3' style='width:10%'><span>數量</span></th>
<!-- 							<th id='td_de4' style='width:10%'></th> -->
<!-- 							<th id='td_de4' style='width:10%'></th> -->
						</tr>
						<% 
							for(int i=0 ; i<list.size() ; i++){
								Shop_order_detailVO vo = list.get(i);	
// 								Shop_order_detailVO newVo = new Shop_order_detailVO();
// 								newVo.setSq_order_id(id);
// 								newVo.setSq_product_id(vo.getSq_product_id());
// 								newVo.setProduct_price(vo.getProduct_price());
						%>
						<tr>
							<td>
								<%=vo.getSq_product_id() %>							
							</td>
							<td>
								<%=pSvc.getOneById(vo.getSq_product_id()).getProduct_name() %>							
							</td>
							<td>
								<%=vo.getProduct_price() %>								
							</td>
							<td>
								<%=vo.getOrder_sum()%>
<%-- 								<input type='text' name='number' style='width: 75%; height: 100%; text-align: center;' value='<%=vo.getOrder_sum()%>'/>								 --%>
							</td>		
<!-- 							<td> -->
<!-- 								<button class="btn btn-primary changeD">修改</button> -->
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<button class="btn btn-primary saveBtn">保存</button> -->
<%-- 								<input type="hidden" name="order_id" value="<%=vo.getSq_order_id()%>"> --%>
<%--                                 <input type="hidden" name="product_id" value="<%=vo.getSq_product_id() %>"> --%>
<%--                                 <input type="hidden" name="price" value="<%=vo.getProduct_price() %>"> --%>
<!-- 							</td>    -->
						</tr>	
						<%}%>			    			    					
				</table>		
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script	src="<%=request.getContextPath()%>/bootstrap-components/js/bootstrap.min.js"></script>
	<script>
		$('.changeD').click(function(){
			$(".in_sum").attr("readonly", false); 
		});
		$('.saveBtn').click(function(){
			var a = $("[name = 'product_id']").val();
			console.log(a);
// 				$.ajax({
// 					type :"POST",
<%-- 					url  : "<%=request.getContextPath()%>/shop_order_detail.do", --%>
// 					dataType: 'json',
// 					data : {
// 						action : "update",
// 						order_id : "";
// 						product_id
// 						price
// 						number,
// 					},
// 					success : function() {
// 						windows.alert("保存成功");
// 					}
// 				});
			});
	</script>
</body>
</html>