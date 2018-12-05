<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String lcode;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     lcode=request.getParameter("optlcode");
     int count=st.executeUpdate("delete from tblLocation where lcode='"+lcode+"'");
     out.println("Location Informstion Deleted");
     %>