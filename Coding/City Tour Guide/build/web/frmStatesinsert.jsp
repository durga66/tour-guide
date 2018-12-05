<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="frmPreviouspageStates.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
   String countrycode,statecode,statename,remarks;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>States Form</title>
        <script src="js/jquery-1.12.0.min.js">
        </script>
     <script>
            $(function(){
            $("#btnsave").click(function(){
            var countrycode=$("#txtcountrycode").val();
            var statecode=$("#txtstatecode").val();
            var statename=$("#txtstatename").val();
            var remarks=$("#txtremarks").val();
            alert("hi");
            $.post("srcStatesinsert.jsp",{txtcountrycode:countrycode,txtstatecode:statecode,txtstatename:statename,txtremarks:remarks,},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center"><b>States Information </b></h1>
        <form size="10" name="frmStatesinsert" id="frmStatesinsert">
            <table align="center" border="1">
                <tr>
                    <td>Country Code:</td>
                    <td><input type="text" name="txtcountrycode" id="txtcountrycode" autofocus></td>
                </tr>
                <tr>
                    <td>State Code:</td>
                    <td><input type="text" name="txtstatecode" id="txtstatecode"></td>
                </tr>
                <tr><td>State Name:</td>
                    <td><input type="text" name="txtstatename" id="txtstatename"></td>     
                </tr>
                <tr>
                    <td>Remarks:</td> 
                    <td><input type="text" name="txtremarks" id="txtremarks"></td>
                </tr>
                 <tr>
                     <td><input type="button" value="save" id="btnsave"></p></td>
                   <td><input type="reset" value="clear"></p> </td>
                 </tr>
                   </table>
        </form>
    </body>
</html>
