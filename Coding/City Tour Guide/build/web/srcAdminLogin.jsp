<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String Id,Password;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     Id=request.getParameter("txtId");
     Password=request.getParameter("pwdPassword");
     rs=stmt.executeQuery("select * from tblAdmin where Id='"+Id+"' and Password='"+Password+"'");
         if(rs.next())
         {
             session.setAttribute("Id",Id);
             response.sendRedirect("Admin.jsp");
         }
         else
         {
             out.println("Id wrong");
             response.sendRedirect("index.html");
         }
     
%>
