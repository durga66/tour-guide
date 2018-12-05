<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppCities.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
     String citycode,statecode,cityname,distname,remarks;
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
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js"></script>
        <script>
            $(function(){
            $("#btnsave").click(function(){
              
            var citycode=$("#txtcitycode").val();
            var statecode=$("#optstatecode").val();
            var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val();
            var remarks=$("#txtremarks").val();
            alert("hi");
            $.post("srcCitiesinsert.jsp",{txtcitycode:citycode,optstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtremarks:remarks},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
 
    </head>
    <body>
        <h1 align="center"><b>Cities Information </b></h1>
        <form name="frmCitiesinsert.jsp" id="frmCitiesinsert">
            <table align="center" border="1">
                <tr>
                    <td>City Code:</td>
                    <td><input type="text" name="txtcitycode" id="txtcitycode" autofocus></td>
                </tr>
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
                        </select>
                    </td>
                </tr>
                  <tr><td>City Name:</td>
                    <td><input type="text" name="txtcityname" id="txtcityname"></td>     
                </tr>
                <tr><td>District Name:</td>
                    <td><input type="text" name="txtdistname" id="txtdistname"></td>     
                </tr>
                <tr>
                    <td>Remarks:</td> 
                    <td><input type="text" name="txtremarks" id="txtremarks"></td>
                </tr>
                 <tr>
                     <td> <p align="center"><input type="button" value="save" id="btnsave"></p></td>
                   <td><p align="center"> <input type="reset" value="clear"></p> </td>
                 </tr>
                   </table>
        </form>
    </body>
</html>