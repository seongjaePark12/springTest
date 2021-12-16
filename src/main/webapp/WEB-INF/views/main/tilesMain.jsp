<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tilesMain.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>회원 메인 화면</h2>
	<hr/>
	<p>아이디 : ${sMid} / ${mid}</p>
	<c:if test="${sLevel == 0}"><c:set var="strLevel" value="관리자"/></c:if>
	<c:if test="${sLevel == 1}"><c:set var="strLevel" value="VIP"/></c:if>
	<c:if test="${sLevel == 2}"><c:set var="strLevel" value="우수회원"/></c:if>
	<c:if test="${sLevel == 3}"><c:set var="strLevel" value="정회원"/></c:if>
	<c:if test="${sLevel == 4}"><c:set var="strLevel" value="준회원"/></c:if>
		<p>등급 : ${strLevel}</p>
	
	<hr/>
	<p><img src="${ctp}/images/메거진메인4.png" width="300px"/></p>
	<hr/>
</div>
</body>
</html>