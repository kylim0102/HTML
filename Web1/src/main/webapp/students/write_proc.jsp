<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    String sql = "";
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String username = request.getParameter("username");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String[] hobby = request.getParameterValues("hobby");
    String grade = request.getParameter("grade");
    String intro = request.getParameter("intro");
    String str = "";
	if(hobby != null){
    for(int i=0; i<hobby.length; i++)
    {
       str += hobby[i];
       
       if(hobby.length-1 > i){
           str +=",";
       }
    }
	}
    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "system", "1234");
        
        sql = "SELECT count(*) as cnt FROM students WHERE userid=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userid);
        rs = pstmt.executeQuery();
        rs.next();
        
        int cnt = rs.getInt("cnt");
        rs.close();
        
        if(cnt > 0)
        {
    %>
        <script>
            alert('아이디가 중복되었습니다.');
            history.back();
        </script>
    <%
        }
        else
        {
            sql = "INSERT INTO students (userid, pwd, username, age, gender, hobby, grade, intro, regdate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            pstmt.setString(2, pwd);
            pstmt.setString(3, username);
            pstmt.setString(4, age);
            pstmt.setString(5, gender);
            pstmt.setString(6, str);
            pstmt.setString(7, grade);
            pstmt.setString(8, intro);

            pstmt.executeUpdate();
            response.sendRedirect("list.jsp");
        }
    } catch (Exception e) {
        out.println(e.toString());
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            out.println(e.toString());
        }
    }
    
    %>
</body>
</html>