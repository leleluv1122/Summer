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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${R}fullcalendar/core/main.css">
<link href='${R}fullcalendar/daygrid/main.css' rel='stylesheet' />
<script src='${R}fullcalendar/core/main.js'></script>
<script src='${R}fullcalendar/daygrid/main.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'dayGrid' ]
		});

		calendar.render();
	});
</script>
<style>
/* body { font-family: 굴림체; } */
thead th {
	background-color: #eee;
}

/* tr:hover td { background-color: #ffe; cursor: pointer; } */
input.form-control.w100 {
	width: 100px;
}

input.form-control.w200 {
	width: 200px;
}

input.form-control.w300 {
	width: 300px;
}

input.form-control.w400 {
	width: 400px;
}

select.form-control.w100 {
	width: 100px;
}

select.form-control.w200 {
	width: 200px;
}

select.form-control.w300 {
	width: 300px;
}

select.form-control.w400 {
	width: 400px;
}

.mt5 {
	margin-top: 5px;
}

.mb5 {
	margin-bottom: 5px;
}

.mr20 {
	margin-right: 20px;
}

.ml20 {
	margin-left: 20px;
}

div.container {
	margin-left: auto;
	margin-right: auto;
	width: 900px;
}

td {
	padding: 5px;
	line-height: 180%;
}
img {
	float: left;
	margin-right: 5px;
	margin-bottom: 5px;
}

div.menu {
	background: linear-gradient(#eee, #fff);
	font-weight: bold;
	padding: 12px;
	border-radius: 8px;
}

div.menu span {
	margin-right: 50px;
}

div.footer {
	border-top: 1px solid #ddd;
	padding: 30px 10px;
}

div.footer img {
	margin-right: 20px;
}

div.footer div:nth-child(2) {
	font: normal 9pt 굴림;
	color: #666;
	margin-top: 10px;
}

div.footer div:nth-child(3) {
	font: normal 9pt arial;
	color: #aaa;
	margin-top: 10px;
}

body {
	padding-top: 0px;
	padding-bottom: 30px;
}
</style>
<title>학사행정 메인</title>

</head>
<body>
	<div class="container">

		<a class="btn btn-light" style="color: black; font-size: 3em;"
			href="${R}guest/index">학사행정</a>

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
				href="${R}user/register">취득성적(학기)</a>
			</span><span> <a class="btn btn-light" style="color: black"
				href="${R}user/allregister">취득성적</a>
			</span><span> <a class="btn btn-light" style="color: black"
				href="${R}user/scholarship">장학내역</a>
			</span>
		</div>
		<table>
			<tr>
				<td
					style="width: 15%; vertical-align: top; border-right: 1px solid #ddd;">
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
				<td style="width: 50%;">
					<div id='calendar'></div>
				</td>
				<td style="width: 35%;"></td>
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

