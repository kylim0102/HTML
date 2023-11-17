<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<table border=1 align="center" width="800">
		<tr align="center">
			<th width="100">아이디</th>
			<th width="100">이름</th>
			<th width="100">성별</th>
			<th width="100">등록일</th>
			<% 
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            String driver = "oracle.jdbc.driver.OracleDriver";
            String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
            
            Class.forName(driver);
            conn = DriverManager.getConnection(url, "system", "1234");
            
            String sql = "select * from students order by userid asc";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            
            while(rs.next()) {
                String userid = rs.getString("userid");
                String username = rs.getString("username");
                String gender = rs.getString("gender");
                String date = rs.getString("regdate");
        %>
		
		<tr>
			<td align="center"><a href="view.jsp?userid=<%= userid %>"><%= userid %></a></td>
			<td align="center"><%= username %></td>
			<td align="center"><%= gender %></td>
			<td align="center" width="200"><%= date %></td>
		</tr>
		<%
            }
        } catch (Exception ex) {
            out.println(ex.toString());
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        %>
		</tr>
		<tr>

		</tr>
	</table>
	<table align="center" width="800">
		<tr>
			<td align="right">|<a href="write.jsp">학생 정보 입력</a>|
			</td>
		</tr>
	</table>
</body>
</html>