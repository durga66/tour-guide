<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    Statement st1=null;
    ResultSet rs=null;
     ResultSet rs1=null;
    String citycode,statecode,travelid;
%>    
<%
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
      st1=conn.createStatement();
     citycode=request.getParameter("txtcitycode");
     rs=st.executeQuery("select * from tblTravel where citycode='"+citycode+"'");
     rs1=st1.executeQuery("select travelid from tblTravel where citycode='"+citycode+"'");
%>
<html>
    <body>
       <h1 align="right">Travels Search</h1>
        
        <form method="post" action="frmVehiclereport1.jsp">
             <table align="right" border="1">  
              <tr>
                    <td>Travel Id:</td>
                    <td><select name="txttravelid" id="txttravelid">
                             <option value="<%=travelid%>">Select</option>
                <%
                while(rs1.next())
                {
                    travelid=rs1.getString("travelid");
                %>
                               
               
               <option value="<%=travelid%>"><%=travelid%></option>

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
        <h1>Travel Report</h1>
        <table border="2">
            <tr>
                
                <th>travelid</th>
                <th>routecode</th>
                
                 <th>citycode</th>
                <th>statecode</th>
                <th>city name</th>
                <th>district name</th>
                <th>available vehicles</th>
                 <th>remarks</th>
                
                
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                  <td><%=rs.getString("travelid")%></td>
                 <td><%=rs.getString("routecode")%></td>
                  <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("cityname")%></td>
                  <td><%=rs.getString("distname")%></td>
                   <td><%=rs.getString("avehicles")%></td>
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
