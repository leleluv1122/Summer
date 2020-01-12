<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	body { font-family: 굴림체; }
	input.form-control { width: 200px; }
</style>
</head>
<body>
	<%
		String number1 = request.getParameter("number1");
		String r1 = request.getParameter("radio1");
		String cmd = request.getParameter("cmd");
		
		if("one".equals(cmd)) number1 = "one";
		else if("two".equals(cmd)) number1 = "two";
		else if("three".equals(cmd)) number1 = "three";
	%>

	<div class="container">
		<form method="get">
			<div class="form-group">
				<label>select1:</label> <select name="cmd" class="form-control">
					<option value="one">one</option>
					<option value="two">two</option>
					<option value="three">three</option>
				</select>
			</div>

			<div class="radio">
				<label> <input type="radio" name="radio1" value="one" />
					one
				</label>
			</div>
			<div class="radio">
				<label> <input type="radio" name="radio1" value="two" />
					two
				</label>
			</div>
			<div class="radio">
				<label> <input type="radio" name="radio1" value="three" />
					three
				</label>
			</div>
			<div class="form-group">
				<input type="text" name="number1" class="form-control"
					value="<%=cmd%>">
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-primary">확인</button>
			</div>
		</form>
	</div>
</body>
</html>