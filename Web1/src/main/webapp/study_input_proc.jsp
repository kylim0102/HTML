<%@ page import="java.sql.*"%>
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
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "system", "1234");

		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		String age = request.getParameter("age");

		String sql = " insert into member values (?, ?, ?, ?) ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, password);
		pstmt.setString(3, nickname);
		pstmt.setString(4, age);

		int result = pstmt.executeUpdate();

		if (result > 0) {
			out.println("입력 성공");
		} else {
			out.println("입력 실패");
		}

	} catch (Exception ex) {
		out.println(ex.toString());
	} finally {
		if (pstmt != null)
			try {
		pstmt.close();
			} catch (SQLException e) {
			}
		if (conn != null)
			try {
		conn.close();
			} catch (SQLException e) {
			}
	}
	// response.sendRedirect("study_list.jsp");
	%>
	<br>
	<a href="study_list.jsp">list 가기</a>
	

</body>
</html>