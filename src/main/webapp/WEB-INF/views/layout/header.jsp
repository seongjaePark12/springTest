<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
</head>
<body>
<div style="width:100%; height:120px; background-color: skyblue; text-align:center;">
	<br/>
	<h2>이곳은 Header 영역입니다.</h2>
</div>
</body>
</html>