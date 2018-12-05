<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppLocation.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String lcode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select lcode from tblLocation");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
    <script>
            $(function(){
            $("#optlcode").change(function(){
             var lcode=$("#optlcode").val();
             alert("kdr");
            $.post("infLocationdelete.jsp",{optlcode:lcode},function(res,status){
              var x=res.split(",");
            $("#txtlname").val(x[1]);
            $("#txtplacecode").val(x[2]);
             $("#txtfamous").val(x[3]);
              $("#txtdescription").val(x[4]);
             $("#txtremarks").val(x[5]);
               $("#txtcitycode").val(x[6]);
            });
            });
            });
    </script>
    </head>
   <body>
        <h1 align="center"><b>Select Locations</h1>
        <form name="frmLocationselect" id="frmLocationselect">
            <table align="center" border="1">
                <tr>
                    <td>Location Code:</td>
                    <td><select name="optlcode" id="optlcode">
                <%
                while(rs.next())
                {
                    lcode=rs.getString("lcode");
                %>
                               
               
               <option value="<%=lcode%>"><%=lcode%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                <tr>
                    <td>Location Name</td>
                    <td><input type="text" id="txtlname"></td>
                </tr>
                <tr>
                    <td>Place Code</td>
                    <td><input type="text" id="txtplacecode"></td>
                </tr>
                  <tr>
                    <td>Famous</td>
                    <td><input type="text" id="txtfamous"></td>
                </tr>
                  <tr>
                    <td>Description</td>
                    <td><input type="text" id="txtdescription"></td>
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td><input type="text" id="txtremarks"></td>
                </tr>
                <tr>
                    <td>City Code</td>
                    <td><input type="text" id="txtcitycode"></td>
                </tr>
                <tr><td><p align="center"><input type="reset" value="clear"></p></td></tr>
            </table>
        </form>
    </body>
</html>
