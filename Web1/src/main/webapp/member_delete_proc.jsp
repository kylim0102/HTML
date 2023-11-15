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

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "system", "1234");

		String userid = request.getParameter("userid");

		String sql = "DELETE FROM member WHERE userid = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);

		int result = pstmt.executeUpdate();

		if (result > 0) {
			out.println("삭제 성공");
		} else {
			out.println("삭제 실패");
		}

	} catch (Exception ex) {
		out.println(ex.toString());
	} finally {
		try {
			if (pstmt != null)
		pstmt.close();
			if (conn != null)
		conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	%>
	<br>
	<a href="member_list.jsp">list 가기</a>

</body>
</html>