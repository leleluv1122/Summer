<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!-- spring security 확장 태그를 사용하기 위한 선언 -->
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>손님 첫 페이지</h1>
		<hr />

		<sec:authorize access="not authenticated">
			<a class="btn btn-default" href="${R}guest/login">로그인</a>
			<!-- 로그인 페이지 URL 이어야 한다 -->
		</sec:authorize>
		<!--  현재 사용자가 로그인하지 않았을 경우에 위 태그 출력 -->
		
		<sec:authorize access="authenticated">
			<a class="btn btn-default" href="${R}user/logout_processing">로그아웃</a>
			<!-- cofig파일에서 설정한 로그아웃 처리 URL과 일치해야 한다 -->
		</sec:authorize>
		<!-- 현재 사용자가 이미 로그인했을 경우에는 위 태그 출력 -->
		
	</div>
</body>
</html>
