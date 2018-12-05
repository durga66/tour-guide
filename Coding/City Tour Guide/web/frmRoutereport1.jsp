<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String statecode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblRoute");
%>
<html>
    <body>
        <h1 align="right">Route Search</h1>
        <form method="post" action="frmsearchRoute.jsp">
             <table align="right" border="1">  
                <tr>
                     <td>State Sode:</td>
                     <td> <select name="txtstatecode">
                              <option value="<%=statecode%>">Select</option>
                     <option value="AP">AP</option>
                     <option value="TN">TN</option>
                         </select>
                     </td>
                 </tr>
                 <tr align="center">
                     <td><input type="submit" value="Serach"></td>
                 </tr></table>  </form>
        <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	

    <center>
        <h1><b>Route Report</b></h1>
        <table border="1">
            <tr>
                <th>Route Code</th>
                <th>City Code</th>
                <th>State Code</th>
                <th>City Name</th>
                <th>District Name</th>
                <th>Source</th>
                <th>Destination</th>
                
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("routecode")%></td>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("cityname")%></td>
                 <td><%=rs.getString("distname")%></td>
                 <td><%=rs.getString("source")%></td>
                 <td><%=rs.getString("destination")%></td>
                 
                 <td><%=rs.getString("remarks")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>