<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String routecode,citycode,statecode,cityname,distname,source,destination,direction,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     routecode=request.getParameter("optroutecode");
     citycode=request.getParameter("optcitycode");
     statecode=request.getParameter("txtstatecode");
     cityname=request.getParameter("txtcityname");
     distname=request.getParameter("txtdistname");
     source=request.getParameter("txtsource");
     destination=request.getParameter("txtdestination");
  
     remarks=request.getParameter("txtremarks");
     int count=stmt.executeUpdate("update tblRoute set routecode='"+routecode+"',citycode='"+citycode+"',statecode='"+statecode+"',cityname='"+cityname+"',distname='"+distname+"',source='"+source+"',destination='"+destination+"',remarks='"+remarks+"' where routecode='"+routecode+"'");
    
     out.println("Route Information Updated");
%>

