<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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

<link rel="stylesheet" href="${R}res/common.css">
<title>개설교과목 조회</title>
<style>
table {
	table-layout: fixed;
	word-break: break-all;
}
</style>
</head>
<body>
	<div class="container">

		<a class="btn btn-light" style="color: black; font-size: 3em;"
			href="${R}user/index">학사행정</a> <a class="btn btn-light btn-xs"
			style="color: black; float: right;" href="${R}user/logout_processing">로그아웃</a>
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
					
					<!-- 교과목개요 -->
					<table style="width:100%;">
						<c:forEach var="subject" items="${ subject }">
							<tr>
								<td bgcolor="E7EEE3" ><b>교과목번호</b></td>
								<td>${subject.id }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3" ><b>이수구분</b></td>
								<td>${subject.classs.name }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3" ><b>교과목명</b></td>
								<td>${subject.name }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3" ><b>학점</b></td>
								<td>${subject.credit }</td>
							</tr>
						</c:forEach>
					</table>
					
					<br />
					
					<!-- 교수+ 교재 + 강의목표! -->
					<table style="width:100%;">
						<c:forEach var="subject" items="${ subject }">
							<tr>
								<td bgcolor="E7EEE3"><b>교수명</b></td>
								<td>${subject.professor.name }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3"><b>주교재</b></td>
								<td>${subject.book }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3"><b>강의개요</b></td>
								<td>${subject.detail }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3"><b>강의목표</b></td>
								<td>${subject.goal }</td>
							</tr>
						</c:forEach>
					</table>
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
