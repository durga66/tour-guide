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
     ResultSet rs=stmt.executeQuery("select * from tblAdmin where Id='"+Id+"'");
     while(rs.next())
     {
       Id= rs.getString("Id");
       Name=rs.getString("Name");
       Gender= rs.getString("Gender");
       MobileNo= rs.getString("MobileNo");
       Password= rs.getString("Password");
       String s=Id+","+Name+","+Gender+","+ MobileNo+","+Password;
       out.println(s);
     }
 %>