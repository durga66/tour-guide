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
        <script src="js/jquery-1.12.0.min.js"></script>
    <script>
            $(function(){
            $("#optlcode").change(function(){
             var lcode=$("#optlcode").val();
    alert("hi");
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
    <script>
            $(function(){
            $("#btnupdate").click(function(){
            var lcode=$("#optlcode").val();
            var lname=$("#txtlname").val();
            var placecode=$("#txtplacecode").val();
            var famous=$("#txtfamous").val();
            var description=$("#txtdescription").val();
            var remarks=$("#txtremarks").val();
             var citycode=$("#txtremarks").val();
            $.post("srcLocationupdate.jsp",{optlcode:lcode,txtlname:lname,txtplacecode:placecode,txtfamous:famous,txtdescription:description,txtremarks:remarks,txtcitycode:citycode},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
    </head>
   <body>
        <h1 align="center">Updating Locations</h1>
        <form name="frmLocationupdate" id="frmLocationupdate">
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
                    <td><input type="text"  id="txtplacecode">
                    </td>
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
                <tr>
                    <td><p align="center"><input type="button" value="update" id="btnupdate"></p></td>
                    <td><p align="center"><input type="reset" value="clear"></p></td>
                </tr> 
            </table>
        </form>
    </body>
</html>