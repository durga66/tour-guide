<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String countrycode,statecode,statename,remarks;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     countrycode =request.getParameter("txtcountrycode");
     statecode=request.getParameter("txtstatecode");
     statename=request.getParameter("txtstatename");
     remarks=request.getParameter("txtremarks");
     int count=st.executeUpdate("insert into tblStates values('"+countrycode+"','"+statecode+"','"+statename+"','"+remarks+"')");
     out.println("State Information Inserted");
     
%>