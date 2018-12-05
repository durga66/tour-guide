<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%@include file="header1.jsp"%>
<%@include file="frmPreviouspageStates.jsp"%>

<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    String statecode;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select statecode from tblStates");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>states Form</title>
        <script src="js/jquery-1.12.0.min.js">            
        </script>
    <script>
            $(function(){
            $("#optstatecode").change(function(){
             var statecode=$("#optstatecode").val();
            alert("hiiii");
            $.post("infStatesdelete.jsp",{optstatecode:statecode},function(res,status){
             
            var x=res.split(",");
            $("#txtcountrycode").val(x[0]); 
            $("#txtstatename").val(x[2]);
            $("#txtremarks").val(x[3]);
                      });
            });
            });
    </script>
    <script>
            $(function(){
            $("#btnDelete").click(function(){
             var statecode=$("#optstatecode").val();
            
            $.post("srcStatesdelete.jsp",{optstatecode:statecode},function(res,status){
                alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center"><b>Deleting states</b></h1>
        <form name="frmStatesdelete" id="frmstatedelete">
            <table align="center" border="1">
                <tr>
                    <td>State Code:</td>
                    <td><select name="optstatecode" id="optstatecode">
                <%
                while(rs.next())
                {
                    statecode=rs.getString("statecode");
                %>
                
                   <option value="<%=statecode%>"><%=statecode%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
                </tr>
                 <td>Country Code:</td>
                    <td><input type="text" id="txtcountrycode"></td>
                </tr>
               <tr><td>State Name:</td>
                    <td><input type="text" id="txtstatename"></td>     
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