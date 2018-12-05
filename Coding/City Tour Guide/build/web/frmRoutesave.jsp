<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppRoute.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String routecode,citycode,statecode,cityname,distname,source,destination,remarks;
    
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     ResultSet rs=st.executeQuery("select citycode from tblCities");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargo Form</title>
        <script src="js/jquery-1.12.0.min.js">           
        </script>
        <script>
            $(function(){
            $("#optcitycode").change(function(){
             var citycode=$("#optcitycode").val();
            alert("hhhhhhh");
            $.post("infCities.jsp",{optcitycode:citycode},function(res,status){
             alert("hi");
            var x=res.split(",");
            $("#txtstatecode").val(x[1]); 
            $("#txtcityname").val(x[2]);
            $("#txtdistname").val(x[3]);
            });
            });
            });
    </script>
         <script>
            $(function(){
            $("#btnsave").click(function(){
                
             var routecode=$("#optroutecode").val();
             var citycode=$("#optcitycode").val();
             var statecode=$("#txtstatecode").val();
             var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val();
             var source=$("#txtsource").val();
             var destination=$("#txtdestination").val();
            
             var remarks=$("#txtremarks").val();
        alert("hi");
      $.post("srcRoutesave.jsp",{optroutecode:routecode,optcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtsource:source,txtdestination:destination,txtremarks:remarks},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center">Route Form</h1>
        <form name="frmRoutesave" id="frmRoutesave">
            <table align="center" border="1">
                <tr>
                    <td>Route Code</td>
                    
                       
                   <td><input type="text" name="optroutecode" id="optroutecode"></td>
                </tr> 
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
                    <td><input type="text" name="txtstatecode" id="txtstatecode"></td>
                </tr>
                <tr>
                    <td>City Name</td>
                    <td><input type="text" name="txtcityname" id="txtcityname"></td>
                </tr>
                <tr>
                    <td>District Name</td>
                 <td><input type="text" name="txtdistname" id="txtdistname"></td>
            </tr>
            <tr>
                <td>Source</td>
                <td><input type="text" name="txtsource" id="txtsource"></td>
            </tr>
            <tr>
                <td>Destination</td>
                <td><input type="text" name="txtdestination" id="txtdestination"></td>
            </tr>
           
            <tr>
                <td>Remarks</td>
                <td><input type="text" name="txtremarks" id="txtremarks"></td>
            </tr>
            <tr>
               <tr>
                <td><p align="center"><input type="button" value="Save" id="btnsave"></p>
                    <td><input type="reset" value="clear"></td>
                </td>
                </tr>
            </table>
        </form>
    </body>
</html>
