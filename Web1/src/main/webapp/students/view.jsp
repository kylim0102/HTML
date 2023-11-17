<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 정보 보기</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
        String userid = request.getParameter("userid");

        Class.forName(driver);
        conn = DriverManager.getConnection(url, "system", "1234");

        String sql = "SELECT * FROM students WHERE userid = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userid);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            
            String username = rs.getString("username");
            String age = rs.getString("age");
            String pwd = rs.getString("pwd");
            String gender = rs.getString("gender");
            String hobby = rs.getString("hobby");
            String grade = rs.getString("grade");
            String intro = rs.getString("intro");
            String regdate = rs.getString("regdate");
%>

    <table border=1 align="center" width="800">
        <tr>
            <th width="100">이름</th>
            <td width="100px" align="center"><%= username %></td>
        </tr>
        <tr>
            <th width="100">나이</th>
            <td width="100px" align="center"><%= age %></td>
        </tr>
        <tr>
            <th width="100">아이디</th>
            <td width="100px" align="center"><%= userid %></td>
        </tr>
        <tr>
            <th width="100">비밀번호</th>
            <td width="100px" align="center"><%= pwd %></td>
        </tr>
        <tr>
            <th width="100">성별</th>
            <td width="100px" align="center"><%= gender %></td>
        </tr>
        <tr>
            <th width="100">취미</th>
            <td width="100px" align="center"><%= hobby %></td>
        </tr>
        <tr>
            <th width="100">영어등급</th>
            <td width="100px" align="center"><%= grade %></td>
        </tr>
        <tr>
            <th width="100">자기소개</th>
            <td width="100px" align="center"><%= intro %></td>
        </tr>
        <tr>
            <th width="100">등록일</th>
            <td width="100px" align="center"><%= regdate %></td>
        </tr>
    </table>
    <table align="center" width="800">
        <tr>
            <td align="right">|<a href="list.jsp">학생 정보 리스트</a>| |<a
                href="modify.jsp?userid=<%= userid %>">학생 정보 수정</a>| |<a href="delete.jsp?userid=<%= userid %>">학생 정보 삭제</a>|
            </td>
        </tr>
    </table>
<%
        }
    } catch (Exception e) {
        out.println(e.toString());
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
%>
</body>
</html>