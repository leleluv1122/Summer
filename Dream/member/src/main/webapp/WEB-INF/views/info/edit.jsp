<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script src="${R}res/common.js"></script>
<link rel="stylesheet" href="${R}res/common.css">
<title>회원가입</title>
</head>
<body>
	<div class="container">
		<h1>회원 ${ Info.id > 0 ? "수정" : "가입" }</h1>
		<hr />
		<form:form method="post" modelAttribute="info">
			<div class="form-group">
				<label>아이디:</label>
				<form:input path="id" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>비밀번호:</label>
				<form:input path="password" type="password"
					class="form-control w200" />
			</div>
			<div class="form-group">
				<label>이름:</label>
				<form:input path="name" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>이메일:</label>
				<form:input path="email" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>휴대전화:</label>
				<form:input path="phone" class="form-control w200" />
			</div>
			<div class="form-group">
				<label>성별:</label>
				<form:select path="sex" class="form-control w200">
					<form:option value="남자" label="남자" />
					<form:option value="여자" label="여자" />
				</form:select>
			</div>
			<hr />
			<div>
				<button type="submit" class="btn btn-primary">
					<span class="glyphicon glyphicon-ok"></span> 저장
				</button>

				<a href="list" class="btn btn-info">목록으로</a>
			</div>
		</form:form>
	</div>
</body>
</html>
