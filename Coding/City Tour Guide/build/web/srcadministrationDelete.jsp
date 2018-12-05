<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String Id;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     Id=request.getParameter("txtId");
     int count=stmt.executeUpdate("delete from tblAdmin where id='"+Id+"'");
     out.println("admin data deleted");
     
%>