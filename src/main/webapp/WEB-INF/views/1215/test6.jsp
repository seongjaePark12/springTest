<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test6(url경로 : /1215/test5)</title>
</head>
<body>
	<h2>이곳은 /WEB-INF/view/1215/test6.jsp</h2>
	<p>주소창에 'contextPath명'/1215/test6로 접속하였을때!</p>
	<%-- <form method="get" action="${ctp}/1215/test6Ok"> --%>
	<%-- <form method="get" action="${ctp}/1215/test61Ok"> --%>
	<%-- <form method="get" action="${ctp}/1215/test62Ok"> --%>
	<form method="get" action="${ctp}/1215/test64Ok">
		<p>
			아이디1 : <input type="text" name="mid1"/><br/>
			아이디2 : <input type="text" name="mid2"/><br/>
			아이디3 : <input type="text" name="mid3"/><br/>
			아이디4 : <input type="text" name="mid4"/><br/>
			아이디5 : <input type="text" name="mid5"/><br/>
			비밀번호 : <input type="password" name="pwd"/><br/>
			<input type="submit" value="전송"/>
		</p>
	</form>
</body>
</html>