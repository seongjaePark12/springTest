<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test5(url경로 : /1215/test8)</title>
</head>
<body>
	<h2>이곳은 /WEB-INF/view/1215/test8Ok.jsp</h2>
	<p>
		아이디 : ${vo.mid}<br/>
		비밀번호 : ${vo.pwd}<br/>
	</p>
	<p>
		<a href="${ctp}/1215/test8">돌아가기</a>
	</p>
</body>
</html>