<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    String vehicleid,travelid,cabs,ownerno,buses,trains,flights,auto;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     vehicleid=request.getParameter("optvehicleid");
     travelid=request.getParameter("txttravelid");
     cabs=request.getParameter("txtcabs");
     ownerno=request.getParameter("txtownerno");
      buses=request.getParameter("txtbuses");
       trains=request.getParameter("txttrains");
        flights=request.getParameter("txtflights");
     auto=request.getParameter("txtauto");
     int count=stmt.executeUpdate("update tblVehicles set travelid='"+travelid+"',cabs='"+cabs+"',ownerno='"+ownerno+"',buses='"+buses+"',trains='"+trains+"',flights='"+flights+"',auto='"+auto+"' where vehicleid='"+vehicleid+"'");
    
     out.println("Updated Vehicle Information");
%>
