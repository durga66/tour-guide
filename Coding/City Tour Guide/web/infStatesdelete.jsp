<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String countrycode,statecode,statename,remarks;
%>
<%   
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
      st=conn.createStatement();
      statecode=request.getParameter("optstatecode");
      ResultSet rs=st.executeQuery("select * from tblStates where statecode='"+statecode+"'");
      while(rs.next())
     {
      countrycode=rs.getString("countrycode");
      statecode =rs.getString("statecode");
      statename=rs.getString("statename");
      remarks=rs.getString("remarks");
     String s=countrycode+","+statecode+","+statename+","+remarks;
       out.println(s);
     }
 %>
