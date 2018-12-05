<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>

<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String citycode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
    citycode=request.getParameter("txtcitycode");
    // out.println(citycode);
    //statecode="AP";
    rs=stmt.executeQuery("select * from tblLocation where citycode='"+citycode+"'");
%>
<html>
<body>
    <center>
        <h1><b>Loaction Report</b></h1>
        <table border="1">
            <tr>
                <th>Location Code</th>
                <th>Location Name</th>
                <th>Place Code</th>
                <th>Famous</th>
                <th>Descrition</th>
                
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
               
                  <td><%=rs.getString("citycode")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>