<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<c:url var="R" value="/" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${R}res/index.css">
<title>학사행정 메인</title>
<style>
table {
	table-layout: fixed;
	word-break: break-all;
}
</style>
<!-- 
<script>
	var today = new Date(); //오늘 날짜
	var M = document.getElementById("M");
	M.innerHTML = (today.getMonth() + 1) + "월";
</script> -->
</head>
<body>
	<div class="container">

		<a class="btn btn-light" style="color: black; font-size: 3em;"
			href="${R}guest/index">학사행정</a> <a class="btn btn-light btn-xs"
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
				<td
					style="width: 15%; vertical-align: top; border-right: 1px solid #ddd;">
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
				<td style="width: 85%;"><br />
					<div class="col-md-8">
						<form:form method="get" modelAttribute="pagination"
							class="form-inline">
							<form:hidden path="pg" value="1" />
							<form:hidden path="sz" />
							<form:select path="sm" class="form-control">
								<form:option value="0">전체</form:option>
								<form:options itemValue="id" itemLabel="name" 
								items="${smm}" />
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
					</div></td>

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


<%-- <td style="width: 85%;">
					<div class="col-md-8">
						<table class="table table-striped">
							<h2>2월</h2>
							<c:forEach var="s" items="${ schedule }">
								<c:if test="${s.startmonth == '2'}">
									<tr>
										<td>${s.startmonth }.${s.startday }~${s.lastmonth }.${s.lastday }</td>
										<td>${s.detail }</td>
									</tr>
								</c:if>
							</c:forEach>
						</table>
					</div>
				</td> --%>


<%-- <td style="width: 85%;">
					<div class="col-md-8">
						<table class="table table-striped">
							<h2>2월</h2>
							<c:forEach var="s" items="${ list }">
								<c:if test="${s.startmonth == '2'}">
									<tr>
										<td>${s.startmonth }.${s.startday }~${s.lastmonth }.${s.lastday }</td>
										<td>${s.detail }</td>
									</tr>
								</c:if>
							</c:forEach>
						</table>

						<div style="text-align: center;">
							<my:pagination pageSize="${ pagination.sz }"
								recordCount="${ pagination.recordCount }" queryStringName="pg" />
						</div>
					</div>

				</td> --%>