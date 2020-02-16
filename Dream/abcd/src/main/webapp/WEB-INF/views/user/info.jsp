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

<title>학생정보</title>
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
					<table style="width: 50%;">
						<tr>
							<td bgcolor="E7EEE3"><b>이름</b></td>
							<td><sec:authentication property="user.name" /></td>
						</tr>
						<tr>
							<td bgcolor="E7EEE3"><b>학번</b></td>
							<td><sec:authentication property="user.userId" /></td>
						</tr>
						<tr>
							<td bgcolor="E7EEE3"><b>전공</b></td>
							<td><sec:authentication property="user.department.name" /></td>
						</tr>
						<tr>
							<td bgcolor="E7EEE3"><b>이메일</b></td>
							<td><sec:authentication property="user.email" /></td>
						</tr>
						<tr>
							<td bgcolor="E7EEE3"><b>전화번호</b></td>
							<td><sec:authentication property="user.phone" /></td>
						</tr>
						<tr>
							<td bgcolor=E7EEE3><b>주소</b></td>
							<td><sec:authentication property="user.address" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<%@ include file="bottom.jsp"%>

</body>
</html>
