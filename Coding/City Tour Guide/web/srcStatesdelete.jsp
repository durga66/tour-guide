<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String statecode;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     statecode=request.getParameter("optstatecode");
     int count=st.executeUpdate("delete from tblStates where statecode='"+statecode+"'");
     out.println("State Information Deleted");
     %>