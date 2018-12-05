<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">LogIn Form</h1>
        <form method="post" action="srcAdminLogin.jsp" name="frmAdminLogin">
            <center>
            <table  border="1">
                <tr>
                    <td>Admin Id:</td> 
                    <td><input type="text" name="txtId" required>*</td>
                </tr>
                <tr>
                    <td>Admin Password:</td>
                    <td><input type="password" name="pwdPassword" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"></td>
                    <td><li><a href="frmAdminLogin1.jsp">Forget</a></li></td>
                </tr>
             </table>
            </center>
        </form>
    </body>
</html>
