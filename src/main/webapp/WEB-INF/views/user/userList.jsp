<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userList</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
<script>
	function delCheck(idx){
		var ans = confirm("현재 user를 삭제하시겠습니까?");
		if(ans) location.href="${ctp}/user/userDelete?idx="+idx;
	}
	
	function userSearch(){
		var name = document.getElementById("name").value;
		if(name == ""){
			alert("검색할 성명을 입력하세요");
			name.focus();
		}
		else{
			location.href="${ctp}/user/userSearch?name="+name;		
		}
	}
</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>유저 리스트</h2>
	<div style="width:100%">
		<span class="text-left">
			<input type="button" value="등록" onclick="location.href='${ctp}/user/userInput';" class="btn btn-warning btn-sm "/>
			<input type="button" value="전체검색" onclick="location.href='${ctp}/user/userList';" class="btn btn-warning btn-sm "/>
		</span>
		<span class="text-left">
			성명:<input type="text" name="name" id="name"/>
			<input type="button" value="검색" onclick="userSearch()" class="btn btn-warning btn-sm "/>
		</span>
	</div>
	<table class="table table-hover">
		<tr class="table-warning text-dark">
			<th>번호</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>나이</th>
			<th>수정/삭제</th>
		</tr>
		<c:forEach var="vo" items="${vos}">
			<tr>
				<td>${vo.idx}</td>
				<td>${vo.name}</td>
				<td>${vo.pwd}</td>
				<td>${vo.age}</td>
				<td>
					<input type="button" value="수정" onclick="location.href='${ctp}/user/userPwdCheck?idx=${vo.idx}';" class="btn btn-warning btn-sm"/>
					<input type="button" value="삭제" onclick="javascript:delCheck(${vo.idx})" class="btn btn-warning btn-sm"/>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>