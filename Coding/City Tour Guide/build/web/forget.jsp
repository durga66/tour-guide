<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String Name,MobileNo;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
    
     Name=request.getParameter("txtName");
     MobileNo=request.getParameter("txtMobileNo");
    
     {
         rs=stmt.executeQuery("select Id,Password from tblAdmin where Name='"+Name+"' and MobileNo='"+MobileNo+"'");
         if(rs.next())
         {
             String Id=rs.getString("Id");
             String Password=rs.getString("Password");
             String s=Id+","+Password;
             out.println(s);
         }
         else
             out.println("enter currect details");
     }
%>
