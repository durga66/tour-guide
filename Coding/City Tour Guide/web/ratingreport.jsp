<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="header1.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String statecode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblRating");
%>
<html>
   <body bgcolor="pink">
       <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="400ft">
                         </center>	
			
    <center>
        <h1><b>Rating Report</b></h1>
        <table border="1">
            <tr>
                <th>Serial Number</th>
                <th>Rating</th>
                </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("sno")%></td>
                 <td><%=rs.getString("rating")%></td>
                 
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>