<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppTouristneeds.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String sno;

%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select sno from tblTouristneeds");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js"></script>
    <script>
            $(function(){
            $("#optsno").change(function(){
             var sno=$("#optsno").val();
            alert("hi");
            $.post("infTouristneedsdelete.jsp",{optsno:sno},function(res,status){
                alert(res);
            var x=res.split(",");
            $("#txtcitycode").val(x[1]);
           $("#txtstatecode").val(x[2]);
            $("#txtcityname").val(x[3]);
            $("#txtdistname").val(x[4]);
            $("#txtplacename").val(x[5]);
            $("#txtresturants").val(x[6]);
            $("#txtraddress").val(x[7]);
            $("#txthotels").val(x[8]);
            $("#txthaddress").val(x[9]);
            $("#txthospitals").val(x[10]);
            $("#txthoaddress").val(x[11]);
            $("#txtshoppingmalls").val(x[12]);
            $("#txtsaddress").val(x[13]);
            $("#txtbanks").val(x[14]);
            $("#txtbaddress").val(x[15]);
            $("#txtremarks").val(x[16]);
            
            });
            });
            });
    </script>
    <script>
            $(function(){
            $("#btnupdate").click(function(){
            var sno=$("#optsno").val();
            var citycode=$("#txtcitycode").val();
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
             alert("kd");
             $.post("srcTouristneedsupdate.jsp",{optsno:sno,txtcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtplacename:placename,txtresturants:resturants,txtraddress:raddress,txthotels:hotels,txthaddress:haddress,txthospitals:hospitals,txthoaddress:hoaddress,txtshoppingmalls:shoppingmalls,txtsaddress:saddress,txtbanks:banks,txtbaddress:baddress,txtremarks:remarks},function(res,status){
             alert(res);
            });
            });
            });
    </script>
     </head>
    <body>
        <h1 align="center">Updating Touristneeds</h1>
        <form name="frmTouristneedsupdate" id="frmTouristneedsupdate">
            <table align="center" border="1">
                <tr>
                    <td>Serail Number:</td>
                    <td><select name="optsno" id="optsno">
                <%
                while(rs.next())
                {
                    sno=rs.getString("sno");
                %>
                            
                               <option value="<%=sno%>"><%=sno%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                 <tr> <td>City Code:</td>
        <td><input type="txt" name="txtcitycode" id="txtcitycode"></td></tr>
                 
            <tr>
                <td>State Code:</td>
               <td><input type="txt" name="txtstatecode" id="txtstatecode"></td></tr>
           <tr> <td>City Name:</td>
        <td><input type="txt" name="txtcityname" id="txtcityname"></td></tr> 
              <tr> <td>District Name:</td>
        <td><input type="txt" name="txtdistname" id="txtdistname"></td></tr>    
        <tr> <td>Place Name:</td>
         <td><input type="text" name="txtplacename" id="txtplacename"></td>
                </tr>
                <td>Resturants:</td>
                    <td><input type="text" name="txtresturants" id="txtresturants"></td>
                </tr>
                
                <tr>
                    <td>Resturants Address:</td>
                    <td><input type="text" name="txtraddress" id="txtraddress"></td>
                </tr>
                <tr>
                    <td>Hotels:</td>
                    <td><input type="text" name="txthotels" id="txthotels"></td>
                </tr>
                <tr>
                    <td>Hotel Address:</td>
                    <td><input type="text" name="txthaddress" id="txthaddress"></td>
                </tr>
                  <tr>
                    <td>Hospitals:</td>
                    <td><input type="text" name="txthospitals" id="txthospitals"></td>
                </tr> 
                <tr>
                    <td>Hospital Address:</td>
                    <td><input type="text" name="txthoaddress" id="txthoaddress"></td>
                </tr>
                <tr>
                    <td>Shoppingmalls:</td>
                    <td><input type="text" name="txtshoppingmalls" id="txtshoppingmalls"></td>
                </tr>
                <tr>
                    <td>Shoppingmall Address:</td>
                    <td><input type="text" name="txtsaddress" id="txtsaddress"></td>
                </tr>
                <tr>
                    <td>Banks:</td>
                    <td><input type="text"  name="txtbanks" id="txtbanks"></td>
                </tr>
                <tr>
                    <td>Bank Address:</td>
                    <td><input type="text" name="baddress" id="txtbaddress"></td>
                </tr>
                <tr>
                    <td>Remarks:</td>
                    <td><input type="text" name="txtremarks" id="txtremarks"></td>
                </tr>
               
                <tr>
                    <td><input type="button" value="update" id="btnupdate"></p></td>
                    <td><input type="reset" value="clear"></p></td>
                </tr> 
            </table>
        </form>
    </body>
</html>
