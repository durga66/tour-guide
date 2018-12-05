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
    citycode=request.getParameter("citycode");
     rs=st.executeQuery("select * from tblCities where citycode='"+citycode+"'");
%>
<html>
   <body>
    <center>
        <h1>Cities Report</h1>
        <table border="2">
            <tr>
                <th>city code</th>
               <th>state code</th>
                <th>City name</th>
                <th>district name</th>
                <th>remarks<th>
                <th>Places<th>
                
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("cityname")%></td>
                   <td><%=rs.getString("distname")%></td>
                    <td><%=rs.getString("remarks")%></td>
                 <td><input type="button" value="search" onclick="window.location.href='frmPlacereport1.jsp'"></td>
                
                 </tr>
             <%
                 }
              %>
        </table>
        
        <a href="frmCitiesreport1.jsp"><input type="submit" value="previous page"></a>
      </center>
      </body>
     </html>
