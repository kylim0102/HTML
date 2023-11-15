<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
   String driver ="oracle.jdbc.driver.OracleDriver";
   String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
 
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   try
   {
      Class.forName(driver);
      conn = DriverManager.getConnection(url, "system", "1234");
      
      /*
      String sql = "select * from member";
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery(sql);
      
      while (rs.next()) {
         out.println(rs.getString("userid"));
         out.println(rs.getString("pwd"));
         out.println(rs.getString("nick"));
         out.println(rs.getInt("age"));
      }
      */
      
      String userid = "kkk";
      String pwd = "aaa";
      String nick = "전지현";
      int age = 22;

      String sql = " insert into member values (?, ?, ?, ?) ";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userid);
      pstmt.setString(2, pwd);
      pstmt.setString(3, nick);
      pstmt.setInt(4, age);
      
      int result = pstmt.executeUpdate();
      
      if(result > 0)
      {
         out.println("입력 성공");
      }
      else
      {
         out.println("입력 실패");
      }
      
   } catch(Exception ex) {
      out.println(ex.toString());
   } finally {
         if(pstmt != null) try { pstmt.close(); } catch(SQLException e){}
         if(conn != null) try { conn.close(); } catch(SQLException e){}
   }
%>   


</body>
</html>