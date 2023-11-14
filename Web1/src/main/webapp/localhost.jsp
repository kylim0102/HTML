<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
클라이언트 IP= <%= request.getRemoteAddr() %> <br>
클라이언트 IP2 = <%= Inet4Address.getLocalHost().getHostAddress()%>
서버포트 = <%= request.getServerPort() %> <br>
컨텍스트 경로 = <%= request.getContextPath() %> <br>
요청 URI = <%= request.getRequestURI() %> <br>
요청 HTTP 메서드 = <%= request.getMethod() %> <br>
HTTP 요청 정보 길이 = <%= request.getContentLength() %> <br>
요청정보 인코딩 = <%= request.getCharacterEncoding() %> <br>
요청정보 콘텐츠 타입 = <%= request.getContentType() %> <br>
요청정보 프로토콜 = <%= request.getProtocol() %> <br>
서버이름 = <%= request.getServerName() %> <br>
 </body>
</html>