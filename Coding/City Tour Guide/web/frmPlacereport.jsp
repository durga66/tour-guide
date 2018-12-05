<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppPlaces.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblPlaces");
%>
<html>
      <body bgcolor="pink">
  
    <center>
        <h1><b>Places Report</b></h1>
        <table border="1">
            <tr>
                <th>Place Code</th>
                <th>Place Name</th>
                <th>City Code</th>
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("placecode")%></td>
                 <td><%=rs.getString("placename")%></td>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("remarks")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>