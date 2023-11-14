<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String language = request.getParameter("language");
String reason = request.getParameter("reason");
int languageCount = Integer.parseInt(request.getParameter("languageCount"));
	
out.println("자신 있는 언어 : " + language);
out.println("자신 있는 이유 : " + reason);
out.println("공부하였던 언어의 개수 : " + languageCount);
	
%>

<h3>데이터 전송 확인</h3>
<a href="formex_a.jsp">이전으로 이동하기</a>

</body>
</html>