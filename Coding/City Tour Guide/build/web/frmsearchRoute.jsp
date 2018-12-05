<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    Statement st1=null;
    ResultSet rs=null;
      ResultSet rs1=null;
    String statecode,citycode;
%>    
<%
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
      st1=conn.createStatement();
     statecode=request.getParameter("txtstatecode");
     rs=st.executeQuery("select * from tblRoute where statecode='"+statecode+"'");
     rs1=st1.executeQuery("select citycode from tblCities where statecode='"+statecode+"'");
%>
<html>
    <body>
         <h1 align="right">Cities Search</h1>
        <form method="post" action="frmsearchRoute1.jsp">
             <table align="right" border="1">  
                 <tr>
                    <td>City Code:</td>
                    <td><select name="txtcitycode" id="txtcitycode">
                             <option value="<%=citycode%>">Select</option>
                <%
                while(rs1.next())
                {
                    citycode=rs1.getString("citycode");
                %>
                               
               
               <option value="<%=citycode%>"><%=citycode%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                 <tr>
                     <td><input type="submit" value="Search"></td>
                 </tr>
             </table>
        </form> 
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
        <a href="frmRoutereport1.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
