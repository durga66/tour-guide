<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppRoute.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String routecode;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select routecode from tblRoute");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Places Form</title>
        <script src="js/jquery-1.12.0.min.js">            
        </script>
    <script>
            $(function(){
            $("#optroutecode").change(function(){
             var routecode=$("#optroutecode").val();
             alert("hh");
            $.post("infRoutedelete.jsp",{optroutecode:routecode},function(res,status){ 
            var x=res.split(",");
            $("#optcitycode").val(x[1]);
           $("#txtstatecode").val(x[2]); 
            $("#txtcityname").val(x[3]);
            $("#txtdistname").val(x[4]);
            $("#txtsource").val(x[5]);
            $("#txtdestination").val(x[6]);
         
            $("#txtremarks").val(x[7]);
                      });
            });
            });
    </script>
    <script>
            $(function(){
            $("#btnDelete").click(function(){
             var routecode=$("#optroutecode").val();
            
            $.post("srcRoutedelete.jsp",{optroutecode:routecode},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center"><b>Deleting Routes</b></h1>
        <form name="frmRoutedelete" id="frmRoutedelete">
            <table align="center" border="1">
                <tr>
                    <td>Route Code:</td>
                    <td><select name="optroutecode" id="optroutecode">
                <%
                while(rs.next())
                {
                    routecode=rs.getString("routecode");
                %>
                <option value=" "></option>
                   <option value="<%=routecode%>"><%=routecode%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
                </tr>
                 <td>City Code:</td>
                    <td><input type="text" id="optcitycode"></td>
                </tr>
               <tr><td>State code:</td>
                    <td><input type="text" id="txtstatecode"></td>     
                </tr>
                <tr><td>City Name:</td>
                    <td><input type="text" id="txtcityname"></td>     
                </tr>
                <tr><td>District Name:</td>
                    <td><input type="text" id="txtdistname"></td>     
                </tr>
                <tr><td>Source:</td>
                    <td><input type="text" id="txtsource"></td>     
                </tr>
                <tr><td>Destination:</td>
                    <td><input type="text" id="txtdestination"></td>     
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

