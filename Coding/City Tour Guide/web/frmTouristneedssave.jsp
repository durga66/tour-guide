<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header1.jsp"%>
<%@page import="java.sql.*"%>
<%@include file="ppTouristneeds.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
   Statement stmt1=null;
   Statement stmt2=null;
    ResultSet rs=null;
   ResultSet rs1=null;
   ResultSet rs2=null;
   int n;
  String sno,citycode,statecode,cityname,distname,placename,resturants,raddress,hotels,haddress,hospitals,hoaddress,shoppingmalls,saddress,banks,baddress,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     stmt1=conn.createStatement();
     stmt2=conn.createStatement();
     rs=stmt.executeQuery("select sno from tblTouristneeds");
    rs1=stmt1.executeQuery("select citycode from tblCities");
    rs2=stmt2.executeQuery("select statecode from tblStates");
      sno="0000";
     while(rs.next())
     {   
     sno=rs.getString(1);
    }
        n=Integer.parseInt(sno);
     n=n+1;
     if(n<10)
       sno="000"+n;
    else if(n<100)
      sno="00"+n;
   else if(n<1000)
       sno="0"+n;
    else
       sno="n";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
        <script>
            $(function(){
            $("#optcitycode").change(function(){
             var citycode=$("#optcitycode").val();
        
            $.post("infCitiesdelete.jsp",{optcitycode:citycode},function(res,status){
            
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
            var sno=$("#txtsno").val();
            var citycode=$("#optcitycode").val();
           var statecode=$("#txtstatecode").val();
            var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val();
             var placename=$("#txtplacename").val();
             var resturants=$("#txtresturants").val();
             var raddress=$("#txtraddress").val();
             var hotels=$("#txthotels").val();
             var haddress=$("#txthaddress").val();
             var hospitals=$("#txthospitals").val();
             var hoaddress=$("#txthoaddress").val();
             var shoppingmalls=$("#txtshoppingmalls").val();
             var saddress=$("#txtsaddress").val();
             var banks=$("#txtbanks").val();
             var baddress=$("#txtbaddress").val();
             var remarks=$("#txtremarks").val();
             alert("1");
             $.post("srcTouristneedssave.jsp",{txtsno:sno,optcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtplacename:placename,txtresturants:resturants,txtraddress:raddress,txthotels:hotels,txthaddress:haddress,txthospitals:hospitals,txthoaddress:hoaddress,txtshoppingmalls:shoppingmalls,txtsaddress:saddress,txtbanks:banks,txtbaddress:baddress,txtremarks:remarks},function(res,status){
             alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
    <center>
        <h1 align="center">Touristneeds Details</h1>
        <form action="frmTouristneedssave.jsp" name="Touristneeds">
             <table align="center" border="1">
                 <tr>
                    <td>Serial Number:</td>
                    <td><input type="text" name="txtsno" id="txtsno" value="<%=sno%>" readonly></td>
                </tr>
                 <tr>
                <td>City Code:</td>
                            <td><select name="optcitycode" id="optcitycode">
                         <%
                while(rs1.next())
                {
                    citycode=rs1.getString("citycode");
                %>
                               <option value="<%=citycode%>"><%=citycode%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                <tr>
                <td>State Code:</td>
                 <td><input type="text" id="txtstatecode"></td>        
                </tr>
                <tr>
                    <td>City Name:</td>
                    <td><input type="text" id="txtcityname"></td>
                </tr>
                 <tr>
                    <td>District Name:</td>
                    <td><input type="text" id="txtdistname"></td>
                </tr>
                <tr>
                    <td>Place Name:</td>
                    <td><input type="text" id="txtplacename"></td>
                </tr>
                <td>Resturants:</td>
                    <td><input type="text" id="txtresturants"></td>
                </tr>
                
                <tr>
                    <td>Resturants Address:</td>
                    <td><input type="text" id="txtraddress"></td>
                </tr>
                <tr>
                    <td>Hotels:</td>
                    <td><input type="text" id="txthotels"></td>
                </tr>
                <tr>
                    <td>Hotel Address:</td>
                    <td><input type="text" id="txthaddress"></td>
                </tr>
                  <tr>
                    <td>Hospitals:</td>
                    <td><input type="text" id="txthospitals"></td>
                </tr> 
                <tr>
                    <td>Hospital Address:</td>
                    <td><input type="text" id="txthoaddress"></td>
                </tr>
                <tr>
                    <td>Shoppingmalls:</td>
                    <td><input type="text" id="txtshoppingmalls"></td>
                </tr>
                <tr>
                    <td>Shoppingmall Address:</td>
                    <td><input type="text" id="txtsaddress"></td>
                </tr>
                <tr>
                    <td>Banks:</td>
                    <td><input type="text" id="txtbanks"></td>
                </tr>
                <tr>
                    <td>Bank Address:</td>
                    <td><input type="text" id="txtbaddress"></td>
                </tr>
                <tr>
                    <td>Remarks:</td>
                    <td><input type="text" id="txtremarks"></td>
                </tr>
                <tr>
                    <td><input type="button"value="save" id="btnsave"></td>
                    <td><p align="center"> <input type="reset" value="clear"></p> </td>
                </tr>
            </table>
          </form>
    </body>
</html>
