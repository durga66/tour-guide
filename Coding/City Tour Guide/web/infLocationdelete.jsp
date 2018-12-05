<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String lcode,lname,placecode,famous,description,remarks,citycode;
%>
<%   
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
      st=conn.createStatement();
      lcode=request.getParameter("optlcode");
      ResultSet rs=st.executeQuery("select * from tblLocation where lcode='"+lcode+"'");
      while(rs.next())
     {
      lcode=rs.getString("lcode");
      lname=rs.getString("lname");
      placecode=rs.getString("placecode");
      famous=rs.getString("famous");
      description=rs.getString("description");
      remarks=rs.getString("remarks");
      citycode=rs.getString("citycode");
     String s=lcode+","+lname+","+placecode+","+famous+","+description+","+remarks+","+citycode;
       out.println(s);
     }
 %>
