<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String vehicleid;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     vehicleid=request.getParameter("optvehicleid");
     int count=st.executeUpdate("delete from tblVehicles where vehicleid='"+vehicleid+"'");
     out.println("Vehicle Information Deleted");
     %>