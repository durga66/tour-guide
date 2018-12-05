<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
     
    String  travelid,routecode,citycode,statecode,cityname,distname,avehicles,remarks;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
    travelid=request.getParameter("opttravelid");
     routecode=request.getParameter("txtroutecode");
     citycode=request.getParameter("txtcitycode");
    statecode=request.getParameter("txtstatecode");
    cityname=request.getParameter("txtcityname");
     distname=request.getParameter("txtdistname");
     avehicles=request.getParameter("txtavehicles");
   remarks=request.getParameter("txtremarks ");
    
     int count=st.executeUpdate("update tblTravel set routecode='"+routecode+"',citycode='"+citycode+"',statecode='"+statecode+"',cityname='"+cityname+"',distname='"+distname+"',avehicles='"+avehicles+"',remarks='"+remarks+"' where travelid='"+travelid+"'");
     out.println("Travel Information Updated");
%>
