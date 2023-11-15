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
	<table border=1>
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>나이</td>
		</tr>

		<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "system", "1234");

			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String userid = rs.getString("userid");
				String pwd = rs.getString("pwd");
				String nick = rs.getString("nick");
				String age = rs.getString("age");
		%>

		<tr>
			<td><%= userid %></td>
			<td><%= pwd %></td>
			<td><%= nick %></td>
			<td><%= age %></td>
		</tr>
		<%
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
		%>
	</table>
</body>
</html>