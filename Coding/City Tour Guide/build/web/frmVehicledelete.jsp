<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppVehicle.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String vehicleid;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select vehicleid from tblVehicles");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VEhicles Form</title>
        <script src="js/jquery-1.12.0.min.js">            
        </script>
         <script>
            $(function(){
            $("#optvehicleid").change(function(){
             var vehicleid=$("#optvehicleid").val();
            $.post("infVehicle.jsp",{optvehicleid:vehicleid},function(res,status){ 
            var x=res.split(",");
            $("#txttravelid").val(x[1]); 
             $("#txtcabs").val(x[2]); 
              $("#txtownerno").val(x[3]); 
               $("#txtbuses").val(x[4]); 
                $("#txttrains").val(x[5]); 
                 $("#txtflights").val(x[6]); 
                 $("#txtauto").val(x[7]);
           
                      });
            });
            });
    </script>
    
  
    <script>
            $(function(){
            $("#btnDelete").click(function(){
             var vehicleid=$("#optvehicleid").val();
            
            $.post("srcVehicledelete.jsp",{optvehicleid:vehicleid},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
  <body>
        <h1 align="center"><b>Deleting Vehicles</b></h1>
        <form name="frmVehicledelete" id="frmVehicledelete">
            <table align="center" border="1">
                <tr>
                    <td>Vehicle Id:</td>
                    <td><select name="optvehicleid" id="optvehicleid">
                <%
                while(rs.next())
                {
                    vehicleid=rs.getString("vehicleid");
                %>
                
                   <option value="<%=vehicleid%>"><%=vehicleid%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
                </tr>
                <tr><td>Travel Id:</td>
                    <td><input type="text" name="txttravelid" id="txttravelid"></td>     
                </tr>
                 <tr><td>Cabs:</td>
                    <td><input type="text" name="txtcabs" id="txtcabs"></td>     
                </tr>
                <tr><td>Cab Owner Number:</td>
                    <td><input type="text" name="txtownerno" id="txtownerno"></td>     
                </tr>
                <tr>
                    <td>Buses:</td> 
                    <td><input type="text" name="txtbuses" id="txtbuses"></td>
                </tr>
                <tr>
                    <td>Trains:</td> 
                    <td><input type="text" name="txttrains" id="txttrains"></td>
                </tr>
                <tr>
                    <td>Flights:</td> 
                    <td><input type="text" name="txtflights" id="txtflights"></td>
                </tr>
                <tr>
                    <td>Auto:</td> 
                    <td><input type="text" name="txtauto" id="txtauto"></td>
                </tr>
                <tr>
                    <td><p align="center"><input type="button" value="Delete" id="btnDelete"></p></td>
                    <td><p align="center"><input type="reset" value="clear"></p></td>
                </tr> 
        </form>
    </body>
</html>