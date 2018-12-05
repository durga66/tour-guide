<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
   
     String travelid,routecode,citycode,statecode,cityname,distname,avehicles,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     travelid=request.getParameter("txttravelid");
     routecode=request.getParameter("optroutecode");
     citycode=request.getParameter("txtcitycode");
    statecode=request.getParameter("txtstatecode");
    cityname=request.getParameter("txtcityname");
     distname=request.getParameter("txtdistname");
     avehicles=request.getParameter("txtavehicles");
   remarks=request.getParameter("txtremarks");
     int count=stmt.executeUpdate("insert into tblTravel values('"+travelid+"','"+routecode+"','"+citycode+"','"+statecode+"','"+cityname+"','"+distname+"','"+avehicles+"','"+remarks+"')");
     out.println("Travel Information Inserted");
     
%>