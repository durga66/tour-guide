<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String placecode,placename,citycode,remarks;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     placecode =request.getParameter("txtplacecode");
     placename=request.getParameter("txtplacename");
     citycode=request.getParameter("optcitycode");
     remarks=request.getParameter("txtremarks");
     int count=st.executeUpdate("insert into tblPlaces values('"+placecode+"','"+placename+"','"+citycode+"','"+remarks+"')");
     out.println("Place Information Inserted");
     
%>