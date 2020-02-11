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
<script type="text/javascript">
	var today = new Date();
	var date = new Date();
	function prevCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar();
	}

	function nextCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();
	}
	function buildCalendar() {
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		var tbCalendar = document.getElementById("calendar");
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		tbCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월";

		while (tbCalendar.rows.length > 2) {
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
		}
		var row = null;
		row = tbCalendar.insertRow();
		var cnt = 0;
		for (i = 0; i < doMonth.getDay(); i++) {
			cell = row.insertCell();
			cnt = cnt + 1;
		}
		for (i = 1; i <= lastDate.getDate(); i++) {
			cell = row.insertCell();
			cell.innerHTML = i;
			cnt = cnt + 1;
			if (cnt % 7 == 1) {
				cell.innerHTML = "<font color=#F79DC2>" + i
			}
			if (cnt % 7 == 0) {
				cell.innerHTML = "<font color=skyblue>" + i
				row = calendar.insertRow();
			}
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				cell.bgColor = "#f2fff7";
			}
		}
	}
</script>
<link rel="stylesheet" href="${R}res/common.css">
<title>학사행정 메인</title>

</head>
<body>
	<div class="container">

		<a class="btn btn-light" style="color: black; font-size: 3em;"
			href="${R}user/index">학사행정</a> <a class="btn btn-light btn-xs"
			style="color: black; float: right;" href="logout_processing">로그아웃</a><a
			class="btn btn-light btn-xs" href="${R}user/info"
			style="color: black; float: right;"> <sec:authentication
				property="user.name" />
		</a>


		<hr />
		<div class="menu">
			<span><sec:authorize access="authenticated">
					<a class="btn btn-light" style="color: black" href="${R}user/info">학생정보</a>
				</sec:authorize></span> <span><sec:authorize access="authenticated">
					<a class="btn btn-light" style="color: black"
						href="${R}user/subjectlist">개설교과목조회</a>
				</sec:authorize></span> <span><sec:authorize access="authenticated">
					<a class="btn btn-light" style="color: black"
						href="${R}user/register">취득성적</a>
				</sec:authorize></span><span><sec:authorize access="authenticated">
					<a class="btn btn-light" style="color: black"
						href="${R}user/scholarship">장학내역</a>
				</sec:authorize></span>
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
				<td>
					<table id="calendar" border="1">
						<colgroup>
							<col width="14%" />
							<col width="14%" />
							<col width="14%" />
							<col width="14%" />
							<col width="14%" />
							<col width="14%" />
							<col width="14%" />
						</colgroup>
						<tr>
							<td><a onclick="prevCalendar()"
								style="cursor: pointer; text-decoration: none;"> ← </a></td>
							<td align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</td>
							<td><a onclick="nextCalendar()"
								style="cursor: pointer; text-decoration: none;"> → </a></td>
						</tr>
						<tr>
							<td align="center"><font color="#F79DC2">일</td>
							<td align="center">월</td>
							<td align="center">화</td>
							<td align="center">수</td>
							<td align="center">목</td>
							<td align="center">금</td>
							<td align="center"><font color="skyblue">토</td>
						</tr>
					</table> <script language="javascript" type="text/javascript">
						buildCalendar();
					</script>
				</td>
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
