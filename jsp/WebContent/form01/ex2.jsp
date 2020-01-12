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
	String i = request.getParameter("number1");
	int number1 = (i==null) ? 0 : Integer.parseInt(i);
	
	String cmd = request.getParameter("cmd");
	if("+".equals(cmd)) number1+=1;
	else if("-".equals(cmd)) number1-=1;

%>
	<div class="container">
		<form method="post">
			<div class="form-group">
				<label>number:</label> 
				<input type="text" class="form-control" name="number1" value=<%=number1%>>
			</div>
			
			<div class="form-group">
				<input type="submit" class="btn btn-primary" name="cmd" value="+">
				<input type="submit" class="btn btn-primary" name="cmd" value="-">
			</div>
		</form>
	</div>


</body>
</html>