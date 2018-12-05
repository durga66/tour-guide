<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String citycode;
%>    
<%
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     citycode=request.getParameter("txtcitycode");
     rs=st.executeQuery("select * from tblRoute where citycode='"+citycode+"'");
%>
<html>
    <body>
         <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	
<center>
        <h1>Route Report</h1>
        <table border="2">
            <tr>
                
                <th>Route Code</th>
                 <th>City Code</th>
                <th>State Code</th>
                <th>City Name</th>
                <th>District Name</th>
                <th>Source</th>
                <th>Destination</th>
              
                 <th>Remarks</th>
               <th>Direction</th>
                
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
                  <td><input type="button" value="search" onclick="window.location.href='routemap.jsp'"></td>
               
                 </tr>
             <%
                 }
              %>
        </table>
        <a href="frmRoutereport1.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
