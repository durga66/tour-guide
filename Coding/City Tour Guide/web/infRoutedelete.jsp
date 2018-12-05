<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String routecode,citycode,statecode,cityname,distname,source,destination,remarks;
%>
<%   
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
      st=conn.createStatement();
      routecode=request.getParameter("optroutecode");
      ResultSet rs=st.executeQuery("select * from tblRoute where routecode='"+routecode+"'");
      while(rs.next())
     {
      routecode =rs.getString("routecode");
      citycode=rs.getString("citycode");  
      statecode =rs.getString("statecode");
      cityname=rs.getString("cityname");
      distname=rs.getString("distname");
      source=rs.getString("source");
      destination=rs.getString("destination");

      remarks=rs.getString("remarks");
      String s=routecode+","+citycode+","+statecode+","+cityname+","+distname+","+source+","+destination+","+remarks;
       out.println(s);
     }
 %>




