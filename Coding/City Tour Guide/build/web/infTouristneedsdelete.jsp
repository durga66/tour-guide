<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    
    String sno,citycode,statecode,cityname,distname,placename,resturants,raddress,hotels,haddress,hospitals,hoaddress,shoppingmalls,saddress,banks,baddress,remarks;

%>

<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
     sno=request.getParameter("optsno");
     ResultSet rs=stmt.executeQuery("select *from tblTouristneeds where sno='"+sno+"'");
     while(rs.next())
     {
                 sno=rs.getString("sno");
                  citycode=rs.getString("citycode"); 
               statecode=rs.getString("statecode");
                 cityname=rs.getString("cityname"); 
                  distname=rs.getString("distname"); 
                 placename=rs.getString("placename");
                 resturants=rs.getString("resturants");
                 raddress=rs.getString("raddress");
                 hotels=rs.getString("hotels");
                 haddress=rs.getString("haddress");
                 hospitals=rs.getString("hospitals");
                 hoaddress=rs.getString("hoaddress");
                 shoppingmalls=rs.getString("shoppingmalls");
                 saddress=rs.getString("saddress");
                 banks=rs.getString("banks");
                 baddress=rs.getString("baddress");
                 remarks=rs.getString("remarks");
                 
                String s=sno+","+citycode+","+statecode+","+cityname+","+distname+","+placename+","+resturants+","+raddress+","+hotels+","+haddress+","+hospitals+","+hoaddress+","+shoppingmalls+","+saddress+","+banks+","+baddress+","+remarks;
       out.println(s);
     }
 %>