<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String citycode,statecode,cityname,distname,remarks;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     citycode =request.getParameter("txtcitycode");
     statecode=request.getParameter("optstatecode");
     cityname=request.getParameter("txtcityname");
     distname=request.getParameter("txtdistname");
     remarks=request.getParameter("txtremarks");
     int count=st.executeUpdate("insert into tblCities values('"+citycode+"','"+statecode+"','"+cityname+"','"+distname+"','"+remarks+"')");
     out.println("City Information Inserted");
     
%>
