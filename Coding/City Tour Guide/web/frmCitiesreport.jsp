<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppCities.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblCities");
%>
<html>
    <body bgcolor="pink">
  
    <center>
        <h1><b>Cities Report</b></h1>
       
        <table border="1">
            <tr>
                <th>City Code</th>
                <th>State Code</th>
                <th>City Name</th>
                <th>Dist Name</th>
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("cityname")%></td>
                 <td><%=rs.getString("distname")%></td>
                 <td><%=rs.getString("remarks")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
              
    </body>
</html>