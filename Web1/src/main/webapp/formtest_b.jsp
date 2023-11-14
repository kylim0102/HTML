<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 정보 출력 폼</title>
</head>
<body>
입력한 이름 : <%= request.getParameter("userName") %><br>
입력한 나이 : <%= request.getParameter("age") %><br>
<%
	String[] hobbies = request.getParameterValues("hobby");
	for(int i =0; i<hobbies.length; i++){
%>
	취미<%= i + 1 %> = <%= hobbies[i] %><br>
<%
	}
%>
</body>
</html>