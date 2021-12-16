<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1(url경로 : /test1)</title>
</head>
<body>
	<h2>이곳은 /WEB-INF/view/1215/test1.jsp</h2>
	<!-- <p>주소창에 'contextPath명'/test1로 접속하였을때!</p> -->
	<p>주소창에 'contextPath명'/1215/test1로 접속하였을때!</p>
</body>
</html>