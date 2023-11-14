<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<%
        int i = 1;
        for (int j = 0; j < 20; j++, i++) {
            if (i % 5 == 1) {
        %>
		<tr>
			<td><%= i %></td>
			<%
            } else if (i % 5 == 0) {
               
        %>
			<td><%= i %></td>
		</tr>
		<%
            } else {
        %>
		<td><%= i %></td>
		<%
            }
        }
        %>
	</table>
</body>
</html>