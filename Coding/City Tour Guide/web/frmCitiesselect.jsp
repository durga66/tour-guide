<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppCities.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String citycode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select citycode from tblCities");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
    <script>
            $(function(){
            $("#optcitycode").change(function(){
             var citycode=$("#optcitycode").val();
             alert("kdr");
            $.post("infCitiesdelete.jsp",{optcitycode:citycode},function(res,status){
              var x=res.split(",");
            $("#txtstatecode").val(x[1]);
            $("#txtcityname").val(x[2])
            $("#txtdistname").val(x[3]); ; 
            $("#txtremarks").val(x[4]);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center"><b>Select Cities</b></h1>
        <form name="frmCitiesselect" id="frmCitiesselect">
            <table align="center" border="1">
                <tr>
                    <td>City Code:</td>
                    <td><select name="optcitycode" id="optcitycode">
                <%
                while(rs.next())
                {
                    citycode=rs.getString("citycode");
                %>
                               
               
               <option value="<%=citycode%>"><%=citycode%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                <tr>
                    <td>State Code</td>
                    <td><input type="text" id="txtstatecode"></td>
                </tr>
                <tr>
                    <td>City Name</td>
                    <td><input type="text" id="txtcityname"></td>
                </tr>
                 <tr>
                    <td>District Name</td>
                    <td><input type="text" id="txtdistname"></td>
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td><input type="text" id="txtremarks"></td>
                </tr>
                <tr><td><p align="center"><input type="reset" value="clear"></p></td></tr>
            </table>
        </form>
    </body>
</html>
