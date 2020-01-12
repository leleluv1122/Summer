<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	td {
		padding: 10px;
		border : solid 1px black;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<% for(int j=2;j<6;++j){ %>
			<td>
				<% for(int i=1;i<10;++i){ %> 
					<%=j %> * <%=i %> = <%=j*i %> <br>
				<%} %>
			</td>
			<%} %>
		</tr>
		
		<tr>
			<% for(int j=6;j<10;++j){ %>
			<td>
				<% for(int i=1;i<10;++i){ %> 
					<%=j %> * <%=i %> = <%=j*i %> <br>
				<%} %>
			</td>
			<%} %>
		</tr>
	</table>
</body>
</html>