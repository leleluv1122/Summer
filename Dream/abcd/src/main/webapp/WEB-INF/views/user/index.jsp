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
<script type="text/javascript">
	var today = new Date(); //오늘 날짜
	var date = new Date(); //today의 Date를 세어준다
	function prevCalendar() { //이전달
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate()); //이전달을 today에 저장하고 달력에 today를 넣어준다
		buildCalendar(); //달력에 cell을 만들어서 출력
	}

	function nextCalendar() { //다음달
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();
	}
	function buildCalendar() { //현재 달력만들기
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		// new를 써주면 정확한 월을 가져온다 0~11반환
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		var tbCalendar = document.getElementById("calendar");
		//날짜를 찍을 테이블 변수를 만든다
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//테이블에 정확한 날짜 찍는 변수 html 표준언어로 바꿔줌 new안해서 +1해야된다.
		tbCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월";

		/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
		while (tbCalendar.rows.length > 2) {
			//열을 지워준다
			// 기본 열 크기는 body부분에서 2로 고정
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
			// 테이블의 tr갯수만큼 열묶음 -1칸 해야 30일 이후로 담을 달에 순서대로 열이 이어짐
		}
		var row = null;
		row = tbCalendar.insertRow();
		//테이블에 새로운열 삽입 /
		var cnt = 0; //count, 셀의 갯수 세어주는 역할
		for (i = 0; i < doMonth.getDay(); i++) {
			cell = row.insertCell(); //열 한칸한칸 만들어줌
			cnt = cnt + 1;
		}
		/* for (i = (lastDate.getDate() % 7); i <= 7 - (lastDate.getDate % 7); i++) {
			cell = row.insertCell();
			cnt = cnt + 1;
		} */
		//달력출력
		for (i = 1; i <= lastDate.getDate(); i++) {
			//1일부터 마지막일까지
			cell = row.insertCell();
			cell.innerHTML = i;
			cnt = cnt + 1;
			if (cnt % 7 == 1) { //일요일 계산
				cell.innerHTML = "<font color=#F79DC2>" + i
			}
			if (cnt % 7 == 0) { //토요일 계산
				cell.innerHTML = "<font color=skyblue>" + i
				row = calendar.insertRow();
			}
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				cell.bgColor = "#FAF58C"; //오늘날짜에 색칠
			}
		}

	}
</script>
<link rel="stylesheet" href="${R}res/common.css">
<title>학사행정 메인</title>
<style>
table {
	border-right: none border-left:none border-top:none border-bottom:none
}
</style>
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
