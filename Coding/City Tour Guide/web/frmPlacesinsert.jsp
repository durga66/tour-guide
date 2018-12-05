<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppPlaces.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
 String placecode,placename,citycode,remarks;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select citycode from tblcities");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place Form</title>
         <script src="js/jquery-1.12.0.min.js">
        </script>
         <script>
            $(function(){
            $("#btnsave").click(function(){
            var placecode=$("#txtplacecode").val();
            var placename=$("#txtplacename").val();
            var citycode=$("#optcitycode").val();
            var remarks=$("#txtremarks").val();
            alert("hhhhh");
            $.post("srcPlacesinsert.jsp",{txtplacecode:placecode,txtplacename:placename,optcitycode:citycode,txtremarks:remarks,},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
   
    </head>
    <body>
        <h1 align="center"><b>Places Information </b></h1>
        <form name="frmPlacesinsert.jsp" name="frmPlacesinsert" method>
            <table align="center" border="1">
                <tr>
                    <td>Place Code:</td>
                    <td><input type="text" name="txtplacecode" id="txtplacecode"></td>
                </tr>
                 <tr>
                      <tr>
                    <td>Place Name:</td>
                    <td><input type="text" name="txtplacename" id="txtplacename"></td>
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
                        </select>
                    </td>
                </tr>
                
            <tr><td>Remarks:</td> 
                    <td><input type="text" name="txtremarks" id="txtremarks"></td>
                </tr>
                 <tr>
                      <td><input type="button" value="save" id="btnsave"></td>
                   <td> <input type="reset" value="clear"></td>
                 </tr>
                   </table>
        </form>
    </body>
</html>



