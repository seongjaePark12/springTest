<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test9(url경로 : /1215/test9)</title>
</head>
<body>
	<h2>이곳은 /WEB-INF/view/1215/test9.jsp</h2>
	<p>주소창에 'contextPath명'/1215/test9로 접속하였을때!</p>
	<form method="post">
		<p>
			아이디 : <input type="text" name="mid"/><br/>
			비밀번호 : <input type="password" name="pwd"/><br/>
			<input type="submit" value="전송"/>
		</p>
	</form>
</body>
</html>