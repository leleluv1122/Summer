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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${R}res/index.css">
<title>학사일정</title>
<style>
table {
	table-layout: fixed;
	word-break: break-all;
}
</style>
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
						<a style="color:black;" href="${R}guest/schedule">학사일정</a>
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
					<div class="col-md-8">
						<form:form method="get" modelAttribute="pagination"
							class="form-inline">
							<form:hidden path="pg" value="1" />
							<form:hidden path="sz" />
							<form:select path="sm" class="form-control">
								<form:option value="0">전체</form:option>
								<form:options itemValue="id" itemLabel="name" items="${smm}" />
							</form:select>
							<button type="submit" class="btn btn-default">검색</button>
						</form:form>
						<table id="schedule" class="table table-striped">
							<c:forEach var="s" items="${ list }">
								<tr>
									<td>${s.startmonth.id }.${s.startday }~${s.lastmonth }.${s.lastday }</td>
									<td>${s.detail }</td>
								</tr>
							</c:forEach>
						</table>

						<div style="text-align: center;">
							<my:pagination pageSize="${ pagination.sz }"
								recordCount="${ pagination.recordCount }" queryStringName="pg" />
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
<%@ include file="bottom.jsp"%>
</body>
</html>

