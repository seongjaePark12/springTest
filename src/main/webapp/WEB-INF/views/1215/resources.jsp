<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resources</title>
</head>
<body>
	<h2>resources연습</h2>
	<p>
		1.(x) : <img src="/메거진메인4.png" width="200px"/><br/>
		2.(x) : <img src="${ctp}/메거진메인4.png" width="200px"/><br/>
		3.(o) : <img src="${ctp}/resources/메거진메인4.png" width="200px"/><br/>
		4.(o) : <img src="${ctp}/resources/images/메거진메인6.png" width="200px"/><br/>
		5.(o) : <img src="${ctp}/resources/data/pds/메거진포르나세티1.png" width="200px"/><br/>
		6.(o) : <img src="${ctp}/images/메거진포르나세티2.png" width="200px"/><br/>
		7.(o) : <img src="${ctp}/pds/메거진포르나세티5.png" width="200px"/><br/>
		<!-- 경로 확인 연습 -->
		8.(x) : <img src="resources/images/메거진포르나세티6.png" width="200px"/><br/>
		9.(x) : <img src="/resources/images/메거진포르나세티6.png" width="200px"/><br/>
		10.(o) : <img src="${ctp}/resources/images/메거진포르나세티6.png" width="200px"/><br/>
	</p>
</body>
</html>