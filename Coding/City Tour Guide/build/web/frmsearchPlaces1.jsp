<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String placecode;
%>    
<%
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
    placecode=request.getParameter("placecode");
     rs=st.executeQuery("select * from tblPlaces where placecode='"+placecode+"'");
%>
<html>
    <body>
    <center>
        <h1>Places Report</h1>
        <table border="2">
            <tr>
                
                <th>Place Code</th>
                <th>Place Name</th>
                <th>citycode</th>
                <th>remarks</th>
                <th>Locations<th>
                
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("placecode")%></td>
                 <td><%=rs.getString("placename")%></td>
                 <td><%=rs.getString("citycode")%></td>
                  <td><%=rs.getString("remarks")%></td>
                 <td><input type="button" value="search" onclick="window.location.href='frmLocationreport1.jsp'"></td>
                
                 </tr>
             <%
                 }
              %>
        </table>
        <a href="frmPlacereport1.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
