<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    Statement stmt1=null;
    ResultSet rs1=null;
    String statename,statecode,citycode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     stmt1=conn.createStatement();
    statecode=request.getParameter("txtstatecode");
    //out.println(statecode);
    //statecode="AP";
    rs=stmt.executeQuery("select * from tblCities where statecode='"+statecode+"'");
     rs1=stmt1.executeQuery("select citycode from tblCities where statecode='"+statecode+"'");
%>
<html>
    <body>
      <h1 align="right">Cities Search</h1>
        <form method="post" action="frmLocationreport1.jsp">
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
        <h1><b>Cities Report</b></h1>
       
        <table border="1">
            <tr>
                <th>City Code</th>
                <th>State Code</th>
                <th>City Name</th>
                <th>Dist Name</th>
                <th>Remarks</th>
                
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
                
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
              
    </body>
</html>