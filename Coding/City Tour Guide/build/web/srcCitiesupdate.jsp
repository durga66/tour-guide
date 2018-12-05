<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String citycode,statecode,cityname,distname,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     citycode=request.getParameter("optcitycode");
     statecode=request.getParameter("txtstatecode");
     cityname=request.getParameter("txtcityname");
     distname=request.getParameter("txtdistname");
     remarks=request.getParameter("txtremarks");
     int count=stmt.executeUpdate("update tblCities set citycode='"+citycode+"',cityname='"+cityname+"',distname='"+distname+"',remarks='"+remarks+"' where citycode='"+citycode+"'");
    
     out.println("City Information Updated");
%>
