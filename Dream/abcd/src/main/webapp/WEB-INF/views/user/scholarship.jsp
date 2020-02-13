<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>장학 내역</title>
<link rel="stylesheet" href="${R}res/common.css">
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
			style="color: black; float: right;" href="logout_processing">로그아웃</a>
		<a class="btn btn-light btn-xs" href="${R}user/info"
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
						href="${R}user/register">취득성적(학기)</a>
				</sec:authorize></span><span><sec:authorize access="authenticated">
					<a class="btn btn-light" style="color: black"
						href="${R}user/allregister">취득성적</a>
				</sec:authorize></span> <span><sec:authorize access="authenticated">
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
					<p>
						치킨
						
					</p>
				</td>
				<td>
					<table id="register" class="table table-bordered">
						<colgroup>
							<col width="8%" />
							<col width="8%" />
							<col width="*" />
							<col width="12%" />
							<col width="16%" />
						</colgroup>
						<thead>
							<tr>
								<th>연도</th>
								<th>학기</th>
								<th>장학명</th>
								<th>장학금</th>
								<th>지급유형</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="s" items="${ scholarship }">
								<tr>
									<sec:authentication property="user.userId" var="currentUserId" />
									<c:if test="${currentUserId == s.user.userId}">
										<td>${ s.year }</td>
										<td>${ s.term }</td>
										<td>${ s.detail }</td>
										<td>${ s.money }</td>
										<td>${ s.type }</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
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