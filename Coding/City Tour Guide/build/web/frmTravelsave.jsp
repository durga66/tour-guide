<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<%@include file="ppTravel.jsp"%>

<%!
    Connection conn=null;
    Statement st=null;
    Statement st1=null;
    Statement st2=null;
    Statement st3=null;
    ResultSet rs=null;
    ResultSet rs1=null;
    ResultSet rs2=null;
    ResultSet rs3=null;
    int n;
    String  travelid,routecode,citycode,statecode,cityname,distname,avehicles,remarks;
%>
<%   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     st1=conn.createStatement(); 
     st2=conn.createStatement(); 
     st3=conn.createStatement(); 
     rs=st.executeQuery("select travelid from tblTravel");
     rs1=st1.executeQuery("select routecode from tblRoute");
     rs2=st2.executeQuery("select citycode from tblCities");
     rs3=st3.executeQuery("select statecode from tblStates");
    travelid="0";
     while(rs.next())
     {
        travelid=rs.getString(1); 
     }
     n=Integer.parseInt(travelid);
     n=n+1;
     if(n<10)
        travelid="000"+n;
     else if(n<100)
        travelid="00"+n;
     else if(n<1000)
        travelid="0"+n;
     else
        travelid="n";
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery-1.12.0.min.js">          
        </script>
   <script>
            $(function(){
                
            $("#optroutecode").change(function(){
             var routecode=$("#optroutecode").val();
     alert("hi");
            $.post("infRoutedelete.jsp",{optroutecode:routecode},function(res,status){
            alert(res);
            var x=res.split(",");
            $("#txtcitycode").val(x[1]);
             $("#txtstatecode").val(x[2]);
              $("#txtcityname").val(x[3]);
               $("#txtdistname").val(x[4]);
            });
            });
            });
    </script>
     
        <script>
            $(function(){
            $("#btnSave").click(function(){
          
             var travelid=$("#txttravelid").val();
             var routecode=$("#optroutecode").val();
             var citycode=$("#txtcitycode").val();
             var statecode=$("#txtstatecode").val();
             var cityname=$("#txtcityname").val();
             var distname=$("#txtdistname").val();
             var avehicles=$("#txtavehicles").val();
             var remarks=$("#txtremarks").val();
            
          alert("hhhhhhhhhhh");
            $.post("srcTravelsave.jsp",{txttravelid:travelid,optroutecode:routecode,txtcitycode:citycode,txtstatecode:statecode,txtcityname:cityname,txtdistname:distname,txtavehicles:avehicles,txtremarks:remarks},function(res,status){
             alert(res);
            });
            });
            });
    </script>
    </head>
    <body>
        <h1 align="center">Travel Form</h1>
        <form name="frmTravelsave" id="frmTravelsave">
            <table align="center" border="1">
                <tr>
                    <td>Travel Id</td>
                    <td><input type="text" name="txttravelid" id="txttravelid" value="<%=travelid%>" readonly></td>
                </tr>
                  <tr>
                    <td>Route Code</td>
                    <td><select name="optroutecode" id="optroutecode">
                             <option value="<%=routecode%>">select</option>
                <%
                while(rs1.next())
                {
                    routecode=rs1.getString("routecode");
                %>
                               <option value="<%=routecode%>"><%=routecode%></option>

                 <%        
                }
                  %>
                        </select>
                    </td>
                </tr>
                <tr>
                <td>City Code</td>
                <td><input type="text" id="txtcitycode" autofocus></td>
            </tr>
                <tr>
                    <td>State Code</td>
                    <td><input type="text" id="txtstatecode"></td>
                </tr>
                <tr>
                    <td>City Name</td>
                    <td><input type="text" id="txtcityname"></td>
                </tr>
                <tr>
                    <td>District Name</td>
                    <td><input type="text" id="txtdistname"></td>    
                </tr>
                <tr>
                    <td>Available Vehicles</td>
                    <td><input type="text" id="txtavehicles"></td>    
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td><input type="text" id="txtremarks"></td>    
                </tr>
            <tr>
                <td><input type="button" value="Save" id="btnSave"></td>
                <td><input type="reset" value="clear"></td>
            </tr>
                </table>
        </form>
    </body>
</html>
