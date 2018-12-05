<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String sno;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:","tourguide","durga");
     stmt=conn.createStatement();
     stmt=conn.createStatement();
     sno=request.getParameter("optsno");
     int count=stmt.executeUpdate("delete from  tblTouristneeds where sno='"+sno+"'");
     out.println("Deleted Touristneeds Information");
     
%>
