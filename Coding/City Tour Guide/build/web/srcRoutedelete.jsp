<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String routecode;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     routecode=request.getParameter("optroutecode");
     int count=st.executeUpdate("delete from tblRoute where routecode='"+routecode+"'");
     out.println("Route Information Deleted");
     %>


