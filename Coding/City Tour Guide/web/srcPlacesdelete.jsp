<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String placecode;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     placecode=request.getParameter("optplacecode");
     int count=st.executeUpdate("delete from tblPlaces where placecode='"+placecode+"'");
     out.println("Place Information Deleted");
     %>