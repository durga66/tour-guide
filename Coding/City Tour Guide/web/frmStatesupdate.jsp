<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="frmPreviouspageStates.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String statecode;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select statecode from tblStates");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js"></script>
    <script>
            $(function(){
            $("#optstatecode").change(function(){
             var statecode=$("#optstatecode").val();
           
            $.post("infStatesupdate.jsp",{optstatecode:statecode},function(res,status){
            
            var x=res.split(",");
            $("#txtcountrycode").val(x[0]);
            $("#txtstatename").val(x[2]); 
            $("#txtremarks").val(x[3]);
            });
            });
            });
    </script>
    <script>
            $(function(){
            $("#btnupdate").click(function(){
            var countrycode=$("#txtcountrycode").val();
            var statecode=$("#optstatecode").val();
            var statename=$("#txtstatename").val();
            var remarks=$("#txtremarks").val();
            $.post("srcStatesupdate.jsp",{txtcountrycode:countrycode,optstatecode:statecode,txtstatename:statename,txtremarks:remarks,},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center">Updating States</h1>
        <form name="frmStatesupdate" id="frmStatesupdate">
            <table align="center" border="1">
                <tr>
                    <td>State Code:</td>
                    <td><select name="optstatecode" id="optstatecode">
                <%
                while(rs.next())
                {
                    statecode=rs.getString("statecode");
                %>
                            
                               <option value="<%=statecode%>"><%=statecode%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                <tr>
                    <td>Country Code</td>
                    <td><input type="text" id="txtcountrycode"></td>
                </tr>
                <tr>
                    <td>State Name</td>
                    <td><input type="text"  id="txtstatename">
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
