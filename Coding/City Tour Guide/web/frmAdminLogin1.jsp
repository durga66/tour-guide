<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
    <script>
            $(function(){
            $("#btnForget").click(function(){
             var Name=$("#txtName").val();
             var MobileNo=$("#txtMobileNo").val();
             
            $.post("forget.jsp",{txtName:Name,txtMobileNo:MobileNo},function(res,status){
            var x=res.split(",");
            alert(res);
            $("#txtId").val(x[0]);
            $("#pwdPassword").val(x[1]);
            });
            });
            });
    </script>
    </head>
      <body>
        <h1 align="center">LogIn Form</h1>
        <form method="post" action="srcAdminLogin.jsp" name="frmAdminLogin">
            <center>
            <table border="1">
                <tr>
                    <td>Admin Id:</td> 
                    <td><input type="text" name="txtId" id="txtId" required>*</td>
                </tr>
                <tr>
                    <td>Admin Password:</td>
                    <td><input type="password" name="pwdPassword" id="pwdPassword" required></td>
                </tr>
            <tr>
                <td><input type="submit" value="Login"></td>
                <td><li><a href="frmAdminLogin1.jsp">Forget</a></li></td>
            </tr>
            <tr>
                <td></td>
                <td>Name:<input type="text" id="txtName"></td>
            </tr>
            <tr>
                <td></td>
                <td>Mobile Number:<input type="text" id="txtMobileNo"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="button" value="Submit" id="btnForget"></td>
            </tr>
                </table>
            </center>
        </form>
    </body>
</html>
