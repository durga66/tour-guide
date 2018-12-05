<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppTravel.jsp"%>

<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
%>    
<%
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select * from tblTravel");
%>
<html>
    <body bgcolor="pink">
    <center>
        <h1>Travel Report</h1>
        <table border="2">
            <tr>
                <th>Travel Id</th>
                <th>Route Code</th>
                <th>City Code</th>
                <th>State Code</th>
                <th>City Name</th>
                <th>District Name</th>
                <th>Available Vehicles</th>
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("travelid")%></td>
                 <td><%=rs.getString("routecode")%></td>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("cityname")%></td>
                 <td><%=rs.getString("distname")%></td>
                 <td><%=rs.getString("avehicles")%></td>
                 <td><%=rs.getString("remarks")%></td>
                 </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>
