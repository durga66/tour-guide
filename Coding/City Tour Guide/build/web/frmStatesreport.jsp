<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="frmPreviouspageStates.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblStates");
%>
<html>
      <body bgcolor="pink">
  
    <center>
        <h1><b>States Report</b></h1>
        <table border="1">
            <tr>
                <th>Country Code</th>
                <th>State Code</th>
                <th>State Name</th>
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("countrycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("statename")%></td>
                 <td><%=rs.getString("remarks")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    
    </body>
</html>