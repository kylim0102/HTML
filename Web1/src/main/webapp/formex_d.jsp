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
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String data3 = request.getParameter("data3");
		String data4 = request.getParameter("data4");
		String[] data5 = request.getParameterValues("data5");
		String data6 = request.getParameter("data6");
		String data7 = request.getParameter("data7");
		String data8 = request.getParameter("data8");
		String data9 = request.getParameter("data9");
		String data10 = request.getParameter("data10");
	%>	
	<fieldset>
		<p>1. 텍스트 : <%=data1 %></p>
		<p>2. 패스워드 : <%=data2 %></p>
		<p>3. 라디오 : <%=data3 %></p>
		<p>4. 셀렉트 : <%=data4 %></p>
		<p>5. 체크박스 : 
			<% 
				for(int i = 0; i<data5.length; i++) {
					out.println(data5[i]);
				}
			%>
		</p>
		<p>6. 텍스트에어리어 : <%=data6 %></p>
		<p>7. 히든 : <%=data7 %></p>
		<p>8. 이메일 : <%=data8 %></p>
		<p>9. 날짜 : <%=data9 %></p>
		<p>10. 숫자 : <%=data10 %></p>
	</fieldset>	   
</body>
</html>