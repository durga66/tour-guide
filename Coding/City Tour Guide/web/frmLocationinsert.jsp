<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppLocation.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    Statement st1=null;
    ResultSet rs=null;
     ResultSet rs1=null;
    String placecode,citycode;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     st1=conn.createStatement(); 
     rs=st.executeQuery("select placecode from tblPlaces");
     rs1=st1.executeQuery("select citycode from tblCities");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Location Form</title>
          <script src="js/jquery-1.12.0.min.js">
        </script>
        <script>
            $(function(){
            $("#btnsave").click(function(){
            var lcode=$("#txtlcode").val();
            var lname=$("#txtlname").val();
            var placecode=$("#optplacecode").val();
            var famous=$("#txtfamous").val();
            var description=$("#txtdescription").val();
            var remarks=$("#txtremarks").val();
            var citycode=$("#optcitycode").val();
            alert("hiiiiii");
            $.post("srcLocationinsert.jsp",{txtlcode:lcode,txtlname:lname,optplacecode:placecode,txtfamous:famous,txtdescription:description,txtremarks:remarks,optcitycode:citycode},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
   
    </head>
   <body>
        <h1 align="center"><b>Location Information </b></h1>
        <form name="frmLocationinsert.jsp" name="frmLocationinsert">
            <table align="center" border="1">
                <tr>
                    <td>Location Code:</td>
                    <td><input type="text" name="txtlcode" id="txtlcode"></td>
                </tr>
                 <tr>
                      <tr>
                    <td>Location Name:</td>
                    <td><input type="text" name="txtlname" id="txtlname"></td>
                </tr>
                 <tr>
                    <td>Place Code:</td>
                    <td><select name="optplacecode" id="optplacecode">
                <%
                while(rs.next())
                {
                    placecode=rs.getString("placecode");
                %>
                
                   <option value="<%=placecode%>"><%=placecode%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
                </tr>
                <tr><td>Famous:</td> 
                    <td><input type="text" name="txtfamous" id="txtfamous"></td>
                </tr>
                <tr><td>Description:</td> 
                    <td><input type="text" name="txtdescription" id="txtdescription"></td>
                </tr>
                
            <tr><td>Remarks:</td> 
                    <td><input type="text" name="txtremarks" id="txtremarks"></td>
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
                        </select>
                    </td>
                </tr>
                
                 <tr>
                     <td> <p align="center"><input type="button" value="save" id="btnsave"></p></td>
                   <td><p align="center"> <input type="reset" value="clear"></p> </td>
                 </tr>
                   </table>
        </form>
    </body>
</html>



