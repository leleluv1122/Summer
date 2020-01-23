<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        rel="stylesheet" media="screen">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="${R}res/common.js"></script>
  <link rel="stylesheet" href="${R}res/common.css">
</head>
<body>
<div class="container">
  <h1>회원목록</h1>
  <div class="pull-right mb5">
  <a href="create" class="btn btn-info">
    <span class="glyphicon glyphicon-user"></span> 회원가입</a>
  </div>    
  <table class="table table-bordered mt5">
    <thead>
      <tr>
        <th>id</th>
        <th>이름</th>
        <th>이메일</th>
        <th>성별</th>
        <th>휴대폰 번호</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="info" items="${ infomation }">
        <tr data-url="edit?id=${ info.id }">
          <td>${ info.id }</td>
          <td>${ info.name }</td>
          <td>${ info.email }</td>
          <td>${ info.sex }</td><%-- 
          <td><fmt:formatDate pattern = "yyyy-MM-dd" value="${ info.birth }" /></td> --%>
          <td>${ info.phone }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
