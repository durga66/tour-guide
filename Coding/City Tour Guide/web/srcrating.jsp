<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
 String sno,rating;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     sno=request.getParameter("txtsno");
     rating=request.getParameter("txtrating");
     int count=st.executeUpdate("insert into tblRating values('"+sno+"','"+rating+"')");
     out.println("User Rating saved");
     
%>