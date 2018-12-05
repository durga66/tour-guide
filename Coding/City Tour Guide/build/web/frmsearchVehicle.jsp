<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String travelid;
%>    
<%
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     travelid=request.getParameter("travelid");
     rs=st.executeQuery("select * from tblVehicles where travelid='"+travelid+"'");
%>
<html>
    <body>
    <center>
        <h1>vehicle Report</h1>
        <table border="2">
            <tr>
                <th>vehicleid</th>
                <th>travelid</th>
                 <th>cabs</th>
                 <th>cab owner number</th>
                <th>buses</th>
                <th>trains</th>
                <th>flights</th>
                <th>remarks</th>
               
                
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("vehicleid")%></td>
                  <td><%=rs.getString("travelid")%></td>
                 <td><%=rs.getString("cabs")%></td>
                 <td><%=rs.getString("ownerno")%></td>
                  <td><%=rs.getString("buses")%></td>
                   <td><%=rs.getString("trains")%></td>
                    <td><%=rs.getString("flights")%></td>
                      <td><%=rs.getString("remarks")%></td>
                 
                      
                 </tr>
             <%
                 }
              %>
        </table>
        <a href="frmTravelreport1.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
