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
<title>사용자 정보</title>
</head>
<body>
	<div class="container">
		<h1>학생 정보 뚜루룽</h1>
		<hr />
		<table class="table table-bordered" style="width: 500px;">

			<tr>
				<td>이름</td>
				<td><sec:authentication property="user.name" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><sec:authentication property="user.email" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><sec:authentication property="user.phone" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><sec:authentication property="user.address" /></td>
			</tr>
		</table>
	</div>
</body>
</html>