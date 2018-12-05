<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String placecode,placename,citycode,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     placecode=request.getParameter("optplacecode");
     placename=request.getParameter("txtplacename");
     citycode=request.getParameter("txtcitycode");
     remarks=request.getParameter("txtremarks");
     int count=stmt.executeUpdate("update tblPlaces set placecode='"+placecode+"',placename='"+placename+"',citycode='"+citycode+"',remarks='"+remarks+"' where placecode='"+placecode+"'");
     if(count!=0)
     out.println("Place Information Updated");
%>
