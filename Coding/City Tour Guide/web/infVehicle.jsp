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
      vehicleid=request.getParameter("optvehicleid");
      ResultSet rs=st.executeQuery("select * from tblVehicles where vehicleid='"+vehicleid+"'");
      while(rs.next())
     {
      vehicleid=rs.getString("vehicleid");
      travelid =rs.getString("travelid");
      cabs=rs.getString("cabs");
      ownerno=rs.getString("ownerno");
       buses=rs.getString("buses");
        trains=rs.getString("trains");
         flights=rs.getString("flights");
     auto=rs.getString("auto");
     String s=vehicleid+","+travelid+","+cabs+","+ownerno+","+buses+","+trains+","+flights+","+auto;
       out.println(s);
     }
 %>
