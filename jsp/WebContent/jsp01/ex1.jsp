<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=1>
	<%
		for(int i=1;i<10;i++){
			out.println("<tr>");
			for(int j=2;j<10;j++){
				out.println("<td>");
				out.println(i + "*" + j+ "=");
				out.println((i*j) +"</td>" );
			}
			out.println("</tr>");
		}
	%>
	</table>

</body>
</html>