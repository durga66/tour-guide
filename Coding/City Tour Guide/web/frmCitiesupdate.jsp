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
        <script src="js/jquery-1.12.0.min.js"></script>
    <script>
            $(function(){
            $("#optcitycode").change(function(){
             var citycode=$("#optcitycode").val();
        
            $.post("infCitiesdelete.jsp",{optcitycode:citycode},function(res,status){
            
            var x=res.split(",");
            $("#txtstatecode").val(x[1]);
            $("#txtcityname").val(x[2]);
            $("#txtdistname").val(x[3]);
            $("#txtremarks").val(x[4]);
            });
            });
            });
    </script>
    <script>
            $(function(){
            $("#btnupdate").click(function(){
            var citycode=$("#optcitycode").val();
            var statecode=$("#txtstatecode").val();
            var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val();
            var remarks=$("#txtremarks").val();
            alert("hi");
            $.post("srcCitiesupdate.jsp",{optcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtremarks:remarks,},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
    </head>
   <body>
        <h1 align="center">Updating Cities</h1>
        <form name="frmCitiesupdate" id="frmCitiesupdate">
            <table align="center" border="1">
                <tr>
                    <td>City Code:</td>
                    <td><select name="optcitycode" id="optcitycode">
                <%
                while(rs.next())
                {
                    citycode=rs.getString("citycode");
                %>
                            <option value=""></option>
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
                    <td><input type="text"  id="txtcityname">
                    </td>
                </tr>
                <tr>
                    <td>District Name</td>
                    <td><input type="text"  id="txtdistname">
                    </td>
                </tr>
                
                <tr>
                    <td>Remarks</td>
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

