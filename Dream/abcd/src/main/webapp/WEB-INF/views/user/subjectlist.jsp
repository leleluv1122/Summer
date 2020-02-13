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
						href="${R}user/register">취득성적(학기)</a>
				</sec:authorize></span><span><sec:authorize access="authenticated">
					<a class="btn btn-light" style="color: black"
						href="${R}user/allregister">취득성적</a>
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
				<td><form:form method="get" modelAttribute="pagination"
						class="form-inline">
						<form:hidden path="pg" value="1" />
						<form:hidden path="sz" />
						<span>학과:</span>
						<form:select path="di" class="form-control">
							<form:option value="0">전체</form:option>
							<form:options itemValue="id" itemLabel="name"
								items="${ departments }" />
						</form:select>
						<button type="submit" class="btn btn-default">검색</button>
					</form:form>

					<table id="subject" class="table table-bordered">
						<colgroup>
							<col width="8%" />
							<col width="8%" />
							<col width="15%" />
							<col width="8%" />
							<col width="23%" />
							<col width="11%" />
							<col width="*" />
							<col width="8%" />
						</colgroup>
						<thead>
							<tr>
								<th>연도</th>
								<th>학기</th>
								<th>학부/과</th>
								<th>학년</th>
								<th>교과목명</th>
								<th>과목코드</th>
								<th>이수구분</th>
								<th>학점</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="subject" items="${ list }">
								<tr>
									<td>${ subject.year }</td>
									<td>${ subject.term }</td>
									<td>${ subject.department.name }</td>
									<td>${ subject.grade }</td>
									<td><a class="btn btn-light" style="color: black"
										href="${R}user/subjectdetail/${subject.id}">${ subject.name }</a></td>
									<%-- <td onclick="location.href='/user/subjectdetail/${subject.id}'">${ subject.name }</td> --%>
									<td>${ subject.id }</td>
									<td>${ subject.classs.name }</td>
									<td>${ subject.credit }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table></td>
			</tr>
		</table>
		<my:pagination pageSize="${ pagination.sz }"
			recordCount="${ pagination.recordCount }" queryStringName="pg" />

		<div class="footer">
			<a href="http://www.hansei.ac.kr"> <img
				src="/resources/static/images/logo.jpg" /></a>
			<div>15852 경기도 군포시 한세로 30 한세대학교 / 지하철 1호선 당정역 031-450-5114</div>
			<div>Copyright (c) Han-Sei Univisity. All rights reserved.</div>
		</div>
	</div>

</body>
</html>
