<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    
    String travelid,routecode,citycode,statecode,cityname,distname,avehicles,remarks;
%>
<%   
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
      st=conn.createStatement();
      travelid=request.getParameter("opttravelid");
      ResultSet rs=st.executeQuery("select * from tblTravel where travelid='"+travelid+"'");
      while(rs.next())
     {
      travelid =rs.getString("travelid");
      routecode=rs.getString("routecode");
      citycode =rs.getString("citycode");
      statecode=rs.getString("statecode");
      cityname =rs.getString("cityname");
      distname=rs.getString("distname");
      avehicles=rs.getString("avehicles");
      remarks=rs.getString("remarks");
      String s=travelid+","+routecode+","+citycode+","+statecode+","+cityname+","+distname+","+avehicles+","+remarks;
      out.println(s);
     }
 %>




