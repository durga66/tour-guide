<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String placecode,placename,citycode,remarks;
%>
<%   
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
      st=conn.createStatement();
      placecode=request.getParameter("optplacecode");
      ResultSet rs=st.executeQuery("select * from tblPlaces where placecode='"+placecode+"'");
      while(rs.next())
     {
      placecode=rs.getString("placecode");
      placename=rs.getString("placename");
      citycode=rs.getString("citycode");
      remarks=rs.getString("remarks");
     String s=placecode+","+placename+","+citycode+","+remarks;
       out.println(s);
     }
 %>
