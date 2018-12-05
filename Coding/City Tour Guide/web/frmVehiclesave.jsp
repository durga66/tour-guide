<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppVehicle.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    Statement st1=null;
    ResultSet rs=null;
    ResultSet rs1=null;
    int n;
     String vehicleid,travelid,cabs,ownerno,buses,trains,flights,auto;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     st1=conn.createStatement();
     rs=st.executeQuery("select travelid from tblTravel");
      rs1=st1.executeQuery("select vehicleid from tblVehicles");
      vehicleid="0";
     while(rs1.next())
     {
        vehicleid=rs1.getString(1); 
     }
     n=Integer.parseInt(vehicleid);
     n=n+1;
     if(n<10)
        vehicleid="000"+n;
     else if(n<100)
        vehicleid="00"+n;
     else if(n<1000)
        vehicleid="0"+n;
     else
        vehicleid="n";
%>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js"></script>
        
    <script>
            $(function(){
            $("#btnsave").click(function(){
              
            var vehicleid=$("#txtvehicleid").val();
            var travelid=$("#opttravelid").val();
            var cabs=$("#txtcabs").val();
             var ownerno=$("#txtownerno").val();
            var buses=$("#txtbuses").val();
             var trains=$("#txttrains").val();
              var flights=$("#txtflights").val();
               var auto=$("#txtauto").val();
            alert("hi");
            $.post("srcVehiclesave.jsp",{txtvehicleid:vehicleid,opttravelid:travelid,txtcabs:cabs,txtownerno:ownerno,txtbuses:buses,txttrains:trains,txtflights:flights,txtauto:auto},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
 
    </head>
    <body>
        <h1 align="center"><b>Vehicles Information </b></h1>
        <form name="frmVehiclesave.jsp" id="frmVehiclesave">
            <table align="center" border="1">
                <tr>
                    <td>Vehicle Id:</td>
                    <td><input type="text" name="txtvehicleid" id="txtvehicleid" value="<%=vehicleid%>"readonly></td>
                </tr>
                 <tr>
                    <td>Travel Id:</td>
                    <td><select name="opttravelid" id="opttravelid">
                <%
                while(rs.next())
                {
                    travelid=rs.getString("travelid");
                %>
               
                   <option value="<%=travelid%>"><%=travelid%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
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
                     <td> <p align="center"><input type="button" value="save" id="btnsave"></p></td>
                   <td><p align="center"> <input type="reset" value="clear"></p> </td>
                 </tr>
                   </table>
        </form>
    </body>
</html>