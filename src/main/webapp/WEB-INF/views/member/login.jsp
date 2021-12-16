<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<form method="post">
		<h2>로그인</h2>
		<table class="table table-bordered">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="mid" class="form-control" autofocus /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" class="form-control" /></td>
			</tr>
			<tr>
				<th>레벨</th>
				<td>
				<!-- 
					비회원(99)은 서비스 사용 금지 
					준회원(4)은 방명록까지 사용
					정회원(3)은 방명록+게시판사용
					VIP(1),우수회원은(2)은 방명록+게시판+자료실 사용
					관리자 - 관리자메뉴
				-->
					<select name="level" class="form-control">
						<option value="4">준회원</option>				
						<option value="3">정회원</option>				
						<option value="2">우수회원</option>				
						<option value="1">VIP</option>				
						<option value="0">관리자</option>				
						<!-- <option value="99">비회원</option>	 -->			
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="text-center">
					<input type="submit" value="로그인" class="btn btn-warning"/>
					<input type="reset" value="취소" class="btn btn-warning"/>
					<input type="button" value="돌아가기" onclick="location.href='${ctp}/';" class="btn btn-warning"/>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>