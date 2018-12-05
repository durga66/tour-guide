<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
   String sno,rating;
   int n;
%>
<%  
     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement();
     rs=st.executeQuery("select sno from tblRating");
 sno="00000";
     while(rs.next())
     {   
     sno=rs.getString(1);
    }
        n=Integer.parseInt(sno);
     n=n+1;
     if(n<10)
       sno="0000"+n;
    else if(n<100)
      sno="000"+n;
   else if(n<1000)
       sno="00"+n;
   else if(n<10000)
       sno="0"+n;
     else
     sno="n";

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>States Form</title>
        <script src="js/jquery-1.12.0.min.js">
        </script>
     <script>
            $(function(){
            $("#btnsave").click(function(){
            var sno=$("#txtsno").val();
            var rating=$("#txtrating").val();
            alert("hi");
            $.post("srcrating.jsp",{txtsno:sno,txtrating:rating,},function(res,status){
              alert(res);  
            });
            });
            });
    </script>
    <meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/touchTouch.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script>
$(window).load(function () {
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
$(function () {
    $('.gallery a.gal').touchTouch();
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->


    </head>
    <body>
        <header>
  
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
      <div class="clear"></div>
    </div>
    <div class="menu_block">
      <nav>
        <ul class="sf-menu">
          <li class="current"><a href="index.html">Home</a></li>
       <li><a href="frmStatesreport1.jsp">Place</a></li>
          <li><a href="frmTouristneedsreport1.jsp">Needs</a></li>
          <li><a href="frmRoutereport1.jsp">Route</a></li>
           <li><a href="frmTravelreport1.jsp">Travels</a></li>
              <li><a href="rating.jsp">Rating</a></li>
             <li><a href="gallery.html">Gallery</a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</header>
        
              <form name="rating" id="rating">
            <table align="right">
                <tr>
                    <td><font color="red">Serial Number:</font></td>
                    <td><input type="text" name="txtsno" id="txtsno" value="<%=sno%>" readonly></td>
                </tr></table><br>
       
<div class="main">
  <div class="content">
    <div class="container_12">
      <div class="grid_12">
          
 <h3>User Rating</h3>
      </div>
      <div class="clear"></div>
      <div class="rating">

<link rel="stylesheet" href="style.css" />
<form id="ratingsForm">
	<div class="stars">
		<input type="radio" name="star" class="star-1" id="star-1" />
		<label class="star-1" for="star-1">1</label>
		<input type="radio" name="star" class="star-2" id="star-2" />
		<label class="star-2" for="star-2">2</label>
		<input type="radio" name="star" class="star-3" id="star-3" />
		<label class="star-3" for="star-3">3</label>
		<input type="radio" name="star" class="star-4" id="star-4" />
		<label class="star-4" for="star-4">4</label>
		<input type="radio" name="star" class="star-5" id="star-5" />
		<label class="star-5" for="star-5">5</label>
		<span></span>
	</div>
  
</form>
<br>
        <center>
        <form name="rating" id="rating">
                            <table align="center">

                <tr><td>Rating </td>
                    <td><select name="txtrating" id="txtrating">
                             <option value="<%=rating%>">Select</option>
                     <option value="1">1</option>
                     <option value="2">2</option>
                      <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
                        </select></td></tr>
                            </table><br>

                <tr>
                     <td><input type="button" value="submit" id="btnsave">
                   <input type="reset" value="clear"></td>
                 </tr>
        </form>
        </center>
    </body>
</html>
