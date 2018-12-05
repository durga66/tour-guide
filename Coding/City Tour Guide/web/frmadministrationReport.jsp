
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="ppAdmin.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblAdmin");
%>
<html>
    <body>
         <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	
			<center>
        <h1>Administration Report</h1>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Mobile Number</th>
                <th>Password</th>
               </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("Id")%></td>
                 <td><%=rs.getString("Name")%></td>
                 <td><%=rs.getString("Gender")%></td>
                 <td><%=rs.getString("MobileNo")%></td>
                 <td><%=rs.getString("Password")%></td>
                 </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>