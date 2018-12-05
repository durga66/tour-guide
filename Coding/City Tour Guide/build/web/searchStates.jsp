<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String statename;
%>    
<%
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     statename=request.getParameter("statename");
    session.setAttribute("statename",statename);
     rs=st.executeQuery("select * from tblStates where statename='"+statename+"'");
%>
<html>
    <body>
    <center>
        <h1>States Report</h1>
        <table border="2">
            <tr>
                
                <th>countrycode</th>
                <th>statecode</th>
                <th>state name</th>
                <th>remarks</th>
                <th>Cities<th>
                
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("countrycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("statename")%></td>
                  <td><%=rs.getString("remarks")%></td>
                 <td><input type="button" value="search" onclick="window.location.href='frmCitiesreport1.jsp'"></td>
                
                 </tr>
             <%
                 }
              %>
        </table>
        <a href="frmStatesreport1.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
