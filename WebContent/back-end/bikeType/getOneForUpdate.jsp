<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bike.type.model.*"%>
<jsp:useBean id="BikeTypeVO" class="com.bike.type.model.BikeTypeVO"  scope="request"/>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${BikeTypeVO.sq_bike_type_id}
${BikeTypeVO.bike_type_name}
${BikeTypeVO.bike_title}
${BikeTypeVO.bike_description}

</body>
</html>