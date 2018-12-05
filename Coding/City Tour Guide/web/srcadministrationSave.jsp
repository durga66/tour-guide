<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;

    String Id,Name,Gender,MobileNo,Password;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide" ,"durga"); 
     stmt=conn.createStatement();
    Id=request.getParameter("txtId");
     Name=request.getParameter("txtName");
     Gender=request.getParameter("txtGender");
     MobileNo=request.getParameter("txtMobileNo");
     Password=request.getParameter("pwdPassword");
     int count=stmt.executeUpdate("insert into tblAdmin values('"+Id+"','"+Name+"','"+Gender+"','"+MobileNo+"','"+Password+"')");
     out.println("admin data inserted");
     
%>
 