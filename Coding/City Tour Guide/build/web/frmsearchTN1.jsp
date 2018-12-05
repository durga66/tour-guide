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
     rs=st.executeQuery("select * from tblTouristneeds where citycode='"+citycode+"'");
%>
<html>
    <body>
        <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	
<center>
        <h1>Touristneeds Report</h1>
        <table border="2">
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
        <a href="frmsearchTN.jsp"><input type="submit" value="previous page"></a> 
      
      </center>
      </body>
     </html>
