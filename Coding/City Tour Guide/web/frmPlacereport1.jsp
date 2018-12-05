<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="uheader.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String citycode,placecode;
%>
<%    Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
   citycode=request.getParameter("txtcitycode");
    // out.println(citycode);
    //statecode="AP";
    rs=stmt.executeQuery("select * from tblPlaces where citycode='"+citycode+"'");
     
%>
<html>
    <body>
         <h1 align="right">Places Search</h1>
        <form method="post" action="frmLocationreport1.jsp">
             <table align="right" border="1">  
               <tr>
                     <td>Place code:</td>
                     <td> <select name="txtplacecode">
                       <option value="<%=placecode%>">Select</option>       
                     <option value="AMP">AMP</option>
                     <option value="UP">UP</option>
                         </select>
                     </td>
                 </tr>
                 <tr>
                     <td><input type="submit" value="Search"></td>
                 </tr>
             </table>
        </form>
   
        <center>
        <h1><b>Places Report</b></h1>
        <table border="1">
            <tr>
                <th>Place Code</th>
                <th>Place Name</th>
                <th>City Code</th>
                <th>Remarks</th>
            </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("placecode")%></td>
                 <td><%=rs.getString("placename")%></td>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("remarks")%></td>
             </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>