<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div style="width:100%; height:80px; background-color: gray; text-align:center;">
	<br/>
	<h3>이곳은 Footer 영역입니다.</h3>
</div>
</body>
</html>