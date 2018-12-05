<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppPlaces.jsp"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String placecode;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select placecode from tblPlaces");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Places Form</title>
        <script src="js/jquery-1.12.0.min.js">            
        </script>
    <script>
            $(function(){
            $("#optplacecode").change(function(){
             var placecode=$("#optplacecode").val();
            $.post("infPlacesdelete.jsp",{optplacecode:placecode},function(res,status){ 
            var x=res.split(",");
            $("#txtplacename").val(x[1]); 
            $("#txtcitycode").val(x[2]);
            $("#txtremarks").val(x[3]);
                      });
            });
            });
    </script>
    <script>
            $(function(){
            $("#btnDelete").click(function(){
             var placecode=$("#optplacecode").val();
            
            $.post("srcPlacesdelete.jsp",{optplacecode:placecode},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center"><b>Deleting Places</b></h1>
        <form name="frmPlacesdelete" id="frmPlacesdelete">
            <table align="center" border="1">
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
                 <td>Place Name:</td>
                    <td><input type="text" id="txtplacename"></td>
                </tr>
               <tr><td>City Code:</td>
                    <td><input type="text" id="txtcitycode"></td>     
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

