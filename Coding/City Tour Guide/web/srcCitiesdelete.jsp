<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    String citycode;
%>
<%   
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     citycode=request.getParameter("optcitycode");
     int count=st.executeUpdate("delete from tblCities where citycode='"+citycode+"'");
     out.println("City Information Deleted");
     %>