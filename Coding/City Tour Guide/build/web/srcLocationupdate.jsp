<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String lcode,lname,placecode,famous,description,remarks,citycode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     lcode=request.getParameter("optlcode");
     lname=request.getParameter("txtlname");
     placecode=request.getParameter("txtplacecode");
     famous=request.getParameter("txtfamous");
     description=request.getParameter("txtdescription");
     remarks=request.getParameter("txtremarks");
     citycode=request.getParameter("txt citycode");
     int count=stmt.executeUpdate("update tblLocation set lcode='"+lcode+"',lname='"+lname+"',placecode='"+placecode+"',famous='"+famous+"',description='"+description+"',remarks='"+remarks+"',citycode='"+citycode+"' where lcode='"+lcode+"'");
     if(count!=0)
     out.println("Location Informstion Updated");
%>
