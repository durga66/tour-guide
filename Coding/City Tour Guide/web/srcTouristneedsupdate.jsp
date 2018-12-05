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
      citycode=request.getParameter("txtcitycode");
     statecode=request.getParameter("txtstatecode");
      cityname=request.getParameter("txtcityname"); 
       distname=request.getParameter("txtdistname");
     placename=request.getParameter("txtplacename");
     resturants=request.getParameter("txtresturants");
      raddress=request.getParameter("txtraddress");
      hotels=request.getParameter("txthotels");
      haddress=request.getParameter("txthaddress");
      hospitals=request.getParameter("txthospitals");
      hoaddress=request.getParameter("txthoaddress");
      shoppingmalls=request.getParameter("txtshoppingmalls");
      saddress=request.getParameter("txtsaddress");
      banks=request.getParameter("txtbanks");
      baddress=request.getParameter("txtbaddress");
      remarks=request.getParameter("txtremarks");
      int count=stmt.executeUpdate("update tblTouristneeds set sno='"+sno+"',citycode='"+citycode+"',statecode='"+statecode+"',cityname='"+cityname+"',distname='"+distname+"',placename='"+placename+"',resturants='"+resturants+"',raddress='"+raddress+"',hotels='"+hotels+"',haddress='"+haddress+"',hospitals='"+hospitals+"',hoaddress='"+hoaddress+"',shoppingmalls='"+shoppingmalls+"',saddress='"+saddress+"',banks='"+banks+"',baddress='"+baddress+"',remarks='"+remarks+"' where sno='"+sno+"'");
    out.println("Touristneeds Information Updated");
    %>
