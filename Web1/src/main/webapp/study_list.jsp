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
		<tr align="center">
			<td style="background-color : red; padding : 5px;">아이디</td>
			<td style="background-color : orange; padding : 5px;">비밀번호</td>
			<td style="background-color : yellow; padding : 5px;">닉네임</td>
			<td style="background-color : green; padding : 5px;">나이</td>
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
				String password = rs.getString("pwd");
				String nickname = rs.getString("nick");
				String age = rs.getString("age");
		%>

		<tr align="center">
			<td style="background-color : red; padding : 5px;"><%= userid %></td>
			<td style="background-color : orange; padding : 5px;"><%= password %></td>
			<td style="background-color : yellow; padding : 5px;"><%= nickname %></td>
			<td style="background-color : green; padding : 5px;"><%= age %></td>
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