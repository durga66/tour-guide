<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String travelid;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     travelid=request.getParameter("opttravelid");
     int count=st.executeUpdate("delete from tblTravel where travelid='"+travelid+"'");
     out.println("Travel Information Deleted");
 %>
