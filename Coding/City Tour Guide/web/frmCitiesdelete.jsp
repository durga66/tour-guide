<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppCities.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String citycode;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select citycode from tblCities");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cities Form</title>
        <script src="js/jquery-1.12.0.min.js">            
        </script>
         
    
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
            $("#btnDelete").click(function(){
             var citycode=$("#optcitycode").val();
            
            $.post("srcCitiesdelete.jsp",{optcitycode:citycode},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
  <body>
        <h1 align="center"><b>Deleting Cities</b></h1>
        <form name="frmCitiesdelete" id="frmCitiesdelete">
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
                        </select>
                    </td>
                </tr>
                <tr> <td>State Code:</td>
                    <td><input type="text" id="txtstatecode"></td>
                    
               <tr><td>City Name:</td>
                    <td><input type="text" id="txtcityname"></td>     
                </tr>
                <tr><td>District Name:</td>
                    <td><input type="text" id="txtdistname"></td>     
                </tr>
                <tr>
                    <td>Remarks:</td> 
                    <td><input type="text" id="txtremarks"></td>
                </tr>
                <tr>
                    <td><p align="center"><input type="button" value="Delete" id="btnDelete"></p></td>
                    <td><p align="center"><input type="reset" value="clear"></p></td>
                </tr> 
        </form>
    </body>
</html>