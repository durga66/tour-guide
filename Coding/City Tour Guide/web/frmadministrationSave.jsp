<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="ppAdmin.jsp"%>
<%!
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    int n;
    String Id;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide" ,"durga");
     stmt=conn.createStatement(); 
     rs=stmt.executeQuery("select Id from tblAdmin");
     Id="0000";
     while(rs.next())
     {
        Id=rs.getString(1); 
     }
    n=Integer.parseInt(Id);
     n=n+1;
     if(n<10)
        Id="000"+n;
     else if(n<100)
        Id="00"+n;
     else if(n<1000)
        Id="0"+n;
     else
        Id="n";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">            </script>
       
        <script>
            $(function(){
            $("#pwdRetypePassword").blur(function(){
             var Password=$("#pwdPassword").val();
             var Retypepassword=$("#pwdRetypePassword").val();
             
             if(Password!=Retypepassword)
                {
                    alert("Type Password Again"); 
                    $("#pwdPassword").val(null);
                    $("#pwdRetypePassword").val(null);
                    $("#pwdPassword").focus();
                }
            });
            });
    </script>
      <script>
            $(function(){
            $("#btnsave").click(function(){
             var Id=$("#txtId").val();
             var Name=$("#txtName").val();
             var Gender=$("#optGender").val();
             var MobileNo=$("#txtMobileNo").val();
             var Password=$("#pwdPassword").val();
             alert("taju");
             $.post("srcadministrationSave.jsp",{txtId:Id,txtName:Name,optGender:Gender,txtMobileNo:MobileNo,pwdPassword:Password},function(res,status){
                alert(res);
            });
            });
            });
    </script>
      
    </head>
    <body>
          <center>
                             <image align="center" src="images/tourism_name.jpg" width="1200ft" height="600ft">
                         </center>	
			<center>
        <h1>Administration Form</h1>
        <form name="frmadministrationSave" id="frmadministrationSave">
            <table border="1">
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="txtId" id="txtId" value="<%=Id%>"readonly ></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="txtName" Id="txtName" required>*</td>
                </tr>
                <tr><td>Gender:</td>
                    <td><select name="txtGender" Id="txtGender" required>
                    <option value="female">female</option>
                    <option value="male">male</option>
                    
                        </select></td>
                </tr>
                <tr>
                    <td>Mobile Number</td> 
                    <td><input type="text" name="txtMobileNo" id="txtMobileNo"></td>
                </tr>
                
            <tr>
                <td>Password</td>
                <td><input type="Password" name="pwdPassword" id="pwdPassword" required></td>
            </tr>
             <tr>
                <td>Retype Password</td>
                <td><input type="Password" name="PwdRetypePassword" id="pwdRetypePassword"></td>
                </tr>
            <tr>
                <td><input type="button" value="save" id="btnsave"></td>
                <td><input type="reset" value="clear"></td>
            </tr>
                </table>
        </form>
    </center>
    </body>
</html>


    