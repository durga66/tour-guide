<!DOCTYPE html>
<html lang="en">
<head>
<title>City Tour Guide</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.jqtransform.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'random',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    });
    $("#tabs").tabs();
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
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
              <li><a href="index1.html">Rating</a></li>
             <li><a href="gallery.html">Gallery</a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
     
  </div>
     
</header>
     
<div class="main">
  <div class="container_12">
    <div class="grid_12">
      <div class="slider-relative">
        <div class="slider-block">
          <div class="slider"> <a href="#" class="prev"></a><a href="#" class="next"></a>
            <ul class="items">
              <li><img src="images/slide.jpg" alt="">
                <div class="banner">
                  <div>THERE ARE PLENTY OF PLACES</div>
                  <br>
                  <span> that are worth seeing</span> </div>
              </li>
              <li><img src="images/slide1.jpg" alt=""></li>
              <li><img src="images/slide2.jpg" alt=""></li>
              <li><img src="images/slide3.jpg" alt=""></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="container_12">
      <div class="grid_12">
         
        <h3>Top Destinations</h3>
         
      </div>
      <div class="boxes">
        <div class="grid_4">
          <figure>
            <div><img src="images/page1_img1.jpg" alt=""></div>
            <figcaption>
              <h3>Venice</h3>
              Lorem ipsum dolor site geril amet, consectetur cing eliti. Suspendisse nulla leo mew dignissim eu velite a rew qw vehicula lacinia arcufasec ro. Aenean lacinia ucibusy fase tortor ut feugiat. Rabi tur oliti aliquam bibendum olor quis malesuadivamu. <a href="#" class="btn">Details</a> </figcaption>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="images/page1_img2.jpg" alt=""></div>
            <figcaption>
              <h3>New York</h3>
              Psum dolor sit ametylo gerto consectetur ertori hykill holit adipiscing lity. Donecto rtopil osueremo	kollit asec emmodem geteq tiloli. Aliquam dapibus neclol nami wertoli elittro eget vulpoli no
              utaterbil congue turpis in su. <a href="#" class="btn">Details</a> </figcaption>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="images/page1_img3.jpg" alt=""></div>
            <figcaption>
              <h3>Paris</h3>
              Lorem ipsum dolor site geril amet, consectetur cing eliti. Suspendisse nulla leo mew dignissim eu velite a rew qw vehicula lacinia arcufasec ro. Aenean lacinia ucibusy fase tortor ut feugiat. Rabi tur oliti aliquam bibendum olor quis malesuadivamu. <a href="#" class="btn">Details</a> </figcaption>
          </figure>
        </div>
        <div class="clear"></div>
      </div>
      <div class="grid_8">
        <div id="tabs">
          <ul>
            <li><a href="#tabs-1">About</a></li>
            
          </ul>
          <div class="clear"></div>
         
          <div class="tab_cont" id="tabs-1"> <img src="images/page1_img4.jpg" alt="">
             
            <div class="extra_wrapper">
               
              <div class="text1">City Tour Guide</div>
              <p class="style1">City Tour Guide is provides the all the information about the cities. It is very useful for the tourism system, in current tourism system, whenever a tourist visits famous spots, to know more about the place the hires a guide. The hired guide then narrates history of the place. The proposed system doesn?t require a physical guide. The mobile application installed on the user mobile then tourist can act as a guide. This application contains the information about famous places like temples, parks, beaches and etc.The android based city guide system has more practical significance. 
              <div class="clear "></div>
            </div>
          
               <div align="center"><a href="frmAdminLogin.jsp"><font color="white">.</font></a></div>
            </div>
          </div>
        </div>
          
      </div>
        
      <div class="grid_4">
        <div class="newsletter_title">Famous States</div>
        <div class="n_container">
        
          <ul class="list">
            <li><a href="#">Andhra Pradesh</a></li>
            <li><a href="#">Arunachal Pradesh</a></li>
            <li><a href="#">Assam</a></li>
            <li><a href="#">Delhi</a></li>
            <li><a href="#">Goa</a></li>
            <li><a href="#">Himachal Pradesh</a></li>
            <li><a href="#">Manipur</a></li>
             <li><a href="#">Uther Pradesh</a></li>
             <li><a href="#">Kerala</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div class="bottom_block">
    <div class="container_12">
      <div class="grid_2 prefix_2">
        <ul>
          <li><a href="#">FAQS Page</a></li>
          <li><a href="#">People Say</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <ul>
          <li><a href="#">Useful links</a></li>
          <li><a href="#">Partners</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <ul>
          <li><a href="#">Insurance</a></li>
          <li><a href="#">Family Travel</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <h4>Contact Us:</h4>
        TEL: 96-42-96-22-55<br>
        <a href="#">durgarao5107@gmail.com</a> </div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<footer>
    
  <div class="container_12">
    <div class="grid_12">
      <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
      <div class="copy"> Journey &copy; 2045 | <a href="#">Privacy Policy</a> | Design by:K D R Comapny</a> </div>
    </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>