<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppLocation.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblLocation");
%>
<html>
   <body bgcolor="pink">
  
    <center>
        <h1><b>Loaction Report</b></h1>
        <table border="1">
            <tr>
                <th>Location Code</th>
                <th>Location Name</th>
                <th>Place Code</th>
                <th>Famous</th>
                <th>Descrition</th>
                <th>Remarks</th>
                 <th>City Code</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("lcode")%></td>
                 <td><%=rs.getString("lname")%></td>
                 <td><%=rs.getString("placecode")%></td>
                 <td><%=rs.getString("famous")%></td>
                 <td><%=rs.getString("description")%></td>
                <td><%=rs.getString("remarks")%></td>
                  <td><%=rs.getString("citycode")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>