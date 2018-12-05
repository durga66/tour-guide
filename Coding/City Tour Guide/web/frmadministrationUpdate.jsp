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
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide" ,"durga");
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
           alert("hi");
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
    <script>
            $(function(){
            $("#btnupdate").click(function(){
             var Id=$("#txtId").val();
             var Name=$("#txtName").val();
             var Gender=$("#optGender").val();
             var MobileNo=$("#txtMobileNo").val();
             var Password=$("#pwdPassword").val();
             alert("taju");
             $.post("srcadministrationUpdate.jsp",{txtId:Id,txtName:Name,optGender:Gender,txtMobileNo:MobileNo,pwdPassword:Password},function(res,status){
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
			<h1 align="center">Updating administration</h1>
        <form name="frmadministrationUpdate.jsp" id="frmadministrationUpdate">
            <table align="center" border="1">
                <tr>
                    <td>Id:</td>
                    <td><select name="txtId" id="txtId">
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
                    <td><input type="Password" id="pwdPassword"></td>
                </tr>
               
                <tr>
                    <td><input type="button" value="update" id="btnupdate"></td>
                    <td><input type="reset" value="clear"></td>
                </tr> 
            </table>
        </form>
    </body>
</html>
