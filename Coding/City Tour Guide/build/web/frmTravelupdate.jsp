<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppTravel.jsp"%>

<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String travelid;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select travelid from tblTravel");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Form</title>
        <script src="js/jquery-1.12.0.min.js">            
        </script>
   <script>
            $(function(){
            $("#opttravelid").change(function(){
             var travelid=$("#opttravelid").val();
            alert("hhhh");
           $.post("infTravel.jsp",{opttravelid:travelid},function(res,status){
              var x=res.split(",");
            $("#txtroutecode").val(x[1]); 
            $("#txtcitycode").val(x[2]);
            $("#txtstatecode").val(x[3]);
            $("#txtcityname").val(x[4]);
            $("#txtdistname").val(x[5]); 
            $("#txtavehicles").val(x[6]);
            $("#txtremarks").val(x[7]);
          
            });
            });
            });
    </script>
    <script>
           $(function(){
            $("#btnupdate").click(function(){
                alert("Hi");
             var travelid=$("#opttravelid").val();
             var routecode=$("#txtroutecode").val();
             var citycode=$("#txtcitycode").val();
             var statecode=$("#txtstatecode").val();
             var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val(); 
             var avehicles=$("#txtavehicles").val();  
             var remarks=$("#txtremarks").val();
           
             $.post("srcTravelupdate.jsp",{opttravelid:travelid,txtroutecode:routecode,txtcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtavehicles:avehicles,txtremarks:remarks},function(res,status){
            alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
          <h1 align="center">Updating Travels</h1>
        <form name="frmTravelupdate" id="frmTravelupdate">
            <table align="center" border="1">
                <tr>
                    <td>Travel Id</td>
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
                    <tr>
                    <td>Route Code</td>
                    <td><input type="text" name="txtroutecode" id="txtroutecode" ></td>
                </tr>
                <tr>
                    <td>City Code</td>
                    <td><input type="text" name="txtcitycode" id="txtcitycode"></td>
                </tr>
                <tr>
                <td>State Code</td>
                <td><input type="text" name="txtstatecode" id="txtstatecode" ></td>
            </tr>
            <tr>
                <td>City Name</td>
                <td><input type="text" name="txtcityname" id="txtcityname"></td>
            </tr>
                <tr>
                    <td>District Name</td>
                    <td><input type="text" name="txtdistname" id="txtdistname" ></td>
                </tr>
                <tr>
                    <td>Available Vehicles</td>
                    <td><textarea type="text" name="txtavehicles" id="txtavehicles"></textarea></td>
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td><input type="text" name="txtremarks" id="txtremarks"></td>
                </tr>
                
 <tr> 
                    <td><input type="button" value="update" id="btnupdate"></td>
                </tr> 
            </table>
        </form>
    </body>
</html>

