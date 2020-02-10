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
<title>학생 정보</title>
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
					<table id="register" class="table table-bordered">
						<colgroup>
							<col width="8%" />
							<col width="8%" />
							<col width="12%" />
							<col width="23%" />
							<col width="*" />
						</colgroup>
						<thead>
							<tr>
								<th>연도</th>
								<th>학기</th>
								<th>과목코드</th>
								<th>교과목명</th>
								<th>이수구분</th>
								<th>학점</th>
								<th>등급</th>
								<th>교수명</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="register" items="${ register }">
								<tr>
									<c:if test="${register.user.id == '1' }">
										<td>${ register.year }</td>
										<td>${ register.term }</td>
										<td>${ register.subject.id }</td>
										<td>${ register.subject.name }</td>
										<td>${ register.subject.classs.name }</td>
										<td>${ register.subject.credit }</td>
										<td>${ register.grade }</td>
										<td>${ register.subject.professor.name }</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table> <br />

					<table style="width: 100%;">
						<thead>
							<tr>
								<th style="text-align: center">전공기초</th>
								<th style="text-align: center">전공선택</th>
								<th style="text-align: center">전공필수</th>
								<th style="text-align: center">교양필수</th>
								<th style="text-align: center">교양선택</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="register" items="${ register }">

								<tr>
									<c:if test="${register.user.id == '1' }">
											
										<%-- <c:if test="${subjectcount.id == '1' }">
											<td>${subjectcount.name }</td>
											<td>${subjectcount.c}</td>
										</c:if> --%>
										<%-- <td>${register.subject.classs.name == '전공선택' }</td>
										<td>${register.subject.classs.name == '전공필수' }</td> --%>
										<!-- <td>망함</td>
										<td>rere</td> -->
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