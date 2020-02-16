<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<c:url var="R" value="/" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/navbars/">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${R}res/index.css">
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
			class="navbar-brand" style="font-size: 3em;" href="${R}guest/index">학사행정</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					style="font-size: 1.5em;" href="${R}user/info">학생정보</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: 1.5em;" href="${R}user/subjectlist">개설교과목조회</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: 1.5em;" href="${R}user/register">취득성적(학기)</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: 1.5em;" href="${R}user/allregister">취득성적</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: 1.5em;" href="${R}user/scholarship">장학내역</a></li>
				
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">내 정보 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<sec:authorize access="not authenticated">
							<a class="btn btn-light btn-xs" href="${R}guest/login">로그인</a>
						</sec:authorize>
						<sec:authorize access="not authenticated">
							<a class="btn btn-light btn-xs" href="${R}guest/register">회원가입</a>
						</sec:authorize>
						<sec:authorize access="authenticated">
							<a class="btn btn-light btn-xs" href="${R}user/logout_processing">로그아웃</a>
							<a class="btn btn-light btn-xs" href="${R}user/info"> <sec:authentication
									property="user.name" />
							</a>
						</sec:authorize>
					</div></li>
			</ul>
		</div>
		</nav>




	</div>

</body>
</html>

