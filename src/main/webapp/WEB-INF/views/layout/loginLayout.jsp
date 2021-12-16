<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginLayout(tiles를 적용안할 파일)</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
</head>
<body>
<div class="container">
	<tiles:insertAttribute name="content"/>
</div>
</body>
</html>