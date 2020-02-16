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

<title>교과목정보</title>
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
					<!-- 교과목개요 -->
					<table style="width: 100%;">
						<colgroup>
							<col width="20%" />
							<col width="*" />
						</colgroup>
						<c:forEach var="subject" items="${ subject }">
							<tr>
								<td bgcolor="E7EEE3"><b>교과목번호</b></td>
								<td>${subject.id }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3"><b>이수구분</b></td>
								<td>${subject.classs.name }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3"><b>교과목명</b></td>
								<td>${subject.name }</td>
							</tr>
							<tr>
								<td bgcolor="E7EEE3"><b>학점</b></td>
								<td>${subject.credit }</td>
							</tr>
						</c:forEach>
					</table> <br /> <!-- 교수+ 교재 + 강의목표! -->
					<table style="width: 100%;">
						<colgroup>
							<col width="20%" />
							<col width="*" />
						</colgroup>
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
	</div>
<%@ include file="bottom.jsp"%>
</body>
</html>
