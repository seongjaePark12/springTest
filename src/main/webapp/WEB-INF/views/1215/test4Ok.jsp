<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test4(url경로 : /1215/test4)</title>
</head>
<body>
	<h2>관리자 인증 ok</h2>
	<p>
		아이디 : ${mid}<br/>
		비밀번호 : ${pwd}<br/>
	</p>
</body>
</html>