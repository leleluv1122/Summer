<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<c:url var="R" value="/" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="${R}res/index.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
table {
	table-layout: fixed;
	word-break: break-all;
}
</style>

<title>개설교과목조회</title>
</head>
<body>
<%@ include file="nav.jsp"%>
	<div class="container">
		<table>
			<tr>
				<td
					style="width: 15%; vertical-align: top; border-right: 1px solid #ddd;">
					<hr />
					<p>
						<a style="color:black;" href="${R}user/schedule">학사일정</a>
					</p>
					<p>뀨뀨</p>
					<p>뜌잇</p>
					<p>러러쨩</p>
					<p>흠냐링</p>
					<p>뉴뉴</p>
					<p>초밥</p>
					<p>치킨</p>
				</td>
				<td style="width: 85%;"><form:form method="get"
						modelAttribute="pagination" class="form-inline">
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
					</table>
					<div style="text-align: center;">
						<my:pagination pageSize="${ pagination.sz }"
							recordCount="${ pagination.recordCount }" queryStringName="pg" />
					</div></td>
			</tr>
		</table>
	</div>
<%@ include file="bottom.jsp"%>
</body>
</html>
