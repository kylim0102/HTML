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
    PreparedStatement ps = null;

    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "system", "1234");
        
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

        String sql = "Update students SET pwd=?, username=?, age=?, gender=?, hobby=?, grade=?, intro=? WHERE userid=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, pwd);
        ps.setString(2, username);
        ps.setString(3, age);
        ps.setString(4, gender);
        ps.setString(5, str);
        ps.setString(6, grade);
        ps.setString(7, intro);
        ps.setString(8, userid);

        ps.executeUpdate();
        

   response.sendRedirect("list.jsp");
    
    } catch (Exception ex) {
        out.println(ex.toString());
    } finally {
        try {
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

</body>
</html>