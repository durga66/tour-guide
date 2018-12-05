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
        <script src="js/jquery-1.12.0.min.js"></script>
    <script>
            $(function(){
            $("#optroutecode").change(function(){
             var routecode=$("#optroutecode").val();
          alert("hi:");
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
    </script>
    <script>
            $(function(){
            $("#btnupdate").click(function(){
            
            var routecode=$("#optroutecode").val();
             var citycode=$("#optcitycode").val();
             var statecode=$("#txtstatecode").val();
             var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val();
             var source=$("#txtsource").val();
             var destination=$("#txtdestination").val();
             
             var remarks=$("#txtremarks").val();
        alert("hi");
      $.post("srcRouteupdate.jsp",{optroutecode:routecode,optcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtsource:source,txtdestination:destination,txtremarks:remarks},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center">Updating Routes</h1>
        <form name="frmRouteupdate" id="frmRouteupdate">
            <table align="center" border="1">
                <tr>
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
                </tr>
                <tr>
                    <td><p align="center"><input type="button" value="update" id="btnupdate"></p></td>
                    <td><p align="center"><input type="reset" value="clear"></p></td>
                </tr> 
            </table>
        </form>
    </body>
</html>