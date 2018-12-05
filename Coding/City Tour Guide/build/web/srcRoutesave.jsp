<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
     String routecode,citycode,statecode,cityname,distname,source,destination,remarks;
    %>
    <%
     Class.forName("oracle.jdbc.driver.OracleDriver");
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
     int count=stmt.executeUpdate("insert into tblRoute values('"+routecode+"','"+citycode+"','"+statecode+"','"+cityname+"','"+distname+"','"+source+"','"+destination+"','"+remarks+"')");
     out.println("Route Information Inserted");
     
%>
