<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String statecode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select * from tblStates");
%>
<html>
    <body>
       
    <h1 align="right">States Search</h1>
        <form  method="post" action="frmCitiesreport1.jsp">
             <table align="right" border="1">  
                 <tr>
                     <td>State Code:</td>
                     <td> <select name="txtstatecode">
                             <option value="<%=statecode%>">Select</option>
                     <option value="AP">AP</option>
                     <option value="TN">TN</option>
                         </select>
                     </td>
                 </tr>
                 <tr align="center">
                     <td><input type="submit" value="Serach"></td>
                 </tr></table>  </form>
     <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	

    <center>
        
        <h1><b>States Report</b></h1>
        <table border="1">
            <tr>
                <th>Country Code</th>
                <th>State Code</th>
                <th>State Name</th>
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("countrycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("statename")%></td>
                 <td><%=rs.getString("remarks")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center><br>
    
    

    </body>
</html>