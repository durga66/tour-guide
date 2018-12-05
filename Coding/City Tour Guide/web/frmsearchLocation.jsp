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
     rs=st.executeQuery("select * from tblLocation where placecode='"+placecode+"'");
%>
<html>
    <body>
    <center>
        <h1>Locations Report</h1>
        <table border="2">
            <tr>
                
                <th>location code</th>
                <th>location name</th>
                <th>place code</th>
                <th>famous</th>
                 <th>description</th>
                <th>city code</th>
              
                
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
                  <td><%=rs.getString("citycode")%></td>
                
                 </tr>
             <%
                 }
              %>
        </table>
        <a href="frmLocationreport1.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
