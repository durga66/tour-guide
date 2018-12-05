<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String lcode,lname,placecode,famous,description,remarks,citycode;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
    lcode =request.getParameter("txtlcode");
     lname=request.getParameter("txtlname");
     placecode=request.getParameter("optplacecode");
     famous=request.getParameter("txtfamous");
     description=request.getParameter("txtdescription");
     remarks=request.getParameter("txtremarks");
     citycode=request.getParameter("optcitycode");
     int count=st.executeUpdate("insert into tblLocation values('"+lcode+"','"+lname+"','"+placecode+"','"+famous+"','"+description+"','"+remarks+"','"+citycode+"')");
     out.println("Location Informstion Inserted");
     
%>