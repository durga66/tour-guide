<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String statecode;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select statecode from tblStates");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>states Form</title>
    </head>-
    <body>
        <h1 align="center"><b>Deleting States</b></h1>
        <form action="srcStatesdel.jsp" name="frmStatesdel" method="post">
            <p align="center"> state Code:
                <select name="optstatecode">
                <%
                while(rs.next())
                {
                  statecode=rs.getString("statecode");
                %>
                                 <option value=" "></option>
                               <option value="<%=statecode%>"><%=statecode%></option>

                 <%        
                }
                  %>
                </select> <br>
            <input type="submit" value="delete">
            <input type="reset" value="clear">
        </form>
    </body>
</html>