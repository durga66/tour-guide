
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="ppAdmin.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String Id;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement(); 
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select Id from tblAdmin");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
    <script>
            $(function(){
            $("#txtId").change(function(){
             var Id=$("#txtId").val();
             alert("h");
            $.post("infadministration.jsp",{txtId:Id},function(res,status){
             
            var x=res.split(",");
            $("#txtName").val(x[1]);
            $("#optGender").val(x[2]); 
            $("#txtMobileNo").val(x[3]);
            $("#pwdPassword").val(x[4]);
            });
            });
            });
    </script>
    </head>
    <body>
          <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	
			<h1 align="center">Select Administration</h1>
        <form name="frmadministrationDelete.jsp" id="frmadministrationDelete">
            <table align="center" border="1">
                <tr>
                    <td>id:</td>
                    <td><select name="Id" Id="txtId">
                <%
                while(rs.next())
                {
                    Id=rs.getString("Id");
                %>
                               <option value="<%=Id%>"><%=Id%></option>

                 <%        
                }
                  %>
                        </select></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" id="txtName"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" id="optGender"></td>
                </tr>
                 <tr>
                    <td>Mobile Number</td>
                    <td><input type="text" id="txtMobileNo"></td>
                </tr>
                
                 <tr>
                    <td>Password</td>
                    <td><input type="text" id="pwdPassword"></td></tr>
                 <tr>
                    <td><input type="reset" value="clear"></td>
                </tr>
                </table>
        </form>
    </body>
</html>

