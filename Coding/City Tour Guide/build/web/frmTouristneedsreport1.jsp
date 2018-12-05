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
     rs=stmt.executeQuery("select * from tblTouristneeds");
%>
<html>
        <body>
           <h1 align="right">States Search</h1>
        <form method="post" action="frmsearchTN.jsp">
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
                 <tr>
                     <td><input type="submit" value="Search"></td>
                 </tr>
             </table>
        </form>
      <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	

        <center><br>
        <h1>Touristneeds Report</h1>
        <table border="1">
            <tr>
                <th>Serial Number</th>
                <th>City Code</th>
                <th>State Code</th>
                <th>City Name</th>
                <th>District Name</th>
                <th>Place Name</th>
                <th>Resturants</th>
                <th>Resturant Address</th>
                 <th>Hotels</th>
                  <th>Hotel Address</th>
                   <th>Hospitals</th>
                    <th>Hospital Address</th>
                     <th>Shoppingmalls</th>
                      <th>Shoppingmall Address</th>
                       <th>Banks</th>
                        <th>Bank Address</th>
                         <th>Remarks</th>
                </tr>
            <% while(rs.next())
                {
             %>
             <tr>
                 <td><%=rs.getString("sno")%></td>
                 <td><%=rs.getString("citycode")%></td>
                 <td><%=rs.getString("statecode")%></td>
                 <td><%=rs.getString("cityname")%></td>
                 <td><%=rs.getString("distname")%></td>
                 <td><%=rs.getString("placename")%></td>
                 <td><%=rs.getString("resturants")%></td>
                 <td><%=rs.getString("raddress")%></td>
                 <td><%=rs.getString("hotels")%></td>
                 <td><%=rs.getString("haddress")%></td>
                 <td><%=rs.getString("hospitals")%></td>
                 <td><%=rs.getString("hoaddress")%></td>
                 <td><%=rs.getString("shoppingmalls")%></td>
                 <td><%=rs.getString("saddress")%></td>
                 <td><%=rs.getString("banks")%></td>
                 <td><%=rs.getString("baddress")%></td>
                 <td><%=rs.getString("remarks")%></td>
                </tr>
             <%
                 }
              %>
            
        </table>
    </center>
    </body>
</html>