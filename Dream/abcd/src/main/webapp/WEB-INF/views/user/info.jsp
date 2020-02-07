<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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
	<table class="table table-bordered" style="width: 500px;">
		<tr>
			<td>로그인ID</td>
			<td><sec:authentication property="user.loginId" /></td>
		</tr>
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
			<td><sec:authentication property="userinfo.phone" /></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><sec:authentication property="userinfo.address" /></td>
		</tr>
		<tr>
			<td>전공</td>
			<td><sec:authentication property="user.departments.name" /></td>
		</tr>
	</table>
</body>
</html>