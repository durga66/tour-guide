<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppRoute.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String routecode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select routecode from tblRoute");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
      <script>
            $(function(){
            $("#optroutecode").change(function(){
             var routecode=$("#optroutecode").val();
             alert("hh");
            $.post("infRoutedelete.jsp",{optroutecode:routecode},function(res,status){ 
            var x=res.split(",");
            $("#optcitycode").val(x[1]);
           $("#txtstatecode").val(x[2]); 
            $("#txtcityname").val(x[3]);
            $("#txtdistname").val(x[4]);
            $("#txtsource").val(x[5]);
            $("#txtdestination").val(x[6]);
        
            $("#txtremarks").val(x[7]);
                      });
            });
            });
    </script></head>
    <body>
        <h1 align="center"><b>Select Routes</b></h1>
        <form name="frmRouteselect" id="frmRouteselect">
            <table align="center" border="1">
                 <tr>
                    <td>Route Code:</td>
                    <td><select name="optroutecode" id="optroutecode">
                <%
                while(rs.next())
                {
                    routecode=rs.getString("routecode");
                %>
                <option value=" "></option>
                   <option value="<%=routecode%>"><%=routecode%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
                </tr>
                 <td>City Code:</td>
                    <td><input type="text" id="optcitycode"></td>
                </tr>
               <tr><td>State Code:</td>
                    <td><input type="text" id="txtstatecode"></td>     
                </tr>
                <tr><td>City Name:</td>
                    <td><input type="text" id="txtcityname"></td>     
                </tr>
                <tr><td>District Name:</td>
                    <td><input type="text" id="txtdistname"></td>     
                </tr>
                <tr><td>Source:</td>
                    <td><input type="text" id="txtsource"></td>     
                </tr>
                <tr><td>Destination:</td>
                    <td><input type="text" id="txtdestination"></td>     
                </tr>
               
                <tr>
                    <td>Remarks:</td> 
                    <td><input type="text" id="txtremarks"></td>
                </tr> <tr><td><p align="center"><input type="reset" value="clear"></p></td></tr>
            </table>
        </form>
    </body>
</html>
