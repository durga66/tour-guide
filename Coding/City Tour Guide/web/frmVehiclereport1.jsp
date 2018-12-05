<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String travelid;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
    travelid=request.getParameter("txttravelid");
    // out.println(travelid);
    //statecode="AP";
    rs=stmt.executeQuery("select * from tblVehicles where travelid='"+travelid+"'");
%>
<html>
    <body>
         <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	
 <center>
        <h1><b>Vehicles Report</b></h1>
        <table border="1">
            <tr>
                <th>Vehicle Id</th>
                <th>Travel Id</th>
                <th>Cabs</th>
                <th>Cab Owner Number</th>
                <th>Buses</th>
                <th>Trains</th>
                <th>Flights</th>
                <th>Auto</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("vehicleid")%></td>
                 <td><%=rs.getString("travelid")%></td>
                 <td><%=rs.getString("cabs")%></td>
                 <td><%=rs.getString("ownerno")%></td>
                 <td><%=rs.getString("buses")%></td>
                 <td><%=rs.getString("trains")%></td>
                 <td><%=rs.getString("flights")%></td>
                 <td><%=rs.getString("auto")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>