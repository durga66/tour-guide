<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String vehicleid,travelid,cabs,ownerno,buses,trains,flights,auto;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     vehicleid =request.getParameter("txtvehicleid");
    travelid=request.getParameter("opttravelid");
     cabs=request.getParameter("txtcabs");
     ownerno=request.getParameter("txtownerno");
     buses=request.getParameter("txtbuses");
      trains=request.getParameter("txttrains");
       flights=request.getParameter("txtflights");
        auto=request.getParameter("txtauto");
     int count=st.executeUpdate("insert into tblVehicles values('"+vehicleid+"','"+travelid+"','"+cabs+"','"+ownerno+"','"+buses+"','"+trains+"','"+flights+"','"+auto+"')");
     out.println("Inserted Vehicle Information");
     
%>
