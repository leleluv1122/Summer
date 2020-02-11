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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<link rel="stylesheet" href="${R}res/common.css">
<title>학사행정 메인</title>

</head>
<body>
	<div class="container">

		<a class="btn btn-light" style="color: black; font-size: 3em;"
			href="${R}user/index">학사행정</a>

		<sec:authorize access="not authenticated">
			<a class="btn btn-light btn-xs" style="color: black; float: right;"
				href="${R}guest/login">로그인</a>
		</sec:authorize>
		<sec:authorize access="not authenticated">
			<a class="btn btn-light btn-xs" style="color: black; float: right;"
				href="${R}guest/register">회원가입</a>
		</sec:authorize>
		<sec:authorize access="authenticated">
			<a class="btn btn-light btn-xs" style="color: black; float: right;"
				href="${R}user/logout_processing">로그아웃</a>
			<a class="btn btn-light btn-xs" href="${R}user/info"
				style="color: black; float: right;"> <sec:authentication
					property="user.name" />
			</a>

		</sec:authorize>


		<hr />
		<div class="menu">
			<span> <a class="btn btn-light" style="color: black"
				href="${R}user/info">학생정보</a>
			</span> <span> <a class="btn btn-light" style="color: black"
				href="${R}user/subjectlist">개설교과목조회</a>
			</span> <span> <a class="btn btn-light" style="color: black"
				href="${R}user/register">취득성적</a>
			</span><span> <a class="btn btn-light" style="color: black"
				href="${R}user/scholarship">장학내역</a>
			</span>
		</div>
		<table>
			<tr>
				<td>
					<h3>모하딩</h3>
					<hr />
					<p>뿌잉</p>
					<p>뀨뀨</p>
					<p>뜌잇</p>
					<p>러러쨩</p>
					<p>흠냐링</p>
					<p>뉴뉴</p>
					<p>초밥</p>
					<p>치킨</p>
				</td>
				<td></td>
			</tr>
		</table>


		<div class="footer">
			<a href="http://www.hansei.ac.kr"> <img
				src="/resources/static/images/logo.jpg" /></a>
			<div>15852 경기도 군포시 한세로 30 한세대학교 / 지하철 1호선 당정역 031-450-5114</div>
			<div>Copyright (c) Han-Sei Univisity. All rights reserved.</div>
		</div>
	</div>

</body>
</html>
