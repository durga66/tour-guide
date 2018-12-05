<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String countrycode,statecode,statename,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     countrycode=request.getParameter("txtcountrycode");
     statecode=request.getParameter("optstatecode");
     statename=request.getParameter("txtstatename");
     remarks=request.getParameter("txtremarks");
     int count=stmt.executeUpdate("update tblStates set countrycode='"+countrycode+"',statename='"+statename+"',remarks='"+remarks+"' where statecode='"+statecode+"'");
     if(count!=0)
     out.println("State Information Updated");
%>
