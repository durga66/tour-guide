<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String citycode,statecode,cityname,distname,remarks;
%>
<%   
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
      st=conn.createStatement();
      citycode=request.getParameter("optcitycode");
      ResultSet rs=st.executeQuery("select * from tblCities where citycode='"+citycode+"'");
      while(rs.next())
     {
      citycode=rs.getString("citycode");
      statecode =rs.getString("statecode");
      cityname=rs.getString("cityname");
      distname=rs.getString("distname");
      remarks=rs.getString("remarks");
     String s=citycode+","+statecode+","+cityname+","+distname+","+remarks;
       out.println(s);
     }
 %>
