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

<title>장학내역</title>
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
				<td style="width: 85%;">
					<table id="register" class="table table-bordered">
						<colgroup>
							<col width="11%" />
							<col width="11%" />
							<col width="*" />
							<col width="20%" />
							<col width="20%" />
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
	</div>
	<%@ include file="bottom.jsp"%>

</body>
</html>
